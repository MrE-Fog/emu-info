;; (c) Copyright Kevin Thacker 2015-2016
;; This code is part of the Arnold emulator distribution.
;; This code is free to distribute without modification
;; this copyright header must be retained.
;; R8=1,0 at frame start
org &4000

scr_set_mode equ &bc0e
txt_output	equ &bb5a
scr_set_border equ &bc38

start:
ld b,&14
ld c,b
call scr_set_border

;; set the screen mode
ld a,2
call scr_set_mode

ld bc,24*80
ld d,' '
l1:
inc d
ld a,d
cp &7f
jr nz,no_char_reset
ld d,' '
no_char_reset:
ld a,d
call txt_output
dec bc
ld a,b
or c
jr nz,l1
ld h,1
ld l,1
call &bb75
ld a,'A'
call &bb5a
ld a,'A'
call &bb5a


call write_text_init

di
ld hl,&c9fb
ld (&0038),hl
ei
ld bc,&bc06
out (c),c
ld bc,&bdff
out (c),c
loop:
ld b,&f5
l2:
in a,(c)
rra
jr nc,l2
halt
halt
di
defs 64*3
jp_addr:
jp addrs-&300
addre:
defs 64*16
addrs:

;; type 0:  nothing

;; type 1: 6e-69 screen goes a bit crazy and repeats graphics etc
;; like r9 is wrapping over and over.
;; no other visual change
;;
;; type 2: 85-81 ma goes crazy, no other change
;;
;; type 3: 70-6b screen shakes like r8=1 below and for rest of frame but not above.
ld bc,&7f00
out (c),c
ld de,&544b
out (c),e
out (c),d
ld de,0+(0*256)+1
ld bc,&bc08
out (c),c
inc b
out (c),e
nop
out (c),d
ei
call readkeys
call do_dir

jp loop

do_dir:
ld ix,matrix_buffer
ld a,(ix+9)
xor (ix+9+16)
ret z

ld a,(ix+9)
bit 0,a
call nz,do_down
bit 1,a
call nz,do_up
ret

do_down:
ld hl,(jp_addr+1)
or a
ld bc,addre
sbc hl,bc
ret z

ld hl,(jp_addr+1)
dec hl
ld (jp_addr+1),hl
jr update

do_up:
ld hl,(jp_addr+1)
or a
ld bc,addrs
sbc hl,bc
ret z

ld hl,(jp_addr+1)
inc hl
ld (jp_addr+1),hl
jr update

update:
ld h,1
ld l,10
call set_char_coords
ld hl,(jp_addr+1)
or a
ld bc,addre
sbc hl,bc
call outputhex16
ret


include "../lib/mem.asm"
include "../lib/report.asm"
include "../lib/test.asm"
include "../lib/outputmsg.asm"
include "../lib/outputhex.asm"
include "../lib/output.asm"
include "../lib/hw/psg.asm"
include "../lib/int.asm"
;; hardware based output

include "../lib/hw/asic.asm"
include "../lib/hw/readkeys.asm"
include "../lib/hw/writetext.asm"
include "../lib/hw/scr.asm"
include "../lib/hw/printtext.asm"

crtc_data:
defb &3f, &28, &2e, &8e, &26, &00, &19, &1e, &00, &07, &00,&00,&30,&00,&c0,&00
end_crtc_data:

sysfont:
incbin "../lib/hw/sysfont.bin"


end start
