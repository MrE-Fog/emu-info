;; (c) Copyright Kevin Thacker 2015
;; This code is part of the Arnold emulator distribution.
;; This code is free to distribute without modification
;; this copyright header must be retained.

output_msg:
ld a,(hl)
inc hl
or a
ret z
call output_char
jr output_msg