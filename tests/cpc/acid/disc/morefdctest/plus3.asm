;;=====================
;; Spectrum +3 specific
;;=====================

wait_char:
xor a
ld (&5c08),a
wait_char_loop:
ld a,(&5c08)
or a
jr z,wait_char_loop
ret


;;-----------------------------------------------
;; display 0 terminated string
;; HL = start address of string

display_string:
push hl
ld a,2
call &1601				;; text output to upper screen area
pop hl

display_loop:
ld a,(hl)
or a
ret z
rst 16					;; display this char
inc hl
jr display_loop

display_newline:
ld a,13

display_char:
rst 16
ret

cls:
ret

;;-----------------------------------------------
;; start drive motor and wait for it to be rotating
;; at full speed

start_drive_motor:
;; start drive motor
ld bc,&1ffd				;; BC = I/O address of motor control
ld a,(&5b67)
or 8					;; bit 3 is motor state
ld (&5b67),a
out (c),a				;; set motor state

;; wait for drive motor to be rotating at full speed 
ld b,3
pause1:
ld hl,0
pause2:
dec hl
ld a,h
or l
jr nz,pause2
djnz pause1
ret

;;-----------------------------------------------


fdc_read_main_status_register:
ld bc,&2ffd
in a,(c)
ret

fdc_read_data_register:
ld bc,&3ffd
in a,(c)
ret


;;-----------------------------------------------
;; stop drive motor
disc_motor_on:
;; stop drive motor
ld bc,&1ffd				;; BC = I/O address of motor control
ld a,(&5b67)
or %1000					;; bit 3 is motor state
ld (&5b67),a
out (c),a				;; set motor state
ret

start_drive_motor:
call disc_motor_on
;; wait for drive motor to be rotating at full speed 
ld b,3
pause1:
ld hl,0
pause2:
dec hl
ld a,h
or l
jr nz,pause2
djnz pause1
ret

;;-----------------------------------------------
;; stop drive motor
stop_drive_motor:
;; stop drive motor
ld bc,&1ffd				;; BC = I/O address of motor control
ld a,(&5b67)
and 247					;; bit 3 is motor state
ld (&5b67),a
out (c),a				;; set motor state
ret

;;-----------------------------------------------
;; send a fdc command byte to the fdc

send_command_byte:
ld bc,&2ffd				;; BC = I/O address of FDC main status register

push af
sd1:
in a,(c)				;; read main status register
add a,a					;; transfer bit 7 ("Request for master") into carry
						;; when "1", fdc is ready for data transfer via it's data register
jr nc,sd1				

add a,a					;; transfer bit 6 ("Data Input/Output") into carry
						;; when "1", data transfer is from CPU to FDC
						;; when "0", data transfer is from FDC to CPU
jr nc,sd2

pop af
ret

;; to get to here:
;; - fdc is ready for data transfer
;; - data transfer is from CPU to FDC
sd2:
pop af
ld b,&3f				;; BC = I/O address of FDC data register
out (c),a				;; write command byte into fdc data register
ld b,&2f				;; BC = I/O address of FDC main status register

ld a,5
sd3:
dec a
jr nz,sd3

ret

;;----------------------------------------------------------
;; write data to fdc when in execution phase
;;
;; for commands that transfer data from CPU to FDC during execution phase
;; of command.

fdc_data_write:
jr e_write2

e_write1: 
ld b,&3f				;; BC = I/O address for FDC data register
ld a,(de)				;; read byte from memory
out (c),a				;; output to FDC data register
ld b,&2f				;; BC = I/O address for FDC main status register
inc de					;; increment memory pointer

e_write2:
in a,(c)				;; read fdc main status register
jp p,e_write2			;; wait for fdc to signal it is ready to
						;; accept data 
						;; bit 7 will be 1 when FDC is ready to accept data


and &20					;; execution phase active? (bit 5 of main status register)
jr nz,e_write1
ret

;;-----------------------------------------------------------
;; read data from fdc when in execution phase
;;
;; for commands that transfer data from FDC to CPU during execution phase
;; of command.

fdc_data_read:
jr e_read2

e_read1:
ld b,&3f				;; BC = I/O address for FDC data register
in a,(c)				;; read from FDC data register
ld (de),a				;; write to memory
ld b,&2f				;; BC = I/O address for FDC main status register
inc de					;; increment memory pointer

e_read2:
in a,(c)				;; read fdc main status register
jp p,e_read2			;; wait for fdc to signal it is ready to
						;; accept data
						;; bit 7 will be 1 when FDC is ready to accept data

and &20					;; execution phase active? (bit 5 of main status register)
jr nz,e_read1
ret


;;-----------------------------------------------------------
;; read data from fdc when in execution phase (but DO NOT store)
;;
;; for commands that transfer data from FDC to CPU during execution phase
;; of command.

fdc_read_data2:
jr e_read2b

e_read1b:
ld b,&3f				;; BC = I/O address for FDC data register
in a,(c)				;; read from FDC data register
ld b,&2f				;; BC = I/O address for FDC main status register
inc de					;; increment memory pointer

e_read2b:
in a,(c)				;; read fdc main status register
jp p,e_read2b			;; wait for fdc to signal it is ready to
						;; accept data
						;; bit 7 will be 1 when FDC is ready to accept data

and &20					;; execution phase active? (bit 5 of main status register)
jr nz,e_read1b
ret

;; read 8 bytes at a time, and increment de once for each 8 byte group
fdc_read_data3:
fdr1:
in a,(c)
jp p,fdr1
and &20
jp z,fdr9
fdr1b:
ld b,&3f
in a,(c)
ld b,&2f
fdr2:
in a,(c)
jp p,fdr2
and &20
jp z,fdr9
ld b,&3f
in a,(c)
ld b,&2f
fdr3:
in a,(c)
jp p,fdr3
and &20
jp z,fdr9
ld b,&3f
in a,(c)
ld b,&2f
fdr4:
in a,(c)
jp p,fdr4
and &20
jp z,fdr9
ld b,&3f
in a,(c)
ld b,&2f
fdr5:
in a,(c)
jp p,fdr5
and &20
jp z,fdr9
ld b,&3f
in a,(c)
ld b,&2f
fdr6:
in a,(c)
jp p,fdr6
and &20
jp z,fdr9
ld b,&3f
in a,(c)
ld b,&2f
fdr7:
in a,(c)
jp p,fdr7
and &20
jp z,fdr9
ld b,&3f
in a,(c)
ld b,&2f
fdr8:
in a,(c)
jp p,fdr8
and &20
jp z,fdr9
ld b,&3f
in a,(c)
ld b,&2f
inc de
fdr10:
in a,(c)
jp p,fdr10
and &20
jp nz,fdr1b

fdr9:
ret


;;-----------------------------------------------------------------------
;; read fdc command result data 
;; B = number of bytes

fdc_result_phase:
ld b,&2f				;; BC = I/O address for FDC main status register
ld hl,result_data

r1: 
in a,(c)				;; read FDC main status register
and &c0
cp &c0					;; is fdc ready to transfer data, and is data transfer from
						;; fdc to cpu?
jr nz,r1

ld b,&3f				;; BC = I/O address for FDC data register
in a,(c)				;; read from FDC data register
ld b,&2f				;; BC = I/O address for FDC main status register
ld (hl),a				;; store data byte
inc hl					;; increment pointer

ld a,5
r2: dec a
jr nz,r2

in a,(c)				;; read FDC main status register
and &10					;; check FDC busy flag
jr nz,r1

ld de,result_data
or a
sbc hl,de
ld b,l
ret

;;-----------------------------------------------------------------------------


