;; (c) Copyright Kevin Thacker 2015
;; This code is part of the Arnold emulator distribution.
;; This code is free to distribute without modification
;; this copyright header must be retained.

;; Use this to test if your dissassembler is working correctly
org &4000

start:
jr start

defb &0				;; NOP
defb &01,&01,&01		;; LD BC,&0101
defb &2				;; LD (BC),A
defb &3				;; INC BC
defb &4				;; INC B
defb &5				;; DEC B
defb &06,&01			;; LD B,&01
defb &7
defb &8
defb &9
defb &0A
defb &0B
defb &0C
defb &0D
defb &0E,&01
defb &0F
defb &10,&01
defb &11,&01,&01
defb &12
defb &13
defb &14
defb &15
defb &16,&01
defb &17
defb &18,&01
defb &19
defb &1A
defb &1B
defb &1C
defb &1D
defb &1E,&01
defb &1F
defb &20,&01
defb &21,&01,&01
defb &22,&01,&01
defb &23
defb &24
defb &25
defb &26,&01
defb &27
defb &28,&01
defb &29
defb &2A,&01,&01
defb &2B
defb &2C
defb &2D
defb &2E,&01
defb &2F
defb &30,&01
defb &31,&01,&01
defb &32,&01,&01
defb &33
defb &34
defb &35
defb &36,&01
defb &37
defb &38,&01
defb &39
defb &3A,&01,&01
defb &3B
defb &3C
defb &3D
defb &3E,&01
defb &3F
defb &40
defb &41
defb &42
defb &43
defb &44
defb &45
defb &46
defb &47
defb &48
defb &49
defb &4A
defb &4B
defb &4C
defb &4D
defb &4E
defb &4F
defb &50
defb &51
defb &52
defb &53
defb &54
defb &55
defb &56
defb &57
defb &58
defb &59
defb &5A
defb &5B
defb &5C
defb &5D
defb &5E
defb &5F
defb &60
defb &61
defb &62
defb &63
defb &64
defb &65
defb &66
defb &67
defb &68
defb &69
defb &6A
defb &6B
defb &6C
defb &6D
defb &6E
defb &6F
defb &70
defb &71
defb &72
defb &73
defb &74
defb &75
defb &76
defb &77
defb &78
defb &79
defb &7A
defb &7B
defb &7C
defb &7D
defb &7E
defb &7F
defb &80
defb &81
defb &82
defb &83
defb &84
defb &85
defb &86
defb &87
defb &88
defb &89
defb &8A
defb &8B
defb &8C
defb &8D
defb &8E
defb &8F
defb &90
defb &91
defb &92
defb &93
defb &94
defb &95
defb &96
defb &97
defb &98
defb &99
defb &9A
defb &9B
defb &9C
defb &9D
defb &9E
defb &9F
defb &A0
defb &A1
defb &A2
defb &A3
defb &A4
defb &A5
defb &A6
defb &A7
defb &A8
defb &A9
defb &AA
defb &AB
defb &AC
defb &AD
defb &AE
defb &AF
defb &B0
defb &B1
defb &B2
defb &B3
defb &B4
defb &B5
defb &B6
defb &B7
defb &B8
defb &B9
defb &BA
defb &BB
defb &BC
defb &BD
defb &BE
defb &BF
defb &C0
defb &C1
defb &C2,&01,&01
defb &C3,&01,&01
defb &C4,&01,&01
defb &C5
defb &C6,&01
defb &C7
defb &C8
defb &C9
defb &CA,&01,&01
defb &CB,&00
defb &CB,&01
defb &CB,&02
defb &CB,&03
defb &CB,&04
defb &CB,&05
defb &CB,&06
defb &CB,&07
defb &CB,&08
defb &CB,&09
defb &CB,&0A
defb &CB,&0B
defb &CB,&0C
defb &CB,&0D
defb &CB,&0E
defb &CB,&0F
defb &CB,&10
defb &CB,&11
defb &CB,&12
defb &CB,&13
defb &CB,&14
defb &CB,&15
defb &CB,&16
defb &CB,&17
defb &CB,&18
defb &CB,&19
defb &CB,&1A
defb &CB,&1B
defb &CB,&1C
defb &CB,&1D
defb &CB,&1E
defb &CB,&1F
defb &CB,&20
defb &CB,&21
defb &CB,&22
defb &CB,&23
defb &CB,&24
defb &CB,&25
defb &CB,&26
defb &CB,&27
defb &CB,&28
defb &CB,&29
defb &CB,&2A
defb &CB,&2B
defb &CB,&2C
defb &CB,&2D
defb &CB,&2E
defb &CB,&2F
defb &CB,&30
defb &CB,&31
defb &CB,&32
defb &CB,&33
defb &CB,&34
defb &CB,&35
defb &CB,&36
defb &CB,&37
defb &CB,&38
defb &CB,&39
defb &CB,&3A
defb &CB,&3B
defb &CB,&3C
defb &CB,&3D
defb &CB,&3E
defb &CB,&3F
defb &CB,&40
defb &CB,&41
defb &CB,&42
defb &CB,&43
defb &CB,&44
defb &CB,&45
defb &CB,&46
defb &CB,&47
defb &CB,&48
defb &CB,&49
defb &CB,&4A
defb &CB,&4B
defb &CB,&4C
defb &CB,&4D
defb &CB,&4E
defb &CB,&4F
defb &CB,&50
defb &CB,&51
defb &CB,&52
defb &CB,&53
defb &CB,&54
defb &CB,&55
defb &CB,&56
defb &CB,&57
defb &CB,&58
defb &CB,&59
defb &CB,&5A
defb &CB,&5B
defb &CB,&5C
defb &CB,&5D
defb &CB,&5E
defb &CB,&5F
defb &CB,&60
defb &CB,&61
defb &CB,&62
defb &CB,&63
defb &CB,&64
defb &CB,&65
defb &CB,&66
defb &CB,&67
defb &CB,&68
defb &CB,&69
defb &CB,&6A
defb &CB,&6B
defb &CB,&6C
defb &CB,&6D
defb &CB,&6E
defb &CB,&6F
defb &CB,&70
defb &CB,&71
defb &CB,&72
defb &CB,&73
defb &CB,&74
defb &CB,&75
defb &CB,&76
defb &CB,&77
defb &CB,&78
defb &CB,&79
defb &CB,&7A
defb &CB,&7B
defb &CB,&7C
defb &CB,&7D
defb &CB,&7E
defb &CB,&7F
defb &CB,&80
defb &CB,&81
defb &CB,&82
defb &CB,&83
defb &CB,&84
defb &CB,&85
defb &CB,&86
defb &CB,&87
defb &CB,&88
defb &CB,&89
defb &CB,&8A
defb &CB,&8B
defb &CB,&8C
defb &CB,&8D
defb &CB,&8E
defb &CB,&8F
defb &CB,&90
defb &CB,&91
defb &CB,&92
defb &CB,&93
defb &CB,&94
defb &CB,&95
defb &CB,&96
defb &CB,&97
defb &CB,&98
defb &CB,&99
defb &CB,&9A
defb &CB,&9B
defb &CB,&9C
defb &CB,&9D
defb &CB,&9E
defb &CB,&9F
defb &CB,&A0
defb &CB,&A1
defb &CB,&A2
defb &CB,&A3
defb &CB,&A4
defb &CB,&A5
defb &CB,&A6
defb &CB,&A7
defb &CB,&A8
defb &CB,&A9
defb &CB,&AA
defb &CB,&AB
defb &CB,&AC
defb &CB,&AD
defb &CB,&AE
defb &CB,&AF
defb &CB,&B0
defb &CB,&B1
defb &CB,&B2
defb &CB,&B3
defb &CB,&B4
defb &CB,&B5
defb &CB,&B6
defb &CB,&B7
defb &CB,&B8
defb &CB,&B9
defb &CB,&BA
defb &CB,&BB
defb &CB,&BC
defb &CB,&BD
defb &CB,&BE
defb &CB,&BF
defb &CB,&C0
defb &CB,&C1
defb &CB,&C2
defb &CB,&C3
defb &CB,&C4
defb &CB,&C5
defb &CB,&C6
defb &CB,&C7
defb &CB,&C8
defb &CB,&C9
defb &CB,&CA
defb &CB,&CB
defb &CB,&CC
defb &CB,&CD
defb &CB,&CE
defb &CB,&CF
defb &CB,&D0
defb &CB,&D1
defb &CB,&D2
defb &CB,&D3
defb &CB,&D4
defb &CB,&D5
defb &CB,&D6
defb &CB,&D7
defb &CB,&D8
defb &CB,&D9
defb &CB,&DA
defb &CB,&DB
defb &CB,&DC
defb &CB,&DD
defb &CB,&DE
defb &CB,&DF
defb &CB,&E0
defb &CB,&E1
defb &CB,&E2
defb &CB,&E3
defb &CB,&E4
defb &CB,&E5
defb &CB,&E6
defb &CB,&E7
defb &CB,&E8
defb &CB,&E9
defb &CB,&EA
defb &CB,&EB
defb &CB,&EC
defb &CB,&ED
defb &CB,&EE
defb &CB,&EF
defb &CB,&F0
defb &CB,&F1
defb &CB,&F2
defb &CB,&F3
defb &CB,&F4
defb &CB,&F5
defb &CB,&F6
defb &CB,&F7
defb &CB,&F8
defb &CB,&F9
defb &CB,&FA
defb &CB,&FB
defb &CB,&FC
defb &CB,&FD
defb &CB,&FE
defb &CB,&FF
defb &CC,&01,&01
defb &CD,&01,&01
defb &CE,&01
defb &CF
defb &D0
defb &D1
defb &D2,&01,&01
defb &D3,&01
defb &D4,&01,&01
defb &D5
defb &D6,&01
defb &D7
defb &D8
defb &D9
defb &DA,&01,&01
defb &DB,&01
defb &DC,&01,&01
defb &DD,&09
defb &DD,&19
defb &DD,&21,&01,&01
defb &DD,&22,&01,&01
defb &DD,&23
defb &DD,&24
defb &DD,&25
defb &DD,&26,&01
defb &DD,&29
defb &DD,&2A,&01,&01
defb &DD,&2B
defb &DD,&2C
defb &DD,&2D
defb &DD,&2E,&01
defb &DD,&34,&01
defb &DD,&35,&01
defb &DD,&36,&01,&01
defb &DD,&39
defb &DD,&44
defb &DD,&45
defb &DD,&46,&01
defb &DD,&4C
defb &DD,&4D
defb &DD,&4E,&01
defb &DD,&54
defb &DD,&55
defb &DD,&56,&01
defb &DD,&5C
defb &DD,&5D
defb &DD,&5E,&01
defb &DD,&60
defb &DD,&61
defb &DD,&62
defb &DD,&63
defb &DD,&64
defb &DD,&65
defb &DD,&66,&01
defb &DD,&67
defb &DD,&68
defb &DD,&69
defb &DD,&6A
defb &DD,&6B
defb &DD,&6C
defb &DD,&6D
defb &DD,&6E,&01
defb &DD,&6F
defb &DD,&70,&01
defb &DD,&71,&01
defb &DD,&72,&01
defb &DD,&73,&01
defb &DD,&74,&01
defb &DD,&75,&01
defb &DD,&77,&01
defb &DD,&7C
defb &DD,&7D
defb &DD,&7E,&01
defb &DD,&84
defb &DD,&85
defb &DD,&86,&01
defb &DD,&8C
defb &DD,&8D
defb &DD,&8E,&01
defb &DD,&94
defb &DD,&95
defb &DD,&96,&01
defb &DD,&9C
defb &DD,&9D
defb &DD,&9E,&01
defb &DD,&A4
defb &DD,&A5
defb &DD,&A6,&01
defb &DD,&AC
defb &DD,&AD
defb &DD,&AE,&01
defb &DD,&B4
defb &DD,&B5
defb &DD,&B6,&01
defb &DD,&BC
defb &DD,&BD
defb &DD,&BE,&01
defb &DD,&CB,&01,&00
defb &DD,&CB,&01,&01
defb &DD,&CB,&01,&02
defb &DD,&CB,&01,&03
defb &DD,&CB,&01,&04
defb &DD,&CB,&01,&05
defb &DD,&CB,&01,&06
defb &DD,&CB,&01,&07
defb &DD,&CB,&01,&08
defb &DD,&CB,&01,&09
defb &DD,&CB,&01,&0A
defb &DD,&CB,&01,&0B
defb &DD,&CB,&01,&0C
defb &DD,&CB,&01,&0D
defb &DD,&CB,&01,&0E
defb &DD,&CB,&01,&0F
defb &DD,&CB,&01,&10
defb &DD,&CB,&01,&11
defb &DD,&CB,&01,&12
defb &DD,&CB,&01,&13
defb &DD,&CB,&01,&14
defb &DD,&CB,&01,&15
defb &DD,&CB,&01,&16
defb &DD,&CB,&01,&17
defb &DD,&CB,&01,&18
defb &DD,&CB,&01,&19
defb &DD,&CB,&01,&1A
defb &DD,&CB,&01,&1B
defb &DD,&CB,&01,&1C
defb &DD,&CB,&01,&1D
defb &DD,&CB,&01,&1E
defb &DD,&CB,&01,&1F
defb &DD,&CB,&01,&20
defb &DD,&CB,&01,&21
defb &DD,&CB,&01,&22
defb &DD,&CB,&01,&23
defb &DD,&CB,&01,&24
defb &DD,&CB,&01,&25
defb &DD,&CB,&01,&26
defb &DD,&CB,&01,&27
defb &DD,&CB,&01,&28
defb &DD,&CB,&01,&29
defb &DD,&CB,&01,&2A
defb &DD,&CB,&01,&2B
defb &DD,&CB,&01,&2C
defb &DD,&CB,&01,&2D
defb &DD,&CB,&01,&2E
defb &DD,&CB,&01,&2F
defb &DD,&CB,&01,&30
defb &DD,&CB,&01,&31
defb &DD,&CB,&01,&32
defb &DD,&CB,&01,&33
defb &DD,&CB,&01,&34
defb &DD,&CB,&01,&35
defb &DD,&CB,&01,&36
defb &DD,&CB,&01,&37
defb &DD,&CB,&01,&38
defb &DD,&CB,&01,&39
defb &DD,&CB,&01,&3A
defb &DD,&CB,&01,&3B
defb &DD,&CB,&01,&3C
defb &DD,&CB,&01,&3D
defb &DD,&CB,&01,&3E
defb &DD,&CB,&01,&3F
defb &DD,&CB,&01,&40
defb &DD,&CB,&01,&41
defb &DD,&CB,&01,&42
defb &DD,&CB,&01,&43
defb &DD,&CB,&01,&44
defb &DD,&CB,&01,&45
defb &DD,&CB,&01,&46
defb &DD,&CB,&01,&47
defb &DD,&CB,&01,&48
defb &DD,&CB,&01,&49
defb &DD,&CB,&01,&4A
defb &DD,&CB,&01,&4B
defb &DD,&CB,&01,&4C
defb &DD,&CB,&01,&4D
defb &DD,&CB,&01,&4E
defb &DD,&CB,&01,&4F
defb &DD,&CB,&01,&50
defb &DD,&CB,&01,&51
defb &DD,&CB,&01,&52
defb &DD,&CB,&01,&53
defb &DD,&CB,&01,&54
defb &DD,&CB,&01,&55
defb &DD,&CB,&01,&56
defb &DD,&CB,&01,&57
defb &DD,&CB,&01,&58
defb &DD,&CB,&01,&59
defb &DD,&CB,&01,&5A
defb &DD,&CB,&01,&5B
defb &DD,&CB,&01,&5C
defb &DD,&CB,&01,&5D
defb &DD,&CB,&01,&5E
defb &DD,&CB,&01,&5F
defb &DD,&CB,&01,&60
defb &DD,&CB,&01,&61
defb &DD,&CB,&01,&62
defb &DD,&CB,&01,&63
defb &DD,&CB,&01,&64
defb &DD,&CB,&01,&65
defb &DD,&CB,&01,&66
defb &DD,&CB,&01,&67
defb &DD,&CB,&01,&68
defb &DD,&CB,&01,&69
defb &DD,&CB,&01,&6A
defb &DD,&CB,&01,&6B
defb &DD,&CB,&01,&6C
defb &DD,&CB,&01,&6D
defb &DD,&CB,&01,&6E
defb &DD,&CB,&01,&6F
defb &DD,&CB,&01,&70
defb &DD,&CB,&01,&71
defb &DD,&CB,&01,&72
defb &DD,&CB,&01,&73
defb &DD,&CB,&01,&74
defb &DD,&CB,&01,&75
defb &DD,&CB,&01,&76
defb &DD,&CB,&01,&77
defb &DD,&CB,&01,&78
defb &DD,&CB,&01,&79
defb &DD,&CB,&01,&7A
defb &DD,&CB,&01,&7B
defb &DD,&CB,&01,&7C
defb &DD,&CB,&01,&7D
defb &DD,&CB,&01,&7E
defb &DD,&CB,&01,&7F
defb &DD,&CB,&01,&80
defb &DD,&CB,&01,&81
defb &DD,&CB,&01,&82
defb &DD,&CB,&01,&83
defb &DD,&CB,&01,&84
defb &DD,&CB,&01,&85
defb &DD,&CB,&01,&86
defb &DD,&CB,&01,&87
defb &DD,&CB,&01,&88
defb &DD,&CB,&01,&89
defb &DD,&CB,&01,&8A
defb &DD,&CB,&01,&8B
defb &DD,&CB,&01,&8C
defb &DD,&CB,&01,&8D
defb &DD,&CB,&01,&8E
defb &DD,&CB,&01,&8F
defb &DD,&CB,&01,&90
defb &DD,&CB,&01,&91
defb &DD,&CB,&01,&92
defb &DD,&CB,&01,&93
defb &DD,&CB,&01,&94
defb &DD,&CB,&01,&95
defb &DD,&CB,&01,&96
defb &DD,&CB,&01,&97
defb &DD,&CB,&01,&98
defb &DD,&CB,&01,&99
defb &DD,&CB,&01,&9A
defb &DD,&CB,&01,&9B
defb &DD,&CB,&01,&9C
defb &DD,&CB,&01,&9D
defb &DD,&CB,&01,&9E
defb &DD,&CB,&01,&9F
defb &DD,&CB,&01,&A0
defb &DD,&CB,&01,&A1
defb &DD,&CB,&01,&A2
defb &DD,&CB,&01,&A3
defb &DD,&CB,&01,&A4
defb &DD,&CB,&01,&A5
defb &DD,&CB,&01,&A6
defb &DD,&CB,&01,&A7
defb &DD,&CB,&01,&A8
defb &DD,&CB,&01,&A9
defb &DD,&CB,&01,&AA
defb &DD,&CB,&01,&AB
defb &DD,&CB,&01,&AC
defb &DD,&CB,&01,&AD
defb &DD,&CB,&01,&AE
defb &DD,&CB,&01,&AF
defb &DD,&CB,&01,&B0
defb &DD,&CB,&01,&B1
defb &DD,&CB,&01,&B2
defb &DD,&CB,&01,&B3
defb &DD,&CB,&01,&B4
defb &DD,&CB,&01,&B5
defb &DD,&CB,&01,&B6
defb &DD,&CB,&01,&B7
defb &DD,&CB,&01,&B8
defb &DD,&CB,&01,&B9
defb &DD,&CB,&01,&BA
defb &DD,&CB,&01,&BB
defb &DD,&CB,&01,&BC
defb &DD,&CB,&01,&BD
defb &DD,&CB,&01,&BE
defb &DD,&CB,&01,&BF
defb &DD,&CB,&01,&C0
defb &DD,&CB,&01,&C1
defb &DD,&CB,&01,&C2
defb &DD,&CB,&01,&C3
defb &DD,&CB,&01,&C4
defb &DD,&CB,&01,&C5
defb &DD,&CB,&01,&C6
defb &DD,&CB,&01,&C7
defb &DD,&CB,&01,&C8
defb &DD,&CB,&01,&C9
defb &DD,&CB,&01,&CA
defb &DD,&CB,&01,&CB
defb &DD,&CB,&01,&CC
defb &DD,&CB,&01,&CD
defb &DD,&CB,&01,&CE
defb &DD,&CB,&01,&CF
defb &DD,&CB,&01,&D0
defb &DD,&CB,&01,&D1
defb &DD,&CB,&01,&D2
defb &DD,&CB,&01,&D3
defb &DD,&CB,&01,&D4
defb &DD,&CB,&01,&D5
defb &DD,&CB,&01,&D6
defb &DD,&CB,&01,&D7
defb &DD,&CB,&01,&D8
defb &DD,&CB,&01,&D9
defb &DD,&CB,&01,&DA
defb &DD,&CB,&01,&DB
defb &DD,&CB,&01,&DC
defb &DD,&CB,&01,&DD
defb &DD,&CB,&01,&DE
defb &DD,&CB,&01,&DF
defb &DD,&CB,&01,&E0
defb &DD,&CB,&01,&E1
defb &DD,&CB,&01,&E2
defb &DD,&CB,&01,&E3
defb &DD,&CB,&01,&E4
defb &DD,&CB,&01,&E5
defb &DD,&CB,&01,&E6
defb &DD,&CB,&01,&E7
defb &DD,&CB,&01,&E8
defb &DD,&CB,&01,&E9
defb &DD,&CB,&01,&EA
defb &DD,&CB,&01,&EB
defb &DD,&CB,&01,&EC
defb &DD,&CB,&01,&ED
defb &DD,&CB,&01,&EE
defb &DD,&CB,&01,&EF
defb &DD,&CB,&01,&F0
defb &DD,&CB,&01,&F1
defb &DD,&CB,&01,&F2
defb &DD,&CB,&01,&F3
defb &DD,&CB,&01,&F4
defb &DD,&CB,&01,&F5
defb &DD,&CB,&01,&F6
defb &DD,&CB,&01,&F7
defb &DD,&CB,&01,&F8
defb &DD,&CB,&01,&F9
defb &DD,&CB,&01,&FA
defb &DD,&CB,&01,&FB
defb &DD,&CB,&01,&FC
defb &DD,&CB,&01,&FD
defb &DD,&CB,&01,&FE
defb &DD,&CB,&01,&FF
defb &DD,&E1
defb &DD,&E3
defb &DD,&E5
defb &DD,&E9
defb &DD,&F9
defb &DE,&01
defb &DF
defb &E0
defb &E1
defb &E2,&01,&01
defb &E3
defb &E4,&01,&01
defb &E5
defb &E6,&01
defb &E7
defb &E8
defb &E9
defb &EA,&01,&01
defb &EB
defb &EC,&01,&01
defb &ED,&00
defb &ED,&01
defb &ED,&02
defb &ED,&03
defb &ED,&04
defb &ED,&05
defb &ED,&06
defb &ED,&07
defb &ED,&08
defb &ED,&09
defb &ED,&0A
defb &ED,&0B
defb &ED,&0C
defb &ED,&0D
defb &ED,&0E
defb &ED,&0F
defb &ED,&10
defb &ED,&11
defb &ED,&12
defb &ED,&13
defb &ED,&14
defb &ED,&15
defb &ED,&16
defb &ED,&17
defb &ED,&18
defb &ED,&19
defb &ED,&1A
defb &ED,&1B
defb &ED,&1C
defb &ED,&1D
defb &ED,&1E
defb &ED,&1F
defb &ED,&20
defb &ED,&21
defb &ED,&22
defb &ED,&23
defb &ED,&24
defb &ED,&25
defb &ED,&26
defb &ED,&27
defb &ED,&28
defb &ED,&29
defb &ED,&2A
defb &ED,&2B
defb &ED,&2C
defb &ED,&2D
defb &ED,&2E
defb &ED,&2F
defb &ED,&30
defb &ED,&31
defb &ED,&32
defb &ED,&33
defb &ED,&34
defb &ED,&35
defb &ED,&36
defb &ED,&37
defb &ED,&38
defb &ED,&39
defb &ED,&3A
defb &ED,&3B
defb &ED,&3C
defb &ED,&3D
defb &ED,&3E
defb &ED,&3F
defb &ED,&40
defb &ED,&41
defb &ED,&42
defb &ED,&43,&01,&01
defb &ED,&44
defb &ED,&45
defb &ED,&46
defb &ED,&47
defb &ED,&48
defb &ED,&49
defb &ED,&4A
defb &ED,&4B,&01,&01
defb &ED,&4C
defb &ED,&4D
defb &ED,&4E
defb &ED,&4F
defb &ED,&50
defb &ED,&51
defb &ED,&52
defb &ED,&53,&01,&01
defb &ED,&54
defb &ED,&55
defb &ED,&56
defb &ED,&57
defb &ED,&58
defb &ED,&59
defb &ED,&5A
defb &ED,&5B,&01,&01
defb &ED,&5C
defb &ED,&5D
defb &ED,&5E
defb &ED,&5F
defb &ED,&60
defb &ED,&61
defb &ED,&62
defb &ED,&63,&01,&01
defb &ED,&64
defb &ED,&65
defb &ED,&66
defb &ED,&67
defb &ED,&68
defb &ED,&69
defb &ED,&6A
defb &ED,&6B,&01,&01
defb &ED,&6C
defb &ED,&6D
defb &ED,&6E
defb &ED,&6F
defb &ED,&70
defb &ED,&71
defb &ED,&72
defb &ED,&73,&01,&01
defb &ED,&74
defb &ED,&75
defb &ED,&76
defb &ED,&77
defb &ED,&78
defb &ED,&79
defb &ED,&7A
defb &ED,&7B,&01,&01
defb &ED,&7C
defb &ED,&7D
defb &ED,&7E
defb &ED,&7F
defb &ED,&80
defb &ED,&81
defb &ED,&82
defb &ED,&83
defb &ED,&84
defb &ED,&85
defb &ED,&86
defb &ED,&87
defb &ED,&88
defb &ED,&89
defb &ED,&8A
defb &ED,&8B
defb &ED,&8C
defb &ED,&8D
defb &ED,&8E
defb &ED,&8F
defb &ED,&90
defb &ED,&91
defb &ED,&92
defb &ED,&93
defb &ED,&94
defb &ED,&95
defb &ED,&96
defb &ED,&97
defb &ED,&98
defb &ED,&99
defb &ED,&9A
defb &ED,&9B
defb &ED,&9C
defb &ED,&9D
defb &ED,&9E
defb &ED,&9F
defb &ED,&A0
defb &ED,&A1
defb &ED,&A2
defb &ED,&A3
defb &ED,&A4
defb &ED,&A5
defb &ED,&A6
defb &ED,&A7
defb &ED,&A8
defb &ED,&A9
defb &ED,&AA
defb &ED,&AB
defb &ED,&AC
defb &ED,&AD
defb &ED,&AE
defb &ED,&AF
defb &ED,&B0
defb &ED,&B1
defb &ED,&B2
defb &ED,&B3
defb &ED,&B4
defb &ED,&B5
defb &ED,&B6
defb &ED,&B7
defb &ED,&B8
defb &ED,&B9
defb &ED,&BA
defb &ED,&BB
defb &ED,&BC
defb &ED,&BD
defb &ED,&BE
defb &ED,&BF
defb &ED,&C0
defb &ED,&C1
defb &ED,&C2
defb &ED,&C3
defb &ED,&C4
defb &ED,&C5
defb &ED,&C6
defb &ED,&C7
defb &ED,&C8
defb &ED,&C9
defb &ED,&CA
defb &ED,&CB
defb &ED,&CC
defb &ED,&CD
defb &ED,&CE
defb &ED,&CF
defb &ED,&D0
defb &ED,&D1
defb &ED,&D2
defb &ED,&D3
defb &ED,&D4
defb &ED,&D5
defb &ED,&D6
defb &ED,&D7
defb &ED,&D8
defb &ED,&D9
defb &ED,&DA
defb &ED,&DB
defb &ED,&DC
defb &ED,&DD
defb &ED,&DE
defb &ED,&DF
defb &ED,&E0
defb &ED,&E1
defb &ED,&E2
defb &ED,&E3
defb &ED,&E4
defb &ED,&E5
defb &ED,&E6
defb &ED,&E7
defb &ED,&E8
defb &ED,&E9
defb &ED,&EA
defb &ED,&EB
defb &ED,&EC
defb &ED,&ED
defb &ED,&EE
defb &ED,&EF
defb &ED,&F0
defb &ED,&F1
defb &ED,&F2
defb &ED,&F3
defb &ED,&F4
defb &ED,&F5
defb &ED,&F6
defb &ED,&F7
defb &ED,&F8
defb &ED,&F9
defb &ED,&FA
defb &ED,&FB
defb &ED,&FC
defb &ED,&FD
defb &ED,&FE
defb &ED,&FF
defb &EE,&01
defb &EF
defb &F0
defb &F1
defb &F2,&01,&01
defb &F3
defb &F4,&01,&01
defb &F5
defb &F6,&01
defb &F7
defb &F8
defb &F9
defb &FA,&01,&01
defb &FB
defb &FC,&01,&01
defb &FD,&09
defb &FD,&19
defb &FD,&21,&01,&01
defb &FD,&22,&01,&01
defb &FD,&23
defb &FD,&24
defb &FD,&25
defb &FD,&26,&01
defb &FD,&29
defb &FD,&2A,&01,&01
defb &FD,&2B
defb &FD,&2C
defb &FD,&2D
defb &FD,&2E,&01
defb &FD,&34,&01
defb &FD,&35,&01
defb &FD,&36,&01,&01
defb &FD,&39
defb &FD,&44
defb &FD,&45
defb &FD,&46,&01
defb &FD,&4C
defb &FD,&4D
defb &FD,&4E,&01
defb &FD,&54
defb &FD,&55
defb &FD,&56,&01
defb &FD,&5C
defb &FD,&5D
defb &FD,&5E,&01
defb &FD,&60
defb &FD,&61
defb &FD,&62
defb &FD,&63
defb &FD,&64
defb &FD,&65
defb &FD,&66,&01
defb &FD,&67
defb &FD,&68
defb &FD,&69
defb &FD,&6A
defb &FD,&6B
defb &FD,&6C
defb &FD,&6D
defb &FD,&6E,&01
defb &FD,&6F
defb &FD,&70,&01
defb &FD,&71,&01
defb &FD,&72,&01
defb &FD,&73,&01
defb &FD,&74,&01
defb &FD,&75,&01
defb &FD,&77,&01
defb &FD,&7C
defb &FD,&7D
defb &FD,&7E,&01
defb &FD,&84
defb &FD,&85
defb &FD,&86,&01
defb &FD,&8C
defb &FD,&8D
defb &FD,&8E,&01
defb &FD,&94
defb &FD,&95
defb &FD,&96,&01
defb &FD,&9C
defb &FD,&9D
defb &FD,&9E,&01
defb &FD,&A4
defb &FD,&A5
defb &FD,&A6,&01
defb &FD,&AC
defb &FD,&AD
defb &FD,&AE,&01
defb &FD,&B4
defb &FD,&B5
defb &FD,&B6,&01
defb &FD,&BC
defb &FD,&BD
defb &FD,&BE,&01
defb &FD,&CB,&01,&00
defb &FD,&CB,&01,&01
defb &FD,&CB,&01,&02
defb &FD,&CB,&01,&03
defb &FD,&CB,&01,&04
defb &FD,&CB,&01,&05
defb &FD,&CB,&01,&06
defb &FD,&CB,&01,&07
defb &FD,&CB,&01,&08
defb &FD,&CB,&01,&09
defb &FD,&CB,&01,&0A
defb &FD,&CB,&01,&0B
defb &FD,&CB,&01,&0C
defb &FD,&CB,&01,&0D
defb &FD,&CB,&01,&0E
defb &FD,&CB,&01,&0F
defb &FD,&CB,&01,&10
defb &FD,&CB,&01,&11
defb &FD,&CB,&01,&12
defb &FD,&CB,&01,&13
defb &FD,&CB,&01,&14
defb &FD,&CB,&01,&15
defb &FD,&CB,&01,&16
defb &FD,&CB,&01,&17
defb &FD,&CB,&01,&18
defb &FD,&CB,&01,&19
defb &FD,&CB,&01,&1A
defb &FD,&CB,&01,&1B
defb &FD,&CB,&01,&1C
defb &FD,&CB,&01,&1D
defb &FD,&CB,&01,&1E
defb &FD,&CB,&01,&1F
defb &FD,&CB,&01,&20
defb &FD,&CB,&01,&21
defb &FD,&CB,&01,&22
defb &FD,&CB,&01,&23
defb &FD,&CB,&01,&24
defb &FD,&CB,&01,&25
defb &FD,&CB,&01,&26
defb &FD,&CB,&01,&27
defb &FD,&CB,&01,&28
defb &FD,&CB,&01,&29
defb &FD,&CB,&01,&2A
defb &FD,&CB,&01,&2B
defb &FD,&CB,&01,&2C
defb &FD,&CB,&01,&2D
defb &FD,&CB,&01,&2E
defb &FD,&CB,&01,&2F
defb &FD,&CB,&01,&30
defb &FD,&CB,&01,&31
defb &FD,&CB,&01,&32
defb &FD,&CB,&01,&33
defb &FD,&CB,&01,&34
defb &FD,&CB,&01,&35
defb &FD,&CB,&01,&36
defb &FD,&CB,&01,&37
defb &FD,&CB,&01,&38
defb &FD,&CB,&01,&39
defb &FD,&CB,&01,&3A
defb &FD,&CB,&01,&3B
defb &FD,&CB,&01,&3C
defb &FD,&CB,&01,&3D
defb &FD,&CB,&01,&3E
defb &FD,&CB,&01,&3F
defb &FD,&CB,&01,&40
defb &FD,&CB,&01,&41
defb &FD,&CB,&01,&42
defb &FD,&CB,&01,&43
defb &FD,&CB,&01,&44
defb &FD,&CB,&01,&45
defb &FD,&CB,&01,&46
defb &FD,&CB,&01,&47
defb &FD,&CB,&01,&48
defb &FD,&CB,&01,&49
defb &FD,&CB,&01,&4A
defb &FD,&CB,&01,&4B
defb &FD,&CB,&01,&4C
defb &FD,&CB,&01,&4D
defb &FD,&CB,&01,&4E
defb &FD,&CB,&01,&4F
defb &FD,&CB,&01,&50
defb &FD,&CB,&01,&51
defb &FD,&CB,&01,&52
defb &FD,&CB,&01,&53
defb &FD,&CB,&01,&54
defb &FD,&CB,&01,&55
defb &FD,&CB,&01,&56
defb &FD,&CB,&01,&57
defb &FD,&CB,&01,&58
defb &FD,&CB,&01,&59
defb &FD,&CB,&01,&5A
defb &FD,&CB,&01,&5B
defb &FD,&CB,&01,&5C
defb &FD,&CB,&01,&5D
defb &FD,&CB,&01,&5E
defb &FD,&CB,&01,&5F
defb &FD,&CB,&01,&60
defb &FD,&CB,&01,&61
defb &FD,&CB,&01,&62
defb &FD,&CB,&01,&63
defb &FD,&CB,&01,&64
defb &FD,&CB,&01,&65
defb &FD,&CB,&01,&66
defb &FD,&CB,&01,&67
defb &FD,&CB,&01,&68
defb &FD,&CB,&01,&69
defb &FD,&CB,&01,&6A
defb &FD,&CB,&01,&6B
defb &FD,&CB,&01,&6C
defb &FD,&CB,&01,&6D
defb &FD,&CB,&01,&6E
defb &FD,&CB,&01,&6F
defb &FD,&CB,&01,&70
defb &FD,&CB,&01,&71
defb &FD,&CB,&01,&72
defb &FD,&CB,&01,&73
defb &FD,&CB,&01,&74
defb &FD,&CB,&01,&75
defb &FD,&CB,&01,&76
defb &FD,&CB,&01,&77
defb &FD,&CB,&01,&78
defb &FD,&CB,&01,&79
defb &FD,&CB,&01,&7A
defb &FD,&CB,&01,&7B
defb &FD,&CB,&01,&7C
defb &FD,&CB,&01,&7D
defb &FD,&CB,&01,&7E
defb &FD,&CB,&01,&7F
defb &FD,&CB,&01,&80
defb &FD,&CB,&01,&81
defb &FD,&CB,&01,&82
defb &FD,&CB,&01,&83
defb &FD,&CB,&01,&84
defb &FD,&CB,&01,&85
defb &FD,&CB,&01,&86
defb &FD,&CB,&01,&87
defb &FD,&CB,&01,&88
defb &FD,&CB,&01,&89
defb &FD,&CB,&01,&8A
defb &FD,&CB,&01,&8B
defb &FD,&CB,&01,&8C
defb &FD,&CB,&01,&8D
defb &FD,&CB,&01,&8E
defb &FD,&CB,&01,&8F
defb &FD,&CB,&01,&90
defb &FD,&CB,&01,&91
defb &FD,&CB,&01,&92
defb &FD,&CB,&01,&93
defb &FD,&CB,&01,&94
defb &FD,&CB,&01,&95
defb &FD,&CB,&01,&96
defb &FD,&CB,&01,&97
defb &FD,&CB,&01,&98
defb &FD,&CB,&01,&99
defb &FD,&CB,&01,&9A
defb &FD,&CB,&01,&9B
defb &FD,&CB,&01,&9C
defb &FD,&CB,&01,&9D
defb &FD,&CB,&01,&9E
defb &FD,&CB,&01,&9F
defb &FD,&CB,&01,&A0
defb &FD,&CB,&01,&A1
defb &FD,&CB,&01,&A2
defb &FD,&CB,&01,&A3
defb &FD,&CB,&01,&A4
defb &FD,&CB,&01,&A5
defb &FD,&CB,&01,&A6
defb &FD,&CB,&01,&A7
defb &FD,&CB,&01,&A8
defb &FD,&CB,&01,&A9
defb &FD,&CB,&01,&AA
defb &FD,&CB,&01,&AB
defb &FD,&CB,&01,&AC
defb &FD,&CB,&01,&AD
defb &FD,&CB,&01,&AE
defb &FD,&CB,&01,&AF
defb &FD,&CB,&01,&B0
defb &FD,&CB,&01,&B1
defb &FD,&CB,&01,&B2
defb &FD,&CB,&01,&B3
defb &FD,&CB,&01,&B4
defb &FD,&CB,&01,&B5
defb &FD,&CB,&01,&B6
defb &FD,&CB,&01,&B7
defb &FD,&CB,&01,&B8
defb &FD,&CB,&01,&B9
defb &FD,&CB,&01,&BA
defb &FD,&CB,&01,&BB
defb &FD,&CB,&01,&BC
defb &FD,&CB,&01,&BD
defb &FD,&CB,&01,&BE
defb &FD,&CB,&01,&BF
defb &FD,&CB,&01,&C0
defb &FD,&CB,&01,&C1
defb &FD,&CB,&01,&C2
defb &FD,&CB,&01,&C3
defb &FD,&CB,&01,&C4
defb &FD,&CB,&01,&C5
defb &FD,&CB,&01,&C6
defb &FD,&CB,&01,&C7
defb &FD,&CB,&01,&C8
defb &FD,&CB,&01,&C9
defb &FD,&CB,&01,&CA
defb &FD,&CB,&01,&CB
defb &FD,&CB,&01,&CC
defb &FD,&CB,&01,&CD
defb &FD,&CB,&01,&CE
defb &FD,&CB,&01,&CF
defb &FD,&CB,&01,&D0
defb &FD,&CB,&01,&D1
defb &FD,&CB,&01,&D2
defb &FD,&CB,&01,&D3
defb &FD,&CB,&01,&D4
defb &FD,&CB,&01,&D5
defb &FD,&CB,&01,&D6
defb &FD,&CB,&01,&D7
defb &FD,&CB,&01,&D8
defb &FD,&CB,&01,&D9
defb &FD,&CB,&01,&DA
defb &FD,&CB,&01,&DB
defb &FD,&CB,&01,&DC
defb &FD,&CB,&01,&DD
defb &FD,&CB,&01,&DE
defb &FD,&CB,&01,&DF
defb &FD,&CB,&01,&E0
defb &FD,&CB,&01,&E1
defb &FD,&CB,&01,&E2
defb &FD,&CB,&01,&E3
defb &FD,&CB,&01,&E4
defb &FD,&CB,&01,&E5
defb &FD,&CB,&01,&E6
defb &FD,&CB,&01,&E7
defb &FD,&CB,&01,&E8
defb &FD,&CB,&01,&E9
defb &FD,&CB,&01,&EA
defb &FD,&CB,&01,&EB
defb &FD,&CB,&01,&EC
defb &FD,&CB,&01,&ED
defb &FD,&CB,&01,&EE
defb &FD,&CB,&01,&EF
defb &FD,&CB,&01,&F0
defb &FD,&CB,&01,&F1
defb &FD,&CB,&01,&F2
defb &FD,&CB,&01,&F3
defb &FD,&CB,&01,&F4
defb &FD,&CB,&01,&F5
defb &FD,&CB,&01,&F6
defb &FD,&CB,&01,&F7
defb &FD,&CB,&01,&F8
defb &FD,&CB,&01,&F9
defb &FD,&CB,&01,&FA
defb &FD,&CB,&01,&FB
defb &FD,&CB,&01,&FC
defb &FD,&CB,&01,&FD
defb &FD,&CB,&01,&FE
defb &FD,&CB,&01,&FF
defb &FD,&E1
defb &FD,&E3
defb &FD,&E5
defb &FD,&E9
defb &FD,&F9
defb &FE,&01
defb &FF

;; these are to test how IX/IY offsets are displayed
defb &DD,&70,&7F
defb &DD,&70,&80
defb &DD,&70,&FF
defb &DD,&70,&00
defb &DD,&70,&40
defb &DD,&70,&c0

;; these test multiple prefixes
;; IX
defb &dd,&dd,&dd
defb &dd,&E9

;; IY
defb &fd,&fd,&fd
defb &fd,&E9

;; mixed multiple opcodes
defb &dd,&fd,&dd,&fd
defb &dd,&e9

end start
