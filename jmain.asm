;compile to this filename
!to "jmain.prg",cbm

;memory layout

;screen back color  $C400 to $C7FF
;screen back char   $C800 to $CBFF
;screen             $CC00 to $CFFF
;sprites            $D000 to $EFFF
;charset            $F000 to $FFFF

;TEST
;screen back color  $BC00 to $BFFF
;sprites            $D000 to $F7FF
;charset            $F800 to $FFFF
;charset2           $C000 to $C800


;define constants here
KERNAL_GETIN            = $ffe4
KERNAL_SETMSG           = $ff90
KERNAL_SETLFS           = $ffba
KERNAL_SETNAM           = $ffbd
KERNAL_LOAD             = $ffd5

VIC_SPRITE_X_POS        = $d000
VIC_SPRITE_Y_POS        = $d001
VIC_SPRITE_X_EXTEND     = $d010
VIC_CONTROL_MODE        = $d011
VIC_SPRITE_ENABLE       = $d015
VIC_CONTROL             = $d016
VIC_SPRITE_EXPAND_Y     = $d017
VIC_MEMORY_CONTROL      = $d018
VIC_SPRITE_PRIORITY     = $d01b
VIC_SPRITE_MULTICOLOR   = $d01c
VIC_SPRITE_EXPAND_X     = $d01d
VIC_SPRITE_MULTICOLOR_1 = $d025
VIC_SPRITE_MULTICOLOR_2 = $d026
VIC_SPRITE_COLOR        = $d027

VIC_BORDER_COLOR        = $d020
VIC_BACKGROUND_COLOR    = $d021
VIC_CHARSET_MULTICOLOR_1= $d022
VIC_CHARSET_MULTICOLOR_2= $d023

JOYSTICK_PORT_II        = $dc00

CIA_PRA                 = $dd00

PROCESSOR_PORT          = $01

START_LEVEL             = 0
;START_LEVEL             = 71

MUSIC_IN_GAME_TUNE		    = $00
MUSIC_TITLE_TUNE			     = $01
MUSIC_GET_READY_GAME_OVER_TUNE  = $02 ;Also use this for Game Over!
MUSIC_GAME_END_TUNE     = $03
MUSIC_PLAYER_SHOOT      = $04
MUSIC_PLAYER_DIE        = $05
MUSIC_PICKUP            = $06
MUSIC_ENEMY_DIE         = $07


;placeholder for various temp parameters
PARAM1                  = $03
PARAM2                  = $04
PARAM3                  = $05
PARAM4                  = $06
PARAM5                  = $07
PARAM6                  = $08
PARAM7                  = $09
PARAM8                  = $0A
PARAM9                  = $0B
PARAM10                 = $0C

;placeholder for zero page pointers
ZEROPAGE_POINTER_1      = $17
ZEROPAGE_POINTER_2      = $19
ZEROPAGE_POINTER_3      = $21
ZEROPAGE_POINTER_4      = $23

;address of the screen buffer
SCREEN_CHAR             = $CC00

;address of color ram
SCREEN_COLOR            = $D800

;address of the screen backbuffer
SCREEN_BACK_CHAR        = $C800

;address of the screen backbuffer
;SCREEN_BACK_COLOR       = $C400
SCREEN_BACK_COLOR       = $BC00


;address of sprite pointers
SPRITE_POINTER_BASE     = SCREEN_CHAR + 1016

;number of sprites divided by four
NUMBER_OF_SPRITES_DIV_4       = 160 / 4

;sprite number constant
SPRITE_BASE                   = 64

SPRITE_PLAYER                 = SPRITE_BASE + 0
SPRITE_BAT_1                  = SPRITE_BASE + 1
SPRITE_PLAYER_STAND_R         = SPRITE_BASE + 2
SPRITE_PLAYER_STAND_L         = SPRITE_BASE + 3
SPRITE_PLAYER_STAND_RECOIL_R  = SPRITE_BASE + 4
SPRITE_PLAYER_STAND_RECOIL_L  = SPRITE_BASE + 5
SPRITE_PLAYER_WALK_R_1        = SPRITE_BASE + 6
SPRITE_PLAYER_WALK_L_1        = SPRITE_BASE + 7
SPRITE_PLAYER_WALK_R_2        = SPRITE_BASE + 8
SPRITE_PLAYER_WALK_L_2        = SPRITE_BASE + 9
SPRITE_PLAYER_WALK_R_3        = SPRITE_BASE + 10
SPRITE_PLAYER_WALK_L_3        = SPRITE_BASE + 11
SPRITE_PLAYER_WALK_R_4        = SPRITE_BASE + 12
SPRITE_PLAYER_WALK_L_4        = SPRITE_BASE + 13
SPRITE_PLAYER_JUMP_R          = SPRITE_BASE + 6
SPRITE_PLAYER_JUMP_L          = SPRITE_BASE + 7
SPRITE_PLAYER_FALL_R          = SPRITE_BASE + 12
SPRITE_PLAYER_FALL_L          = SPRITE_BASE + 13
SPRITE_PLAYER_JUMP_RECOIL_R   = SPRITE_BASE + 14
SPRITE_PLAYER_JUMP_RECOIL_L   = SPRITE_BASE + 15
SPRITE_PLAYER_FALL_RECOIL_R   = SPRITE_BASE + 20
SPRITE_PLAYER_FALL_RECOIL_L   = SPRITE_BASE + 21

SPRITE_BAT_2                  = SPRITE_BASE + 22
SPRITE_BAT_3                  = SPRITE_BASE + 23

SPRITE_MUMMY_R_1              = SPRITE_BASE + 24
SPRITE_MUMMY_L_1              = SPRITE_BASE + 25
SPRITE_MUMMY_R_2              = SPRITE_BASE + 26
SPRITE_MUMMY_L_2              = SPRITE_BASE + 27
SPRITE_MUMMY_ATTACK_R         = SPRITE_BASE + 28
SPRITE_MUMMY_ATTACK_L         = SPRITE_BASE + 29

SPRITE_PLAYER_RELOAD_R        = SPRITE_BASE + 30
SPRITE_PLAYER_RELOAD_L        = SPRITE_BASE + 31

SPRITE_ZOMBIE_WALK_R_1        = SPRITE_BASE + 32
SPRITE_ZOMBIE_WALK_L_1        = SPRITE_BASE + 33
SPRITE_ZOMBIE_WALK_R_2        = SPRITE_BASE + 34
SPRITE_ZOMBIE_WALK_L_2        = SPRITE_BASE + 35
SPRITE_ZOMBIE_COLLAPSE_R_1    = SPRITE_BASE + 36
SPRITE_ZOMBIE_COLLAPSE_L_1    = SPRITE_BASE + 37
SPRITE_ZOMBIE_COLLAPSE_R_2    = SPRITE_BASE + 38
SPRITE_ZOMBIE_COLLAPSE_L_2    = SPRITE_BASE + 39

SPRITE_INVISIBLE              = SPRITE_BASE + 40
SPRITE_BAT_VANISH             = SPRITE_BASE + 41

SPRITE_ZOMBIE_JUMP_R          = SPRITE_BASE + 42
SPRITE_ZOMBIE_JUMP_L          = SPRITE_BASE + 43

SPRITE_SPIDER_STAND           = SPRITE_BASE + 44
SPRITE_SPIDER_WALK_1          = SPRITE_BASE + 45
SPRITE_SPIDER_WALK_2          = SPRITE_BASE + 46

SPRITE_WOLF_WALK_L_1          = SPRITE_BASE + 47
SPRITE_WOLF_WALK_L_2          = SPRITE_BASE + 48
SPRITE_WOLF_WALK_L_3          = SPRITE_BASE + 49
SPRITE_WOLF_JUMP_L            = SPRITE_BASE + 50

SPRITE_PLAYER_SAM_STAND_R     = SPRITE_BASE + 51
SPRITE_PLAYER_SAM_STAND_L     = SPRITE_BASE + 52

SPRITE_FLY_1                  = SPRITE_BASE + 53
SPRITE_FLY_2                  = SPRITE_BASE + 54

SPRITE_PLAYER_DEAD            = SPRITE_BASE + 87

SPRITE_PLAYER_SAM_WALK_R_1    = SPRITE_BASE + 55
SPRITE_PLAYER_SAM_WALK_L_1    = SPRITE_BASE + 56
SPRITE_PLAYER_SAM_WALK_R_2    = SPRITE_BASE + 57
SPRITE_PLAYER_SAM_WALK_L_2    = SPRITE_BASE + 58
SPRITE_PLAYER_SAM_WALK_R_3    = SPRITE_BASE + 59
SPRITE_PLAYER_SAM_WALK_L_3    = SPRITE_BASE + 60
SPRITE_PLAYER_SAM_WALK_R_4    = SPRITE_BASE + 61
SPRITE_PLAYER_SAM_WALK_L_4    = SPRITE_BASE + 62
SPRITE_PLAYER_SAM_JUMP_R      = SPRITE_BASE + 55
SPRITE_PLAYER_SAM_JUMP_L      = SPRITE_BASE + 56
SPRITE_PLAYER_SAM_FALL_R      = SPRITE_BASE + 61
SPRITE_PLAYER_SAM_FALL_L      = SPRITE_BASE + 62
SPRITE_PLAYER_SAM_POWER_R     = SPRITE_BASE + 63
SPRITE_PLAYER_SAM_POWER_L     = SPRITE_BASE + 64

SPRITE_GHOST_SKELETON_1       = SPRITE_BASE + 65
SPRITE_GHOST_SKELETON_2       = SPRITE_BASE + 66
SPRITE_GHOST_SKELETON_3       = SPRITE_BASE + 67

SPRITE_JUMPING_TOAD_1         = SPRITE_BASE + 68
SPRITE_JUMPING_TOAD_2         = SPRITE_BASE + 69
SPRITE_JUMPING_TOAD_3         = SPRITE_BASE + 70
SPRITE_JUMPING_TOAD_4         = SPRITE_BASE + 71

SPRITE_EXPLOSION_1            = SPRITE_BASE + 72
SPRITE_EXPLOSION_2            = SPRITE_BASE + 73
SPRITE_EXPLOSION_3            = SPRITE_BASE + 74
SPRITE_EXPLOSION_4            = SPRITE_BASE + 75
SPRITE_EXPLOSION_5            = SPRITE_BASE + 76
SPRITE_EXPLOSION_6            = SPRITE_BASE + 77
SPRITE_EXPLOSION_7            = SPRITE_BASE + 78
SPRITE_EXPLOSION_8            = SPRITE_BASE + 79

SPRITE_WOLF_WALK_R_1          = SPRITE_BASE + 80
SPRITE_WOLF_WALK_R_2          = SPRITE_BASE + 81
SPRITE_WOLF_WALK_R_3          = SPRITE_BASE + 82
SPRITE_WOLF_JUMP_R            = SPRITE_BASE + 83

SPRITE_FLOATING_GHOST_1       = SPRITE_BASE + 84
SPRITE_FLOATING_GHOST_2       = SPRITE_BASE + 85
SPRITE_FLOATING_GHOST_3       = SPRITE_BASE + 86

SPRITE_SLIME_R_1              = SPRITE_BASE + 88
SPRITE_SLIME_L_1              = SPRITE_BASE + 89
SPRITE_SLIME_R_2              = SPRITE_BASE + 90
SPRITE_SLIME_L_2              = SPRITE_BASE + 91
SPRITE_SLIME_R_3              = SPRITE_BASE + 92
SPRITE_SLIME_L_3              = SPRITE_BASE + 93
SPRITE_SLIME_R_4              = SPRITE_BASE + 94
SPRITE_SLIME_L_4              = SPRITE_BASE + 95

SPRITE_FRANKIE_RISE_R_1       = SPRITE_BASE + 96
SPRITE_FRANKIE_RISE_L_1       = SPRITE_BASE + 97
SPRITE_FRANKIE_RISE_R_2       = SPRITE_BASE + 98
SPRITE_FRANKIE_RISE_L_2       = SPRITE_BASE + 99
SPRITE_FRANKIE_RISE_R_3       = SPRITE_BASE + 100
SPRITE_FRANKIE_RISE_L_3       = SPRITE_BASE + 101
SPRITE_FRANKIE_JUMP_R         = SPRITE_BASE + 102
SPRITE_FRANKIE_JUMP_L         = SPRITE_BASE + 103
SPRITE_FRANKIE_WALK_R_1       = SPRITE_BASE + 104
SPRITE_FRANKIE_WALK_L_1       = SPRITE_BASE + 105
SPRITE_FRANKIE_WALK_R_2       = SPRITE_BASE + 106
SPRITE_FRANKIE_WALK_L_2       = SPRITE_BASE + 107
SPRITE_FRANKIE_WALK_R_3       = SPRITE_BASE + 108
SPRITE_FRANKIE_WALK_L_3       = SPRITE_BASE + 109
SPRITE_FRANKIE_WALK_R_4       = SPRITE_BASE + 110
SPRITE_FRANKIE_WALK_L_4       = SPRITE_BASE + 111

SPRITE_EYE_1                  = SPRITE_BASE + 112
SPRITE_EYE_2                  = SPRITE_BASE + 113
SPRITE_EYE_3                  = SPRITE_BASE + 114
SPRITE_EYE_4                  = SPRITE_BASE + 115

SPRITE_HAND_1                 = SPRITE_BASE + 116
SPRITE_HAND_2                 = SPRITE_BASE + 117
SPRITE_HAND_3                 = SPRITE_BASE + 118
SPRITE_HAND_4                 = SPRITE_BASE + 119
SPRITE_HAND_5                 = SPRITE_BASE + 120
SPRITE_HAND_6                 = SPRITE_BASE + 121

SPRITE_DEVIL_WALK_R_1         = SPRITE_BASE + 122
SPRITE_DEVIL_WALK_L_1         = SPRITE_BASE + 123
SPRITE_DEVIL_WALK_R_2         = SPRITE_BASE + 124
SPRITE_DEVIL_WALK_L_2         = SPRITE_BASE + 125
SPRITE_DEVIL_WALK_R_3         = SPRITE_BASE + 126
SPRITE_DEVIL_WALK_L_3         = SPRITE_BASE + 127

SPRITE_IMPALA_1               = SPRITE_BASE + 128
SPRITE_IMPALA_2               = SPRITE_BASE + 129
SPRITE_IMPALA_3               = SPRITE_BASE + 130
SPRITE_DRIVERS                = SPRITE_BASE + 131
SPRITE_DEBRIS_1               = SPRITE_BASE + 132
SPRITE_DEBRIS_2               = SPRITE_BASE + 133

SPRITE_SPAWN_1                = SPRITE_BASE + 134
SPRITE_SPAWN_2                = SPRITE_BASE + 135

SPRITE_BOSS_FOOT_R            = SPRITE_BASE + 136
SPRITE_BOSS_FOOT_L            = SPRITE_BASE + 137
SPRITE_BOSS_ARM_R             = SPRITE_BASE + 138
SPRITE_BOSS_ARM_L             = SPRITE_BASE + 139
SPRITE_BOSS_TORSO_R           = SPRITE_BASE + 140
SPRITE_BOSS_TORSO_L           = SPRITE_BASE + 141
SPRITE_BOSS_HEAD              = SPRITE_BASE + 142
SPRITE_BOSS_HEAD_HURT         = SPRITE_BASE + 143

SPRITE_G                      = SPRITE_BASE + 144
SPRITE_E                      = SPRITE_BASE + 145
SPRITE_T                      = SPRITE_BASE + 146
SPRITE_R                      = SPRITE_BASE + 147
SPRITE_A                      = SPRITE_BASE + 148
SPRITE_D                      = SPRITE_BASE + 149
SPRITE_Y                      = SPRITE_BASE + 150
SPRITE_M                      = SPRITE_BASE + 151
SPRITE_O                      = SPRITE_BASE + 152
SPRITE_V                      = SPRITE_BASE + 153

SPRITE_IMPALA_BACK_1          = SPRITE_BASE + 154
SPRITE_IMPALA_BACK_2          = SPRITE_BASE + 155
SPRITE_IMPALA_BACK_SMALL      = SPRITE_BASE + 156

;offset from calculated char pos to true sprite pos
SPRITE_CENTER_OFFSET_X  = 8
SPRITE_CENTER_OFFSET_Y  = 11

;entries of jump table
JUMP_TABLE_SIZE         = 10
TOAD_JUMP_TABLE_SIZE    = 12

;entries of fall table
FALL_TABLE_SIZE         = 10

;bytes (digits) per score entry
HIGHSCORE_ENTRY_COUNT   = 8
HIGHSCORE_SCORE_SIZE    = 8
HIGHSCORE_NAME_SIZE     = 12


;level data constants
LD_END                  = 0
LD_LINE_H               = 1     ;data contains x,y,width,char,color
LD_LINE_V               = 2     ;data contains x,y,height,char,color
LD_OBJECT               = 3     ;data contains x,y,type
LD_AREA                 = 4     ;data contains x,y,width,height,char,color
LD_LINE_H_ALT           = 5     ;data contains x,y,width,char,color
LD_LINE_V_ALT           = 6     ;data contains x,y,height,char,color
LD_QUAD                 = 7     ;data contains x,y,quad_id
LD_SPAWN_SPOT           = 8     ;data contains x,y,type,count
LD_ELEMENT              = 9     ;single element block
LD_ELEMENT_LINE_H       = 10    ;element block line H
LD_ELEMENT_LINE_V       = 11    ;element block line V
LD_ELEMENT_AREA         = 12    ;element block area
LD_LEVEL_CONFIG         = 13    ;level config byte

;object type constants
TYPE_INVALID            = 0
TYPE_PLAYER_DEAN        = 1
TYPE_BAT_DIAG           = 2
TYPE_BAT_UD             = 3
TYPE_BAT_ATTACKING      = 4
TYPE_MUMMY              = 5
TYPE_ZOMBIE             = 6
TYPE_BAT_VANISH         = 7
TYPE_SPIDER             = 8
TYPE_EXPLOSION          = 9
TYPE_PLAYER_SAM         = 10
TYPE_WOLFMAN            = 11
TYPE_GHOST_SKELETON     = 12
TYPE_JUMPING_TOAD       = 13
TYPE_EYE                = 14
TYPE_FLOATING_GHOST     = 15
TYPE_FLY                = 16
TYPE_SLIME              = 17
TYPE_FRANKENSTEIN       = 18
TYPE_HAND               = 19
TYPE_DEVIL              = 20
TYPE_IMPALA_1           = 21
TYPE_IMPALA_2           = 22
TYPE_IMPALA_3           = 23
TYPE_IMPALA_DRIVER      = 24
TYPE_IMPALA_DEBRIS      = 25
TYPE_SPAWN              = 26
TYPE_BOSS               = 27
TYPE_BOSS2              = 28
TYPE_BOSS3              = 29
TYPE_GETREADY           = 30
TYPE_BOSS4              = 31
TYPE_BOSS5              = 32
TYPE_BOSS6              = 33
TYPE_BOSS7              = 34
TYPE_BOSS_PART          = 35

OBJECT_HEIGHT           = 8 * 2

;item type constants
ITEM_BULLET             = 0
ITEM_HEALTH             = 1
ITEM_FAST_RELOAD        = 2
ITEM_INVINCIBLE         = 3
ITEM_FORCE_RANGE        = 4
ITEM_SUPER_BULLET       = 5
ITEM_DEMON_BLOOD        = 6

ITEM_MAX                = 7
ITEM_NONE               = 255

;number of possible items
ITEM_COUNT              = 8

;number of possible spawn spots
SPAWN_SPOT_COUNT        = 10

;game mode types
GT_SINGLE_PLAYER_DEAN   = 0
GT_SINGLE_PLAYER_SAM    = 1
GT_COOP                 = 2

BEAM_TYPE_DARK          = 0
BEAM_TYPE_MEDIUM        = 1
BEAM_TYPE_LIGHT         = 2
BEAM_TYPE_LIGHT2        = 3

;this creates a basic start
*=$0801

          ;SYS 2064
          !byte $0C,$08,$0A,$00,$9E,$20,$32,$30,$36,$34,$00,$00,$00,$00,$00

          ;init sprite registers
          ;no visible sprites
          lda #0
          sta VIC_SPRITE_ENABLE
          
          ;set charset
          lda #$3e
          sta VIC_MEMORY_CONTROL

          ;VIC bank
          lda CIA_PRA
          and #$fd
          sta CIA_PRA

          ;check last used drive (or set to default)
          lda $ba
          sta DRIVE_NUMBER
          bne .NoDefaultDriveNeeded
          
          lda #8
          sta DRIVE_NUMBER
.NoDefaultDriveNeeded          
          jsr LoadScores

          ;----------------------------------
          ;copy charset and sprites to target          
          ;----------------------------------
          
          ;block interrupts 
          ;since we turn ROMs off this would result in crashes if we didn't
          sei
          
          ;only RAM
          ;to copy under the IO rom
          lda #%00110000
          sta PROCESSOR_PORT
          
!ifndef CRUNCHED {          
          ;take source address from CHARSET
          LDA #<CHARSET
          STA ZEROPAGE_POINTER_1
          LDA #>CHARSET
          STA ZEROPAGE_POINTER_1 + 1
          
          ;now copy
          jsr CopyCharSet
          
          ;take source address from CHARSET 2
          LDA #<CHARSET_2
          STA ZEROPAGE_POINTER_1
          LDA #>CHARSET_2
          STA ZEROPAGE_POINTER_1 + 1
          
          ;now copy
          jsr CopyCharSet2
          
          ;take source address from SPRITES
          lda #<SPRITES
          sta ZEROPAGE_POINTER_1
          lda #>SPRITES
          sta ZEROPAGE_POINTER_1 + 1
          
          jsr CopySprites
}

          ;store water tile bytes
          ldx #0
          
          lda $F800 + 111 * 8
          sta PARAM1
          lda $F800 + 111 * 8 + 1
          sta PARAM2
          
-          
          lda PARAM1
          lsr
          ror PARAM1
          lda PARAM1
          sta ANIM_TILE_BYTES,x

          lda PARAM2
          lsr
          ror PARAM2
          lda PARAM2
          sta ANIM_TILE_BYTES + 8,x

          inx
          cpx #8
          bne -
          
          ldx #0
-          
          lda $F800 + 143 * 8,x
          sta ANIM_TILE2_BYTES,x
          sta ANIM_TILE2_BYTES + 8,x
          
          inx
          dey
          cpx #8
          bne -
          
          
          
          ;restore ROMs
          ;lda PARAM1
          lda #$36
          sta PROCESSOR_PORT
          
          cli
          
          ;background black
          lda #0
          sta VIC_BORDER_COLOR
          sta VIC_BACKGROUND_COLOR
          
          ;set charset multi colors
          lda #12
          sta VIC_CHARSET_MULTICOLOR_1
          lda #8
          sta VIC_CHARSET_MULTICOLOR_2
          ;enable multi color charset
          lda VIC_CONTROL
          ora #$10
          sta VIC_CONTROL

          ;set sprite flags
          lda #0
          sta VIC_SPRITE_X_EXTEND
          sta VIC_SPRITE_ENABLE
          sta VIC_SPRITE_MULTICOLOR
          
          ;sprite multi colors
          lda #11
          sta VIC_SPRITE_MULTICOLOR_1
          lda #1
          sta VIC_SPRITE_MULTICOLOR_2
          
          ;bitmap multicolor          
          lda #$18
          sta VIC_CONTROL

          
;------------------------------------------------------------
;the title screen game loop
;------------------------------------------------------------
!zone TitleScreen
TitleScreen
          jsr InitTitleIRQ
          
TitleScreenWithoutIRQ          
!ifdef MUSIC_PLAYING{
          ;initialise music player
          ldx #0
          ldy #0
          lda SFX_MODE
          bne +
          lda #MUSIC_TITLE_TUNE
          jsr MUSIC_PLAYER
+          
}  
          
          ldx #0
          stx BUTTON_PRESSED
          stx BUTTON_RELEASED 
          stx VIC_SPRITE_ENABLE
          
          ;clear screen
          lda #32
          ldy #1
          jsr ClearScreen
          
          ;display start text 
          lda #<TEXT_FIRE_TO_START
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_FIRE_TO_START
          sta ZEROPAGE_POINTER_1 + 1
          lda #11
          sta PARAM1
          lda #23
          sta PARAM2
          jsr DisplayText

          ldx GAME_MODE
          lda TEXT_GAME_MODE_LO,x
          sta ZEROPAGE_POINTER_1
          lda TEXT_GAME_MODE_HI,x
          sta ZEROPAGE_POINTER_1 + 1
          lda #11
          sta PARAM1
          lda #21
          sta PARAM2
          jsr DisplayText
          
          jsr DisplaySfxMode
          
          ;display high scores
          ;x,y pos of name
          lda #6
          sta PARAM1
          lda #10
          sta PARAM2

          lda #<HIGHSCORE_NAME
          sta ZEROPAGE_POINTER_1
          lda #>HIGHSCORE_NAME
          sta ZEROPAGE_POINTER_1 + 1

          jsr DisplayText

          ;x,y pos of score          
          lda #25
          sta PARAM1
          lda #10
          sta PARAM2

          lda #<HIGHSCORE_SCORE
          sta ZEROPAGE_POINTER_1
          lda #>HIGHSCORE_SCORE
          sta ZEROPAGE_POINTER_1 + 1

          jsr DisplayText
          
          ldx #0
.FillColor      
          lda TITLE_LOGO_COLORRAM,x
          sta SCREEN_COLOR,x
          inx
          bne .FillColor

.FillColor2
          lda TITLE_LOGO_COLORRAM + 256,x
          sta SCREEN_COLOR + 256,x
          inx
          cpx #( 320 - 256 )
          bne .FillColor2
          
          ;init color fade counter          
          lda #0
          sta COLOR_FADE_POS
          
.TitleLoop
          jsr WaitFrame

          ;apply color fade
          inc COLOR_FADE_POS
          lda COLOR_FADE_POS
          and #( COLOR_FADE_LENGTH - 1 )
          sta COLOR_FADE_POS
          
          lda #0
          sta PARAM1

.FadeLine        
          lda PARAM1
          clc
          adc #10
          tay
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          clc
          adc #( ( ( SCREEN_COLOR - SCREEN_CHAR ) & $ff00 ) >> 8 )
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy #6
          lda COLOR_FADE_POS
          clc
          adc PARAM1
          and #( COLOR_FADE_LENGTH - 1 )
          tax
          
.FadeColorNextChar          
          lda COLOR_FADE_1,x
          sta (ZEROPAGE_POINTER_1),y
          
          iny
          cpy #35
          beq .FadeColorLineDone
          inx
          cpx #COLOR_FADE_LENGTH
          bne .FadeColorNextChar
          ldx #0
          jmp .FadeColorNextChar
          
.FadeColorLineDone          
          inc PARAM1
          lda PARAM1
          cmp #8
          bne .FadeLine

          ;switch through music/sfx mode
          lda #$04
          bit JOYSTICK_PORT_II
          bne .NotLeftPressed
          
          lda LEFT_RELEASED
          beq .LeftPressed
          
          lda SFX_MODE
          eor #$01
          sta SFX_MODE
          jsr DisplaySfxMode
          
          lda SFX_MODE
          beq +
          
          lda #MUSIC_PICKUP
          jmp ++
+          
          lda #MUSIC_TITLE_TUNE
++          
          jsr MUSIC_PLAYER
          
          
          lda #0
          jmp .LeftPressed

.NotLeftPressed          
          lda #1
.LeftPressed          
          sta LEFT_RELEASED

          lda #$08
          bit JOYSTICK_PORT_II
          bne .NotRightPressed
          
          lda RIGHT_RELEASED
          beq .RightPressed
          
          lda SFX_MODE
          eor #$01
          sta SFX_MODE
          jsr DisplaySfxMode
          
          lda SFX_MODE
          beq +
          
          lda #MUSIC_PICKUP
          jmp ++
+          
          lda #MUSIC_TITLE_TUNE
++          
          jsr MUSIC_PLAYER
          
          lda #0
          jmp .RightPressed

.NotRightPressed          
          lda #1
.RightPressed          
          sta RIGHT_RELEASED


          lda #$01
          bit JOYSTICK_PORT_II
          bne .NotUpPressed
          
          lda UP_RELEASED
          beq .UpPressed
          
          inc GAME_MODE
          lda GAME_MODE
          cmp #3
          bne .NoGameModeWrap
          
          lda #0
          sta GAME_MODE
.NoGameModeWrap
          ;redisplay game mode
          ldx GAME_MODE
          lda TEXT_GAME_MODE_LO,x
          sta ZEROPAGE_POINTER_1
          lda TEXT_GAME_MODE_HI,x
          sta ZEROPAGE_POINTER_1 + 1
          lda #11
          sta PARAM1
          lda #21
          sta PARAM2
          jsr DisplayText
          
          lda #0
          jmp .UpPressed

.NotUpPressed          
          lda #1
.UpPressed          
          sta UP_RELEASED
          
          lda #$02
          bit JOYSTICK_PORT_II
          bne .NotDownPressed
          
          lda DOWN_RELEASED
          beq .DownPressed
          
          
          lda GAME_MODE
          bne .NoGameModeWrap2
          lda #3
          sta GAME_MODE
.NoGameModeWrap2          
          dec GAME_MODE
          
          ;redisplay game mode
          ldx GAME_MODE
          lda TEXT_GAME_MODE_LO,x
          sta ZEROPAGE_POINTER_1
          lda TEXT_GAME_MODE_HI,x
          sta ZEROPAGE_POINTER_1 + 1
          lda #11
          sta PARAM1
          lda #21
          sta PARAM2
          jsr DisplayText
          
          lda #0
          jmp .DownPressed

.NotDownPressed          
          lda #1
.DownPressed          
          sta DOWN_RELEASED

          lda #$10
          bit JOYSTICK_PORT_II
          bne .ButtonNotPressed
          
          ;button pushed
          lda BUTTON_RELEASED
          bne .Restart
          
          jmp .TitleLoop
          

.ButtonNotPressed
          lda #1
          sta BUTTON_RELEASED
          jmp .TitleLoop
        
.Restart
          jsr WaitFrame
          jsr SetGameIRQ
          
!ifdef MUSIC_PLAYING{
          ;initialise music player
          lda SFX_MODE
          bne +
          lda #MUSIC_GET_READY_GAME_OVER_TUNE
          jsr MUSIC_PLAYER
+
}          

          lda #0
          sta VIC_SPRITE_EXPAND_X
          sta VIC_SPRITE_EXPAND_Y
          sta CHAPTER
          jsr ShowChapter

          ;game start values
          lda #3
          sta PLAYER_LIVES
          sta PLAYER_LIVES + 1
          lda #0
          sta PLAYER_RELOAD_SPEED
          sta SUPER_BULLET
          sta DEMON_BLOOD
          lda #5
          sta PLAYER_FORCE_RANGE
          lda #2
          sta PLAYER_SHELLS
          sta PLAYER_SHELLS_MAX
          lda #48
          sta PLAYER_SCORE
          sta PLAYER_SCORE + 1
          sta PLAYER_SCORE + 2
          sta PLAYER_SCORE + 3
          sta PLAYER_SCORE + 4
          sta PLAYER_SCORE + 5
          sta PLAYER_SCORE + 6
          sta PLAYER_SCORE + 7
          
          ;setup level
          lda #$0b
          sta VIC_CONTROL_MODE
          
          jsr StartLevel
          
          lda #START_LEVEL
          sta LEVEL_NR
          jsr BuildScreen
          
          jsr CopyLevelToBackBuffer
          
          lda #40
          sta LEVEL_START_DELAY
          lda #0
          sta SPRITE_JUMP_POS
          
          jsr DisplayGetReady
          
DisplayScoreDisplay
          ;score display according to game mode
          lda GAME_MODE
          cmp #GT_SINGLE_PLAYER_DEAN
          beq .DeanOnly
          cmp #GT_SINGLE_PLAYER_SAM
          beq .SamOnly

          lda #<TEXT_DISPLAY_DEAN_AND_SAM
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_DISPLAY_DEAN_AND_SAM
          sta ZEROPAGE_POINTER_1 + 1
          
          ldx #0
          jsr DisplayLiveNumber
          ldx #1
          jsr DisplayLiveNumber
          jmp .DisplayDisplay

.DeanOnly        
          lda #0
          sta PLAYER_LIVES + 1

          lda #<TEXT_DISPLAY_DEAN_ONLY
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_DISPLAY_DEAN_ONLY
          sta ZEROPAGE_POINTER_1 + 1
          ldx #0
          jsr DisplayLiveNumber
          jmp .DisplayDisplay

.SamOnly        
          lda #0
          sta PLAYER_LIVES
          
          lda #<TEXT_DISPLAY_SAM_ONLY
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_DISPLAY_SAM_ONLY
          sta ZEROPAGE_POINTER_1 + 1
          ldx #1
          jsr DisplayLiveNumber
          jmp .DisplayDisplay

.DisplayDisplay
          lda #0
          sta PARAM1
          lda #23
          sta PARAM2
          jsr DisplayText
          jsr DisplayLevelNumber
          
          ;settings per game mode
          ;default ports
          lda #0
          sta PLAYER_JOYSTICK_PORT
          lda #1
          sta PLAYER_JOYSTICK_PORT + 1
          
          ;set two player mode active flag
          lda #0
          sta TWO_PLAYER_MODE_ACTIVE
          lda GAME_MODE
          cmp #GT_COOP
          bne +
          inc TWO_PLAYER_MODE_ACTIVE
+          
          lda GAME_MODE
          cmp #GT_SINGLE_PLAYER_SAM
          bne .NoPortChange
          lda #0
          sta PLAYER_JOYSTICK_PORT + 1
.NoPortChange          
          
          ;full shells
          ldy #0
.RefillShellImage          
          lda #2
          sta SCREEN_COLOR + 23 * 40 + 19,y
          lda #7
          sta SCREEN_COLOR + 24 * 40 + 19,y
          
          iny
          cpy PLAYER_SHELLS_MAX
          bne .RefillShellImage
          
!ifdef MUSIC_PLAYING{
          ;initialise music player
          lda SFX_MODE
          bne +
          lda #MUSIC_IN_GAME_TUNE
          jsr MUSIC_PLAYER
+
}          
          lda #$1b
          sta VIC_CONTROL_MODE

          jmp GameLoop


!zone DisplaySfxMode
DisplaySfxMode
          lda SFX_MODE
          bne +
          
          lda #<TEXT_MUSIC
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_MUSIC
          jmp .DisplaySfxMode
+          
          lda #<TEXT_SFX
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_SFX

.DisplaySfxMode
          sta ZEROPAGE_POINTER_1 + 1
          lda #34
          sta PARAM1
          lda #24
          sta PARAM2
          jmp DisplayText


;------------------------------------------------------------
;story pages
;------------------------------------------------------------
!zone ShowChapterEnd
ShowChapterEnd
          ;clear screen
          lda #32
          ldy #1
          jsr ClearScreen
          jsr ResetObjects
          
          ldy CHAPTER
          lda CHAPTER_END_PAGES_LO,y
          sta ZEROPAGE_POINTER_1
          lda CHAPTER_END_PAGES_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          lda #0
          sta VIC_SPRITE_ENABLE
          sta VIC_SPRITE_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta MOVE_STONES
          
          lda #1
          sta PARAM1
          lda #1
          sta PARAM2
          jsr DisplayText
          
          jmp StoryLoop

!zone ShowChapter
ShowChapter
          ;clear screen
          lda #32
          ldy #1
          jsr ClearScreen
          jsr ResetObjects
          
          ldy CHAPTER
          lda CHAPTER_PAGES_LO,y
          sta ZEROPAGE_POINTER_1
          lda CHAPTER_PAGES_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          lda #0
          sta VIC_SPRITE_ENABLE
          sta VIC_SPRITE_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_EXPAND_X
          sta VIC_SPRITE_EXPAND_Y
          
          lda #1
          sta PARAM1
          lda #1
          sta PARAM2
          jsr DisplayText
          
          lda #41
          sta PARAM1
          lda #20
          sta PARAM2
          lda #TYPE_IMPALA_1
          sta PARAM3
          jsr FindEmptySpriteSlot
          jsr SpawnObject

          lda #44
          sta PARAM1
          lda #TYPE_IMPALA_2
          sta PARAM3
          jsr FindEmptySpriteSlot
          jsr SpawnObject

          lda #47
          sta PARAM1
          lda #TYPE_IMPALA_3
          sta PARAM3
          jsr FindEmptySpriteSlot
          jsr SpawnObject

          lda #48
          sta PARAM1
          lda #TYPE_IMPALA_DEBRIS
          sta PARAM3
          jsr FindEmptySpriteSlot
          jsr SpawnObject


          lda #12
          sta VIC_SPRITE_MULTICOLOR_1
          lda #11
          sta VIC_SPRITE_MULTICOLOR_2
          
          lda #0
          sta BUTTON_RELEASED
          sta MOVE_STONE_POS_BACK
          sta MOVE_STONE_POS_FRONT
          lda #1
          sta MOVE_STONES
          
StoryLoop          
          jsr WaitFrame
          
STONE_BACK_DISTANCE = 20
STONE_FRONT_DISTANCE = 24

          lda MOVE_STONES
          bne +
          jmp .NoStones
+          
          ;background
          ldy #19
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          ldy MOVE_STONE_POS_BACK
-          
          lda #32
          sta (ZEROPAGE_POINTER_1),y
          tya
          clc
          adc #STONE_BACK_DISTANCE
          tay
          cpy #39
          bcc -
          
          lda MOVE_STONE_POS_BACK
          clc
          adc #1
-          
          cmp #STONE_BACK_DISTANCE
          bcc +
          sec
          sbc #STONE_BACK_DISTANCE
          jmp -
          
+          
          sta MOVE_STONE_POS_BACK
          
          ldy MOVE_STONE_POS_BACK
-          
          lda #149
          sta (ZEROPAGE_POINTER_1),y
          lda #8
          sta (ZEROPAGE_POINTER_2),y
          tya
          clc
          adc #STONE_BACK_DISTANCE
          tay
          cpy #39
          bcc -

          ;foreground
          ldy #22
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          ldy MOVE_STONE_POS_FRONT
-          
          lda #32
          sta (ZEROPAGE_POINTER_1),y
          tya
          clc
          adc #STONE_FRONT_DISTANCE
          tay
          cpy #39
          bcc -
          
          lda MOVE_STONE_POS_FRONT
          clc
          adc #2
-          
          cmp #STONE_FRONT_DISTANCE
          bcc +
          sec
          sbc #STONE_FRONT_DISTANCE
          jmp -
+          
          sta MOVE_STONE_POS_FRONT
          
          ldy MOVE_STONE_POS_FRONT
-          
          lda #148
          sta (ZEROPAGE_POINTER_1),y
          lda #9
          sta (ZEROPAGE_POINTER_2),y
          tya
          clc
          adc #STONE_FRONT_DISTANCE
          tay
          cpy #39
          bcc -

         
.NoStones         
          jsr ObjectControl
          
          lda #$10
          bit JOYSTICK_PORT_II
          bne .ButtonNotPressed
          
          ;button pushed
          lda BUTTON_RELEASED
          bne +
          jmp StoryLoop
          
+          
          lda #0
          sta VIC_SPRITE_ENABLE
          lda #11
          sta VIC_SPRITE_MULTICOLOR_1
          lda #1
          sta VIC_SPRITE_MULTICOLOR_2
          rts
          
.ButtonNotPressed
          lda #1
          sta BUTTON_RELEASED
          jmp StoryLoop

;------------------------------------------------------------
;the main game loop
;------------------------------------------------------------

GameLoop  
          ;lda #0
          ;sta 53280
          
          ;lda NUMBER_ENEMIES_ALIVE
          ;lda NUMBER_SPAWN_SPOTS_ALIVE
          ;lda #0
          ;sta VIC_BORDER_COLOR

          
          ;lda NUMBER_SPAWNS_ALIVE
          ;sta VIC_BACKGROUND_COLOR
          
          ;lda SPRITE_HELD
          ;sta VIC_BORDER_COLOR
          ;lda BOSS_HELD
          ;sta VIC_BACKGROUND_COLOR

          jsr WaitFrame
          
          ;lda #1
          ;sta VIC_BORDER_COLOR

          JSR $FFE4 ;GETIN
          BEQ .NOCHEAT

          CMP #49
          bne .NOCHEAT
          
          ;jsr StartLevel
          jsr GoToNextLevel
!if 0 {          
          ;jump to next level
          lda #$0b
          sta VIC_CONTROL_MODE
          
          jsr StartLevel
          
          inc LEVEL_NR
          jsr BuildScreen
          
          jsr CopyLevelToBackBuffer
          jsr DisplayGetReady
          lda #$1b
          sta VIC_CONTROL_MODE
}
          
.NOCHEAT

          ;animate water tile
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne +
          
          inc ANIM_POS
          lda ANIM_POS
          and #$07
          tay
          
          lda ANIM_TILE_BYTES,y
          sta $F800 + 111 * 8
          sta $C000 + 111 * 8
          lda ANIM_TILE_BYTES + 8,y
          sta $F800 + 111 * 8 + 1
          sta $C000 + 111 * 8 + 1

          sty PARAM1
          lda #7
          sec
          sbc PARAM1
          tay
          ldx #0
-          
          lda ANIM_TILE2_BYTES,y
          sta $F800 + 143 * 8,x
          sta $C000 + 143 * 8,x
          
          inx
          iny
          cpx #8
          bne -
          
          
+


          ;lda #1
          ;sta VIC_BORDER_COLOR
          lda LEVEL_START_DELAY
          beq .GameIsOn
          dec LEVEL_START_DELAY
          beq .RemoveGetReady
          jmp GameLoop

.GameIsOn
          ;lda #0
          ;sta 53280
          jsr GameFlowControl
          lda LEVEL_START_DELAY
          bne GameLoop

          ;inc 53280
          jsr ObjectControl
 
          ;shot flash
          lda PLAYER_RELOAD_FLASH_POS
          beq +
          
          dec PLAYER_RELOAD_FLASH_POS
          lda VIC_BACKGROUND_COLOR
          and #$0f
          tay
          lda COLOR_FADE_OUT_TABLE,y
          sta VIC_BACKGROUND_COLOR
          
+          
          ;check for Dean
          lda GAME_MODE
          cmp #GT_SINGLE_PLAYER_SAM
          beq .NoCollisionCheckForDean
          
          ;inc 53280
          ldx #0
          jsr CheckCollisions
          
.NoCollisionCheckForDean          
          ;check for Sam needed?
          lda GAME_MODE
          cmp #GT_SINGLE_PLAYER_DEAN
          beq .NoCollisionCheckForSam

          ;check for Sam
          ldx #1
          jsr CheckCollisions
          
.NoCollisionCheckForSam
          jmp GameLoop          
          
.RemoveGetReady          
          ;remove restart message
          lda SPRITE_ENABLED
          sta VIC_SPRITE_ENABLE
          lda SPRITE_MULTICOLOR
          sta VIC_SPRITE_MULTICOLOR
          lda SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND


          lda SPRITE_POS_Y + 1
          sta VIC_SPRITE_Y_POS + 2

          
          
          ldx #0
          stx VIC_SPRITE_EXPAND_X
          stx VIC_SPRITE_EXPAND_Y
-          
          txa
          asl
          tay

          lda SPRITE_POS_X,x
          sta VIC_SPRITE_X_POS,y
          lda SPRITE_POS_Y,x
          sta VIC_SPRITE_Y_POS,y

          lda SPRITE_COLOR,x
          sta VIC_SPRITE_COLOR,x

          ldy SPRITE_ACTIVE,x
          cpy #0
          bne +
          
--          
          inx
          cpx #8
          bne -
          jmp GameLoop
          
+
          lda TYPE_START_SPRITE,y
          sta SPRITE_POINTER_BASE,x
          jmp --
          
          ldy #11
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_2 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_BACK_CHAR - SCREEN_BACK_COLOR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_4 + 1
          
          ldy #14
          
.ReplaceChar          
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          
          iny
          cpy #10
          bne .ReplaceChar
          
          tya
          clc
          adc #30
          tay

.ReplaceChar2ndRow          
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          
          iny
          cpy #10
          bne .ReplaceChar2ndRow
          jmp GameLoop

;-----------------------------------
;init IRQ
;-----------------------------------
!zone InitTitleIRQ
InitTitleIRQ
         
          ;wait for exact frame so we don't end up on the wrong
          ;side of the raster
          jsr WaitFrame
          sei

          lda #$36 ; make sure that IO regs at $dxxx are visible
          sta PROCESSOR_PORT

          lda #$7f ;disable cia #1 generating timer irqs
          sta $dc0d ;which are used by the system to flash cursor, etc

          lda #$01 ;tell VIC we want him generate raster irqs
          sta $d01a

          lda #$10 ;nr of rasterline we want our irq occur at
          sta $d012

          lda #$1b ;MSB of d011 is the MSB of the requested rasterline
          sta $d011 ;as rastercounter goes from 0-312

          ;set irq vector to point to our routine
          lda #<IrqSetBitmapMode
          sta $0314
          lda #>IrqSetBitmapMode
          sta $0315

          ;acknowledge any pending cia timer interrupts
          ;this is just so we're 100% safe
          lda $dc0d 
          lda $dd0d 

          cli
          rts


;-----------------------------------
;init IRQ
;-----------------------------------
!zone SetGameIRQ
SetGameIRQ
         
          ;wait for exact frame so we don't end up on the wrong
          ;side of the raster
          jsr WaitFrame
          sei

          lda #$36 ; make sure that IO regs at $dxxx are visible
          sta PROCESSOR_PORT

          lda #$ff ;nr of rasterline we want our irq occur at
          sta $d012

          lda #$1b ;MSB of d011 is the MSB of the requested rasterline
          sta $d011 ;as rastercounter goes from 0-312

          ;set irq vector to point to our routine
          lda #<IrqInGame
          sta $0314
          lda #>IrqInGame
          sta $0315
 
          ;acknowledge any pending cia timer interrupts
          ;this is just so we're 100% safe
          lda $dc0d 
          lda $dd0d 

          cli
          rts
 

;-----------------------------------
;IRQ Title - set bitmap mode
;-----------------------------------
!zone IrqSetBitmapMode
IrqSetBitmapMode
          ;acknowledge VIC irq
          lda $d019
          sta $d019

          ;install top part
          lda #<IrqSetTextMode
          sta $0314
          lda #>IrqSetTextMode
          sta $0315

          ;nr of rasterline we want our irq occur at
          lda #$70 
          sta $d012

          ;bitmap modus an
          lda #$3b
          sta $D011 

          ;set VIC to bank 0
          lda $DD00
          and #$fc
          ora #$03
          sta $dd00

          ;bitmap to lower half, screen char pos at 3 * 1024 ( + 16384)
          lda #%10111000
          sta VIC_MEMORY_CONTROL

          JMP $ea31


;-----------------------------------
;IRQ Title - set bitmap mode
;-----------------------------------
!zone IrqInGame
IrqInGame
          

!ifdef MUSIC_PLAYING{
          lda UPDATE_MUSIC
          beq +
          ;play music
          jsr MUSIC_PLAYER + 3
+          
}

          ;acknowledge VIC irq
          lda $d019
          sta $d019
          
          JMP $ea31


;-----------------------------------
;IRQ Title - set text mode
;-----------------------------------
!zone IrqSetTextMode
IrqSetTextMode

          ;acknowledge VIC irq
          lda $d019
          sta $d019

          ;install next state
          lda #<IrqSetBitmapMode
          sta $0314
          lda #>IrqSetBitmapMode
          sta $0315

          ;nr of rasterline we want our irq occur at
          lda #$10
          sta $d012

          ;disable bitmap mode
          lda #$1b
          sta $D011 

          ;set VIC to bank 3
          lda $DD00
          and #$fc
          sta $dd00

          ;bitmap to lower half, screen char pos at 3 * 1024 ( + 16384)
          lda #%00111110
          sta VIC_MEMORY_CONTROL
    
!ifdef MUSIC_PLAYING{
          lda UPDATE_MUSIC
          beq +
          jsr MUSIC_PLAYER + 3
+          
}
          jmp $ea81


;------------------------------------------------------------
;controls the game flow
;------------------------------------------------------------
!zone GameFlowControl
GameFlowControl

          ;------------------------
          ;let items dissolve
          ldx #0
.ItemLoop
          lda ITEM_ACTIVE,x
          cmp #ITEM_NONE
          beq .NextItem
          
          inc ITEM_TIME,x
          bne .NextItem
          
          ;remove item 
          lda #ITEM_NONE
          sta ITEM_ACTIVE,x
          txa
          tay
          jsr RemoveItemImage
          
.NextItem
          inx
          cpx #ITEM_COUNT
          bne .ItemLoop
          
          jsr ProcessSpawnSpots
          
          ;------------------------
          ;slow events
          inc DELAYED_GENERIC_COUNTER
          lda DELAYED_GENERIC_COUNTER
          cmp #8
          bne .NoTimedActionYet
          lda #0
          sta DELAYED_GENERIC_COUNTER

          ;final boss intro
          lda LEVEL_CONFIG
          and #$08
          beq ++
          
          jsr HandleFinalBossIntro
          jmp .NotDoneYet
++
          ;level done delay
          lda NUMBER_ENEMIES_ALIVE
          bne .NotDoneYet
          lda NUMBER_SPAWN_SPOTS_ALIVE
          bne .NotDoneYet
          lda NUMBER_DELAYED_SPAWN_SPOTS_ALIVE
          bne .NotDoneYet
          lda NUMBER_SPAWNS_ALIVE
          bne .NotDoneYet

          inc LEVEL_DONE_DELAY
          lda LEVEL_DONE_DELAY
          cmp #20
          beq GoToNextLevel
          
.NotDoneYet        

          
          
.NoTimedActionYet          
          lda DELAYED_GENERIC_COUNTER
          and #$03
          beq +
 
          inc DELAYED_GENERIC_COUNTER_WO_WATER
+          
          rts


GoToNextLevel
          ;handle extro if last boss level finished
          lda LEVEL_CONFIG
          and #$10
          beq .NoExtro
          
          jmp Extro
          
.NoExtro          
          ;handle door anim?
          lda LEVEL_CONFIG
          and #$04
          beq .NoDoorAnim
          
          jsr DoorAnim


.NoDoorAnim
          lda LEVEL_NR
          cmp #10
          beq .ShowStory
          cmp #21
          beq .ShowStory
          cmp #32
          beq .ShowStory
          cmp #43
          beq .ShowStory
          cmp #54
          beq .ShowStory
          cmp #65
          beq .ShowStory
          jmp .NoStory
        
.ShowStory        
          ;switch to charset 1
          lda #12
          sta VIC_CHARSET_MULTICOLOR_1
          lda #8
          sta VIC_CHARSET_MULTICOLOR_2
          lda #$3e
          sta VIC_MEMORY_CONTROL

          jsr ShowChapterEnd
          inc CHAPTER
          jsr ShowChapter
          pla
          pla
          
          lda #$0b
          sta VIC_CONTROL_MODE

          jsr StartLevel
          
          inc LEVEL_NR
          jsr BuildScreen
          
          jsr CopyLevelToBackBuffer
          jsr DisplayGetReady
          
          lda #$1b
          sta VIC_CONTROL_MODE          
          jmp DisplayScoreDisplay          
          
.NoStory          
          lda #$0b
          sta VIC_CONTROL_MODE

          jsr StartLevel
          
          inc LEVEL_NR
          jsr BuildScreen
          
          jsr CopyLevelToBackBuffer
          jsr DisplayGetReady
          
          lda #$1b
          sta VIC_CONTROL_MODE

          jmp DisplayScoreDisplay      

          

!zone HandleFinalBossIntro
HandleFinalBossIntro
          inc FINAL_INTRO_TIMER_DELAY
          lda FINAL_INTRO_TIMER_DELAY
          and #$03
          beq ++
          rts
++          
          inc FINAL_INTRO_TIMER
          lda FINAL_INTRO_TIMER
          
          cmp #5
          beq .Flash
          cmp #8
          beq .Flash
          cmp #10
          beq .Flash
          cmp #11
          beq .SpawnBoss
          rts
          
.Flash          
          ;use dean's shot flash
          lda #5
          sta PLAYER_RELOAD_FLASH_POS
          lda #1
          sta VIC_BACKGROUND_COLOR
          rts
          
.SpawnBoss
          ;disable intro flag
          lda LEVEL_CONFIG
          and #$f7
          ora #$10
          sta LEVEL_CONFIG
          
          ;spawn boss
          lda #0
          sta BOSS_PARTS_KILLED
          
          lda #19
          sta PARAM1
          lda #6
          sta PARAM2
          lda #TYPE_BOSS7
          sta PARAM3
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          jsr SpawnObject
          stx PARAM10
          
          ;torso
          lda #19
          sta PARAM1
          lda #10
          sta PARAM2
          lda #TYPE_BOSS5
          sta PARAM3
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          jsr SpawnObject
          lda #TYPE_BOSS_PART
          sta SPRITE_ACTIVE,x
          lda #128
          sta SPRITE_STATE,x
          jsr MoveSpriteUp
          jsr MoveSpriteUp
          lda PARAM10
          sta SPRITE_VALUE,x
          lda #2
          sta VIC_SPRITE_COLOR,x

          ;left arm
          lda #17
          sta PARAM1
          lda #9
          sta PARAM2
          lda #TYPE_BOSS3
          sta PARAM3
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          jsr SpawnObject
          lda #TYPE_BOSS_PART
          sta SPRITE_ACTIVE,x
          lda #0
          sta SPRITE_STATE,x
          lda PARAM10
          sta SPRITE_VALUE,x
          lda #2
          sta VIC_SPRITE_COLOR,x
          
          ;right arm
          lda #21
          sta PARAM1
          lda #9
          sta PARAM2
          lda #TYPE_BOSS4
          sta PARAM3
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          jsr SpawnObject
          lda #TYPE_BOSS_PART
          sta SPRITE_ACTIVE,x
          lda #0
          sta SPRITE_STATE,x
          lda PARAM10
          sta SPRITE_VALUE,x
          lda #2
          sta VIC_SPRITE_COLOR,x

          ;left foot
          lda #18
          sta PARAM1
          lda #13
          sta PARAM2
          lda #TYPE_BOSS2
          sta PARAM3
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          jsr SpawnObject
          lda #TYPE_BOSS_PART
          sta SPRITE_ACTIVE,x
          lda #0
          sta SPRITE_STATE,x
          lda PARAM10
          sta SPRITE_VALUE,x
          lda #2
          sta VIC_SPRITE_COLOR,x

          ;right foot
          lda #20
          sta PARAM1
          lda #13
          sta PARAM2
          lda #TYPE_BOSS
          sta PARAM3
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          jsr SpawnObject
          lda #TYPE_BOSS_PART
          sta SPRITE_ACTIVE,x
          lda #0
          sta SPRITE_STATE,x
          lda PARAM10
          sta SPRITE_VALUE,x
          lda #2
          sta VIC_SPRITE_COLOR,x
          
          jmp .Flash

;------------------------------------------------------------
;open door animation
;------------------------------------------------------------
!zone DoorAnim
DoorAnim
          lda #0
          sta LEVEL_DONE_DELAY


.DoorAnimLoop
          jsr WaitFrame
          
          inc LEVEL_DONE_DELAY
          lda LEVEL_DONE_DELAY
          and #$07
          bne .DoorAnimLoop
          
          ;open door (16,11)
          lda #11
          sta PARAM2
          
-          
          ldy PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy #17
          lda (ZEROPAGE_POINTER_1),y
          dey
          sta (ZEROPAGE_POINTER_1),y
          ldy #18
          lda (ZEROPAGE_POINTER_1),y
          dey
          sta (ZEROPAGE_POINTER_1),y
          ldy #19
          lda (ZEROPAGE_POINTER_1),y
          dey
          sta (ZEROPAGE_POINTER_1),y
          lda #32
          ldy #19
          sta (ZEROPAGE_POINTER_1),y
          
          ldy #22
          lda (ZEROPAGE_POINTER_1),y
          iny
          sta (ZEROPAGE_POINTER_1),y
          ldy #21
          lda (ZEROPAGE_POINTER_1),y
          iny
          sta (ZEROPAGE_POINTER_1),y
          ldy #20
          lda (ZEROPAGE_POINTER_1),y
          iny
          sta (ZEROPAGE_POINTER_1),y
          
          lda #32
          ldy #20
          sta (ZEROPAGE_POINTER_1),y
          
          inc PARAM2
          lda PARAM2
          cmp #21
          bne -

          ;
          lda LEVEL_DONE_DELAY
          lsr
          lsr
          lsr
          cmp #4
          bne .DoorAnimLoop

          ;door is fully open now
-
          jsr WaitFrame
          
          inc LEVEL_DONE_DELAY
          lda LEVEL_DONE_DELAY
          cmp #200
          bne -
          rts



;------------------------------------------------------------
;handle spawn spots
;------------------------------------------------------------
!zone ProcessSpawnSpots
ProcessSpawnSpots
          lda NUMBER_ENEMIES_ALIVE
          ora NUMBER_SPAWN_SPOTS_ALIVE
          ora NUMBER_SPAWNS_ALIVE
          bne .NoDelayedSpawnSpots
          
          lda NUMBER_DELAYED_SPAWN_SPOTS_ALIVE
          beq .NoDelayedSpawnSpots
          
          ;undelay them now
          lda SPAWN_SPOT_LEVEL
          clc
          adc #16
          sta SPAWN_SPOT_LEVEL
          
          ;check all spots
          ldx #0
-          
          lda SPAWN_SPOT_ACTIVE,x
          beq +
          
          lda SPAWN_SPOT_SPAWN_COUNT,x
          and #$f0
          cmp SPAWN_SPOT_LEVEL
          bne +
          
          ;undelay now
          lda SPAWN_SPOT_SPAWN_COUNT,x
          and #$0f
          sta SPAWN_SPOT_SPAWN_COUNT,x
          
          dec NUMBER_DELAYED_SPAWN_SPOTS_ALIVE
          inc NUMBER_SPAWN_SPOTS_ALIVE
          
+          
          inx
          cpx #SPAWN_SPOT_COUNT
          bne -

.NoDelayedSpawnSpots
          ldx #0
.SpawnSpotLoop
          lda SPAWN_SPOT_ACTIVE,x
          beq .NextSpawnSpot
          
          lda SPAWN_SPOT_SPAWN_COUNT,x
          and #$f0
          bne .NextSpawnSpot
          
          lda SPAWN_SPOT_DELAY ,x
          beq .TryToSpawn
          
          dec SPAWN_SPOT_DELAY,x
          jmp .NextSpawnSpot
          
.RemoveSpawnSpot          
          lda #0
          sta SPAWN_SPOT_ACTIVE,x
          dec NUMBER_SPAWN_SPOTS_ALIVE
          
.NextSpawnSpot
          inx
          cpx #SPAWN_SPOT_COUNT
          bne .SpawnSpotLoop
          
          rts

.TryToSpawn
          stx PARAM4
          
          lda NUMBER_ENEMIES_ALIVE 
          clc
          adc NUMBER_SPAWNS_ALIVE
          cmp #6
          bcs .DoNotSpawn
          
          ;only spawn randomly
          jsr GenerateRandomNumber
          cmp #4
          bpl .DoNotSpawn

          lda #128
          sta SPAWN_SPOT_DELAY,x

          lda SPAWN_SPOT_TYPE,x
          sta PARAM5
          lda SPAWN_SPOT_X,x
          sta PARAM1
          lda SPAWN_SPOT_Y,x
          sta PARAM2
          
          ;spawn object (starting with two, do not accidentally spawn in other player's spot)
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          beq .DoNotSpawn
          
          ;x is sprite slot
          ;PARAM1 is X
          ;PARAM2 is Y
          ;PARAM3 is object type
          inc NUMBER_SPAWNS_ALIVE
          stx PARAM7
          lda #TYPE_SPAWN
          sta PARAM3
          jsr SpawnObject
          
          ;store spawn type in SPRITE_ANNOYED
          ldx PARAM7
          lda PARAM5
          sta SPRITE_ANNOYED,x
          
          ;restore x
          ldx PARAM4

          dec SPAWN_SPOT_SPAWN_COUNT,x
          bne .DoNotSpawn
          jmp .RemoveSpawnSpot
          
.DoNotSpawn          
          ldx PARAM4
          jmp .NextSpawnSpot
          
          
;------------------------------------------------------------
;sets up variables for new level
;------------------------------------------------------------
!zone StartLevel
StartLevel
          lda #0
          sta VIC_SPRITE_ENABLE

          ;reset variables
          lda #0
          sta NUMBER_ENEMIES_ALIVE
          sta NUMBER_SPAWN_SPOTS_ALIVE
          sta NUMBER_SPAWNS_ALIVE
          sta LEVEL_DONE_DELAY
          sta SPRITE_POS_X_EXTEND
          sta PLAYER_STAND_STILL_TIME
          sta PLAYER_STAND_STILL_TIME + 1
          sta PLAYER_INVINCIBLE
          sta PLAYER_INVINCIBLE + 1
          sta PLAYER_FIRE_PRESSED_TIME + 1
          sta SPRITE_HELD
          
          ;reset all items
          ldx #0
          lda #ITEM_NONE
.ClearItemLoop
          sta ITEM_ACTIVE,x
          inx
          cpx #ITEM_COUNT
          bne .ClearItemLoop
          
          
          ldy #0
.RefillShellImage          
          lda #2
          sta SCREEN_COLOR + 23 * 40 + 19,y
          lda #7
          sta SCREEN_COLOR + 24 * 40 + 19,y
          
          iny
          cpy PLAYER_SHELLS_MAX
          bne .RefillShellImage

          lda PLAYER_SHELLS_MAX
          sta PLAYER_SHELLS
          rts
          


;------------------------------------------------------------
;check if the player got a new highscore entry
;------------------------------------------------------------
!zone CheckForHighscore
CheckForHighscore
          ;display game over
          jsr DisplayGameOver
          
          ;animate
          lda #0
          sta SPRITE_STATE
          
.GameOverDelay          
          jsr WaitFrame
          
          lda SPRITE_STATE
          and #$1f
          tax
          ldy #0
          lda #8
          sta PARAM2
          
-          
          lda PATH_8_DY,x
          bmi +
 
          lda PATH_8_DY,x
          clc
          adc #110
--          
          sta VIC_SPRITE_Y_POS,y
          jmp ++
          
          
+          
          lda PATH_8_DY,x
          and #$7f
          sta PARAM1
          
          lda #110
          sec
          sbc PARAM1
          jmp --
          
++          
          iny
          iny
          
          inx
          inx
          txa
          and #$1f
          tax
          
          dec PARAM2
          bne -
          
          inc SPRITE_STATE
          bne .GameOverDelay
          
          
HighScoreDirect          
          ;check for highscore
          lda #0
          sta VIC_SPRITE_ENABLE

          lda #0
          sta PARAM1
          ldy #0
          
.CheckScoreEntry          
          ldx #0
          sty PARAM2
          
.CheckNextDigit          
          lda PLAYER_SCORE,x
          cmp HIGHSCORE_SCORE,y
          bcc .NotHigher
          bne .IsHigher
          
          ;need to check next digit
          iny
          inx
          cpx #HIGHSCORE_SCORE_SIZE
          beq .IsHigher
          jmp .CheckNextDigit
          
.NotHigher
          inc PARAM1
          lda PARAM1
          cmp #HIGHSCORE_ENTRY_COUNT
          beq .NoNewHighscore
          
          ;y points somewhere inside the score, recalc next line pos
          lda PARAM2
          clc
          adc #( HIGHSCORE_SCORE_SIZE + 1 )
          tay
          jmp .CheckScoreEntry

.NoNewHighscore

          jmp TitleScreen
          
.IsHigher
          ;shift older entries down, add new entry
          lda #( HIGHSCORE_ENTRY_COUNT - 1 )
          sta PARAM2
          
          ;y carries the offset in the score text, position at start of second last entry
          ldy #( ( HIGHSCORE_SCORE_SIZE + 1 ) * ( HIGHSCORE_ENTRY_COUNT - 2 ) )
          
.CopyScore          
          lda PARAM2
          cmp PARAM1
          beq .SetNewScore
          
          ;copy score
          ldx #0
          
.CopyNextScoreDigit          
          lda HIGHSCORE_SCORE,y
          sta HIGHSCORE_SCORE + ( HIGHSCORE_SCORE_SIZE + 1 ),y
          
          iny
          inx
          cpx #HIGHSCORE_SCORE_SIZE
          bne .CopyNextScoreDigit
          
          tya
          sec
          sbc #( HIGHSCORE_SCORE_SIZE + HIGHSCORE_SCORE_SIZE + 1 )
          tay
          dec PARAM2
          jmp .CopyScore
          
.SetNewScore
          ;y points at score above the new entry
          tya
          clc
          adc #( HIGHSCORE_SCORE_SIZE + 1 )
          tay
          
          ldx #0
          
.SetNextScoreDigit          
          lda PLAYER_SCORE,x
          sta HIGHSCORE_SCORE,y
          
          iny
          inx
          cpx #HIGHSCORE_SCORE_SIZE
          bne .SetNextScoreDigit
          
          ;move names down
          ;shift older entries down, add new entry
          lda #( HIGHSCORE_ENTRY_COUNT - 1 )
          sta PARAM2
          
          ;y carries the offset in the score text, position at start of second last entry
          ldy #( ( HIGHSCORE_NAME_SIZE + 1 ) * ( HIGHSCORE_ENTRY_COUNT - 2 ) )
          
.CopyName
          lda PARAM2
          cmp PARAM1
          beq .SetNewName
          
          ;copy name
          ldx #0
          
.CopyNextNameChar
          lda HIGHSCORE_NAME,y
          sta HIGHSCORE_NAME + ( HIGHSCORE_NAME_SIZE + 1 ),y
          
          iny
          inx
          cpx #HIGHSCORE_NAME_SIZE
          bne .CopyNextNameChar
          
          tya
          sec
          sbc #( HIGHSCORE_NAME_SIZE + HIGHSCORE_NAME_SIZE + 1 )
          tay
          dec PARAM2
          jmp .CopyName


.SetNewName
          ;calc y for new name offset inside name data
          ldy PARAM1
          
          lda #0
.AddNameOffset          
          cpy #0
          beq .NameOffsetFound
          clc
          adc #( HIGHSCORE_NAME_SIZE + 1 )
          dey
          jmp .AddNameOffset
          
.NameOffsetFound          
          tay  

          ;clear old name
          ldx #0
          sty PARAM3
          lda #32
          
.ClearNextChar
          sta HIGHSCORE_NAME,y
          iny
          inx
          cpx #HIGHSCORE_NAME_SIZE
          bne .ClearNextChar

          ;name entry starts here
          
          ;calc cursor pos
          
          ;y pos on screen
          lda PARAM1
          clc
          adc #10
          tay
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_4 + 1
          
          ;prepare display
          lda #0
          sta VIC_SPRITE_ENABLE
          
          ;clear screen
          lda #32
          ldy #0
          jsr ClearScreen

          ;display "Enter your name"
          lda #<TEXT_ENTER_NAME
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_ENTER_NAME
          sta ZEROPAGE_POINTER_1 + 1
          lda #12
          sta PARAM1
          lda #23
          sta PARAM2
          jsr DisplayText
          
          ;display scores
          lda #25
          sta PARAM1
          lda #10
          sta PARAM2

          lda #<HIGHSCORE_SCORE
          sta ZEROPAGE_POINTER_1
          lda #>HIGHSCORE_SCORE
          sta ZEROPAGE_POINTER_1 + 1
          jsr DisplayText
          
          
          jsr InitTitleIRQ
          
!ifdef MUSIC_PLAYING{
          ;initialise music player
          lda SFX_MODE
          bne +
          lda #MUSIC_GET_READY_GAME_OVER_TUNE
          jsr MUSIC_PLAYER
+          
}          
          ;restore bitmap logo colors
          ldx #0
.FillColor      
          lda TITLE_LOGO_COLORRAM,x
          sta SCREEN_COLOR,x
          inx
          bne .FillColor

.FillColor2
          lda TITLE_LOGO_COLORRAM + 256,x
          sta SCREEN_COLOR + 256,x
          inx
          cpx #( 320 - 256 )
          bne .FillColor2
          
          ldy PARAM3
          
          ldx #0
          stx PARAM3
          jmp .ShowChar
          
.GetNextChar
          sty PARAM4
          
          ;blink cursor
          jsr WaitFrame
          
          lda PARAM3
          clc
          adc #6
          tay
          lda (ZEROPAGE_POINTER_4),y
          eor #123
          sta (ZEROPAGE_POINTER_4),y
          
          ;restore Y
          ldy PARAM4
          
          ;use ROM routines, read char
          jsr KERNAL_GETIN
          beq .GetNextChar

          ;return pressed?
          cmp #13
          beq .EnterPressed

          ;DEL pressed?
          cmp #20
          bne .NotDel
          
          ;DEL pressed
          ldy PARAM4
          ldx PARAM3
          beq .GetNextChar
          dec PARAM3
          dey
          dex
          lda #32
          sta HIGHSCORE_NAME,y
          jmp .ShowChar

.NotDel   
          ldy PARAM4
          ;pressed key >= 32 or <= 96?
          cmp #32
          bcc .GetNextChar
          cmp #96
          bcs .GetNextChar

          ;max length reached already?
          ldx PARAM3
          cpx #HIGHSCORE_NAME_SIZE
          bcs .GetNextChar
          
          ;save text
          sta HIGHSCORE_NAME,y
          iny
          inx
          
.ShowChar           
          stx PARAM3
          sty PARAM4

          ;display high scores
          ;x,y pos of name
          lda #6
          sta PARAM1
          lda #10
          sta PARAM2

          lda #<HIGHSCORE_NAME
          sta ZEROPAGE_POINTER_1
          lda #>HIGHSCORE_NAME
          sta ZEROPAGE_POINTER_1 + 1

          jsr DisplayText

          ldx PARAM3
          ldy PARAM4

          jmp .GetNextChar

.EnterPressed      
          ;fill entry with blanks
          lda #32
          ldx PARAM3
          ldy PARAM4
          
.FillNextChar          
          cpx #HIGHSCORE_NAME_SIZE
          beq .FilledUp
          sta HIGHSCORE_NAME,y
          iny
          inx
          jmp .FillNextChar          

.FilledUp
          jsr SaveScores
          jmp TitleScreenWithoutIRQ
          

;------------------------------------------------------------
;check object collisions (enemy vs. player etc.)
;x 
;------------------------------------------------------------
!zone CheckCollisions
CheckCollisions
          lda SPRITE_ACTIVE,x
          bne .PlayerIsAlive
          rts          
          
.PlayerIsAlive          
          lda SPRITE_STATE,x
          cmp #128
          bmi .IsVulnerable
          rts          
          
.IsVulnerable          
          stx PARAM6
          
          ;start with sprite 0 (Sam usually is at index 1)
          ldx #0
          
.CollisionLoop          
          lda SPRITE_ACTIVE,x
          bne .CheckObject
          
.NextObject          
          inx
          cpx #8
          bne .CollisionLoop          
          rts
          
.CheckObject
          ;is an enemy?
          tay
          lda IS_TYPE_ENEMY,y
          beq .NextObject
          
          ;only objects with states >= 128 are deadly
          
          lda SPRITE_STATE,x
          cmp #128
          bcs .NextObject
          
          stx PARAM2
          ldy PARAM6
          jsr IsEnemyCollidingWithPlayer
          bne .PlayerCollidedWithEnemy
          ldx PARAM2
          jmp .NextObject
          
.PlayerCollidedWithEnemy          
          ;player killed
          ldy PARAM6
          
          jsr KillPlayer
          rts
          

;------------------------------------------------------------
;check object collision with player (object in y)
;x = enemy index
;y = player index
;return a = 1 when colliding, a = 0 when not
;------------------------------------------------------------

!zone IsEnemyCollidingWithPlayer


.CalculateSimpleXPos
          ;Returns a with simple x pos (x halved + 128 if > 256)
          ;modifies y
          lda BIT_TABLE,x
          and SPRITE_POS_X_EXTEND
          beq .NoXBit
          
          lda SPRITE_POS_X,x
          lsr
          clc
          adc #128
          rts
          
.NoXBit          
          lda SPRITE_POS_X,x
          lsr
          rts

IsEnemyCollidingWithPlayer
          ;modifies X
          ;check y pos
          lda SPRITE_POS_Y,x
          sec
          sbc #( OBJECT_HEIGHT )      ;offset to bottom
          cmp SPRITE_POS_Y,y
          bcs .NotTouching
          clc
          adc #( OBJECT_HEIGHT + OBJECT_HEIGHT - 1 )
          cmp SPRITE_POS_Y,y
          bcc .NotTouching
          
          ;X = Index in enemy-table
          jsr .CalculateSimpleXPos
          sta PARAM1
          ;vs. player X
          tya
          tax
          jsr .CalculateSimpleXPos
          
          sec
          sbc #4
          ;position X-Anfang Player - 12 Pixel
          cmp PARAM1
          bcs .NotTouching
          adc #8
          cmp PARAM1
          bcc .NotTouching
          
          lda #1
          rts
          
.NotTouching
          lda #0
          rts
          
          
;------------------------------------------------------------
;check joystick (player control)
;------------------------------------------------------------
!zone PlayerControl
.PlayerIsDying
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #64
          beq .PlayerRespawn
          
          and #$03
          bne .NoUpMove
          jsr MoveSpriteUp
          
.NoUpMove          
          rts
          

.PlayerRespawn
          dec PLAYER_LIVES,x
          jsr DisplayLiveNumber
          
          ;game over?
          lda PLAYER_LIVES,x
          bne .RestartPlayer
          
          ;is other player alive?
          lda PLAYER_LIVES
          clc
          adc PLAYER_LIVES + 1
          bne .OtherPlayerStillAlive
          
          ;clean stack
          pla
          pla
          jmp CheckForHighscore
          
.OtherPlayerStillAlive
          ;remove 2 player active flag
          lda #0
          sta TWO_PLAYER_MODE_ACTIVE
          jsr RemoveObject
          rts
          
.RestartPlayer          
          lda SPRITE_ACTIVE,x
          cmp #TYPE_PLAYER_SAM
          beq .PlayerIsNotDean
          
          ;refill shells
          ldy #0
.RefillShellImage          
          lda #2
          sta SCREEN_COLOR + 23 * 40 + 19,y
          lda #7
          sta SCREEN_COLOR + 24 * 40 + 19,y
          
          iny
          cpy PLAYER_SHELLS_MAX
          bne .RefillShellImage

          lda PLAYER_SHELLS_MAX
          sta PLAYER_SHELLS
          
.PlayerIsNotDean
          ;respawn at correct position
          lda PLAYER_START_POS_X,x
          sta PARAM1 
          lda PLAYER_START_POS_Y,x
          sta PARAM2

          ;PARAM1 and PARAM2 hold x,y already
          jsr CalcSpritePosFromCharPos
          
          ;enable sprite
          lda BIT_TABLE,x
          ora VIC_SPRITE_ENABLE
          sta VIC_SPRITE_ENABLE
          
          ;initialise enemy values
          lda #SPRITE_PLAYER
          sta SPRITE_POINTER_BASE,x
          lda #0
          sta PLAYER_FIRE_PRESSED_TIME,x
          
          lda #200
          sta PLAYER_INVINCIBLE,x
          lda #128
          sta SPRITE_STATE,x
          
          ;look right per default
          lda #0
          sta SPRITE_DIRECTION,x
          
          lda #0
          sta SPRITE_JUMP_POS,x
          sta SPRITE_FALLING,x
          rts

PlayerControl
          lda SPRITE_STATE,x
          cmp #129
          bne .NotDying
          jmp .PlayerIsDying
          
.NotDying          
          lda PLAYER_INVINCIBLE,x
          beq .NotInvincible
          
          ;count down invincibility
          inc VIC_SPRITE_COLOR,x
          dec PLAYER_INVINCIBLE,x
          bne .NotInvincible

          lda #0
          sta SPRITE_STATE,x
          lda #10
          sta VIC_SPRITE_COLOR,x
          
.NotInvincible          
          ;check if the player collected an item
          ldy #0
.ItemLoop
          lda ITEM_ACTIVE,y
          cmp #ITEM_NONE
          beq .NextItem
          
          lda ITEM_POS_X,y
          cmp SPRITE_CHAR_POS_X,x
          beq .MatchX

          clc
          adc #1
          cmp SPRITE_CHAR_POS_X,x
          beq .MatchX

          sec
          sbc #2
          cmp SPRITE_CHAR_POS_X,x
          beq .MatchX
          
          jmp .NextItem
          
.MatchX          
          lda ITEM_POS_Y,y
          clc
          adc #1
          cmp SPRITE_CHAR_POS_Y,x
          beq .PickItem

          lda ITEM_POS_Y,y
          cmp SPRITE_CHAR_POS_Y,x
          bne .NextItem
          
.PickItem          
          ;pick item!
          jsr PickItem
          
          lda SFX_MODE
          beq +
          lda #MUSIC_PICKUP
          jsr MUSIC_PLAYER
+          
          ldx PARAM6
          jmp .LastItemReached
          
.NextItem
          iny
          cpy #ITEM_COUNT
          beq .LastItemReached
          jmp .ItemLoop
          
.LastItemReached

          ;check if player moved
          ldy PLAYER_JOYSTICK_PORT,x
          lda JOYSTICK_PORT_II,y
          and #$1f
          cmp #$1f
          bne .PlayerMoved
          
          ;don't reload while recoil
          lda PLAYER_SHOT_PAUSE,x
          bne .PlayerMoved
          
          cpx #1
          beq .HandleSam
          
          ldy PLAYER_RELOAD_SPEED
          lda PLAYER_STAND_STILL_TIME
          clc
          adc RELOAD_SPEED,y
          cmp RELOAD_SPEED_MAX,y
          bcs .ReloadTimeDone
          
          sta PLAYER_STAND_STILL_TIME
          jmp .HandleFire
          
.ReloadTimeDone
          lda #0
          sta PLAYER_STAND_STILL_TIME
          ;reload
          lda #1
          sta PLAYER_STAND_STILL_TIME,x
          
          ;already fully loaded?
          lda PLAYER_SHELLS
          cmp PLAYER_SHELLS_MAX
          beq .HandleFire
          
          inc PLAYER_SHELLS
          
          ;display loaded shells
          ldy PLAYER_SHELLS
          lda #2
          sta SCREEN_COLOR + 23 * 40 + 18,y
          lda #7
          sta SCREEN_COLOR + 24 * 40 + 18,y
          jmp .HandleFire
          
.PlayerMoved
          lda #0
          sta PLAYER_STAND_STILL_TIME,x
          
.HandleSam          
.HandleFire          
          cpx #1
          beq .FireSam
          
          ;handle shooting/shoot pause
          lda PLAYER_SHOT_PAUSE,x
          beq .CanShoot
          jmp .CannotShoot
          
.CanShoot          
          lda PLAYER_SHELLS
          bne .HasShells
          jmp .FireDone
                    
.HasShells                    
          ldy PLAYER_JOYSTICK_PORT,x
          lda JOYSTICK_PORT_II,y
          and #$10
          beq .FirePushed
          jmp .NotFirePushed
          
.FirePushed          
          jsr FireShot
          jmp .FireDone

.FireSam
          ldy PLAYER_JOYSTICK_PORT,x
          lda JOYSTICK_PORT_II,y
          and #$10
          beq +
          
          ;not fire pressed
          lda #1
          sta PLAYER_FIRE_RELEASED,x
          jmp .SamNotFirePushed
          
+          
          lda #1
          sta PLAYER_FIRE_PRESSED_TIME,x
          
          stx PARAM6
          
          lda SPRITE_HELD
          bne .NoFireReleasedCheck
          
          jsr SamUseForce
          beq .NoEnemyHeld
          
          ldx CURRENT_INDEX
          lda PLAYER_FIRE_RELEASED,x
          bne +
          jmp .SamNotFirePushed
+          
          lda #0
          sta PLAYER_FIRE_RELEASED,x

.NoFireReleasedCheck
          ;release beam when moving
          lda SAM_FORCE_START_Y
          clc
          adc #1
          cmp SPRITE_CHAR_POS_Y,x
          beq +
          jmp .SamNotFirePushed
          
+         
          ;Sam needs to keep pressed
          jsr RedrawForceBeam
          
          ldy SPRITE_HELD
          dey
          ldx SPRITE_ACTIVE,y
          lda IS_TYPE_ENEMY,x
          cmp #1
          bne .NormalHurtByForce
          
          ;in 2p mode?
          ;TODO - if only one player is left?
          lda TWO_PLAYER_MODE_ACTIVE
          beq .NormalHurtByForce
          
          ;no further action
          jmp .NoEnemyHeld
          
          
.NormalHurtByForce          
          ldx PARAM6
          inc PLAYER_SHOT_PAUSE,x
          
          lda PLAYER_SHOT_PAUSE,x
          cmp #40
          beq .EnemyHurtBySam
          
          ldy SPRITE_HELD
          dey
          lda #2
          sta VIC_SPRITE_COLOR,y
          
.NoEnemyHeld          
.EnemyWasHurt    
          ;restore sprite index
          ldx PARAM6
          jmp .NotFirePushed
          
.EnemyHurtBySam
          lda #0
          sta PLAYER_SHOT_PAUSE,x
          
          ldx SPRITE_HELD
          dex
          
          lda #0
          sta VIC_SPRITE_COLOR,x

          lda #1
          jsr IncreaseScore
          
          lda DEMON_BLOOD
          beq +
          dec DEMON_BLOOD
          jmp .EnemyKilled

+
          dec SPRITE_HP,x
          beq .EnemyKilled
          
          ;enemy was hurt
          ldy SPRITE_HELD
          dey
          lda SPRITE_ACTIVE,y
          tay
          lda IS_TYPE_ENEMY,y
          cmp #3
          ;if boss, auto-release
          bne +
          
          lda #0
          sta PLAYER_FIRE_RELEASED,x
          jmp .SamNotFirePushed
          
+          
          lda BOSS_HELD
          beq .EnemyWasHurt
          
          ;release if end boss
          jmp .SamNotFirePushed
          
.EnemyKilled          
          lda #5
          jsr IncreaseScore
          
          ldx SPRITE_HELD
          dex

          jsr KillEnemy
          jsr RemoveForceBeam
          
          ldx PARAM6
          jmp .NotFirePushed
          
          
.SamNotFirePushed
          lda SPRITE_HELD
          beq +
          
          lda #0
          sta SPRITE_HELD
          sta BOSS_HELD
          jsr RemoveForceBeam
          ldx PARAM6
+          
          sta PLAYER_SHOT_PAUSE,x
          sta PLAYER_FIRE_PRESSED_TIME,x
          jmp .NotFirePushed

.CannotShoot
          dec PLAYER_SHOT_PAUSE

.FireDone
.NotFirePushed
          lda SPRITE_JUMP_POS,x
          beq .NotJumping
          jmp .PlayerIsJumping

.NotJumping
          jsr UpdateSpriteFall
          bne .NotUpPressed
          
          ldy PLAYER_JOYSTICK_PORT,x
          lda JOYSTICK_PORT_II,y
          and #$01
          bne .NotUpPressed
          
          jmp .PlayerIsJumping
          
.NotUpPressed          
.JumpComplete
          cpx #1
          bne .PlayerIsDean
          
          ;if Sam is powering up he cannot move
          lda PLAYER_FIRE_PRESSED_TIME,x
          beq .SamIsNotPowering
          
          lda #SPRITE_PLAYER_SAM_POWER_R
          clc
          adc SPRITE_DIRECTION + 1
          sta SPRITE_POINTER_BASE + 1
          rts
          
.SamIsNotPowering
.PlayerIsDean          
          ldy PLAYER_JOYSTICK_PORT,x
          lda JOYSTICK_PORT_II,y
          and #$04
          bne .NotLeftPressed
          jsr PlayerMoveLeft
          jsr PlayerMoveLeft
          
          ;animate player
          lda SPRITE_FALLING,x
          bne .NoAnimLNeeded
          lda SPRITE_JUMP_POS,x
          bne .NoAnimLNeeded
          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #8
          bne .NoAnimLNeeded
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
.NoAnimLNeeded
.NotLeftPressed
          ldy PLAYER_JOYSTICK_PORT,x
          lda JOYSTICK_PORT_II,y
          and #$08
          bne .NotRightPressed
          jsr PlayerMoveRight
          jsr PlayerMoveRight

          ;animate player
          lda SPRITE_FALLING,x
          bne .NoAnimRNeeded
          lda SPRITE_JUMP_POS,x
          bne .NoAnimRNeeded
          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #8
          bne .NoAnimRNeeded
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x

.NoAnimRNeeded          
.NotRightPressed
          ;update player animation
          lda PLAYER_STAND_STILL_TIME,x
          beq .PlayerMoving
          cmp #10
          bmi .NotReloading
          cmp #30
          bpl .NotReloading
          
          ;don't show reload sprites for Sam
          cpx #1
          beq .NotReloading
          
          ;set reload anim
          lda PLAYER_SHELLS
          cmp PLAYER_SHELLS_MAX
          beq .NotReloading
          
          lda #SPRITE_PLAYER_RELOAD_R
          clc
          adc SPRITE_DIRECTION,x
          adc PLAYER_SPRITE_BASE,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.NotReloading
          lda #SPRITE_PLAYER_STAND_R
          clc
          adc SPRITE_DIRECTION,x
          adc PLAYER_SPRITE_BASE,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.PlayerMoving
          lda SPRITE_FALLING,x
          bne .AnimFalling

          lda SPRITE_JUMP_POS,x
          bne .AnimJumping
          
          ;is player shooting?
          lda PLAYER_SHOT_PAUSE,x
          beq .AnimNoRecoil

          ;recoil anim          
          lda SPRITE_ANIM_POS,x
          asl
          clc
          adc SPRITE_DIRECTION,x
          adc #SPRITE_PLAYER_WALK_R_1
          adc #8
          sta SPRITE_POINTER_BASE,x
          
          rts
          
.AnimNoRecoil          
          lda SPRITE_ANIM_POS,x
          asl
          clc
          adc SPRITE_DIRECTION,x
          adc #SPRITE_PLAYER_WALK_R_1
          adc PLAYER_SPRITE_BASE,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.AnimFalling
          lda PLAYER_SHOT_PAUSE,x
          bne .AnimFallingNoRecoil

          lda #SPRITE_PLAYER_FALL_R
          clc
          adc SPRITE_DIRECTION,x
          adc PLAYER_SPRITE_BASE,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.AnimFallingNoRecoil          
          lda #SPRITE_PLAYER_FALL_RECOIL_R
          clc
          adc SPRITE_DIRECTION,x
          adc PLAYER_SPRITE_BASE,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.AnimJumping          
          lda PLAYER_SHOT_PAUSE,x
          bne .AnimJumpingNoRecoil

          lda #SPRITE_PLAYER_JUMP_R
          clc
          adc SPRITE_DIRECTION,x
          adc PLAYER_SPRITE_BASE,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.AnimJumpingNoRecoil          
          lda #SPRITE_PLAYER_JUMP_RECOIL_R
          clc
          adc SPRITE_DIRECTION,x
          adc PLAYER_SPRITE_BASE,x
          sta SPRITE_POINTER_BASE,x
          rts

.PlayerIsJumping
          jsr UpdateSpriteJump
          jmp .JumpComplete

;------------------------------------------------------------
;pick item = remove item and apply effect
;X = player index
;Y = item index
;------------------------------------------------------------
!zone PickItem
PickItem    
          stx PARAM6
          
          lda ITEM_ACTIVE,y
          cmp #ITEM_BULLET
          beq .EffectBullet
          cmp #ITEM_HEALTH
          beq .EffectHealth
          cmp #ITEM_FAST_RELOAD
          beq .EffectFastReload
          cmp #ITEM_INVINCIBLE
          beq .EffectInvincible
          cmp #ITEM_FORCE_RANGE
          bne +
          jmp .EffectIncForceRange
+          
          cmp #ITEM_SUPER_BULLET
          beq .EffectSuperBullet
          cmp #ITEM_DEMON_BLOOD
          beq .EffectDemonBlood
          
.SamDoesNotUseBullets          
.SamDoesNotUseFastReload
.DeanDoesNotUseForce
.RemoveItem          
          ldx PARAM6
          lda #ITEM_NONE
          sta ITEM_ACTIVE,y
          
          lda #3
          jsr IncreaseScore

          jsr RemoveItemImage
          
          ldx PARAM6
          rts

.EffectDemonBlood
          cpx #1
          bne .DeanDoesNotUseForce
          inc DEMON_BLOOD
          jmp .RemoveItem
          
.EffectSuperBullet          
          cpx #1
          beq .SamDoesNotUseBullets
          
          inc SUPER_BULLET

.EffectBullet
          cpx #1
          beq .SamDoesNotUseBullets
          
          lda PLAYER_SHELLS_MAX
          cmp #5
          beq .RemoveItem
          
          ldx PLAYER_SHELLS_MAX
          
          lda #224
          sta SCREEN_CHAR + 23 * 40 + 19,x
          lda #225
          sta SCREEN_CHAR + 24 * 40 + 19,x
          lda #6
          sta SCREEN_COLOR + 23 * 40 + 19,x
          sta SCREEN_COLOR + 24 * 40 + 19,x
          
          inc PLAYER_SHELLS_MAX
          jmp .RemoveItem
          
.EffectHealth
          lda PLAYER_LIVES,x
          cmp #99
          beq .RemoveItem
          
          inc PLAYER_LIVES,x
          sty PARAM1
          jsr DisplayLiveNumber
          ldy PARAM1
          jmp .RemoveItem
          
.EffectFastReload          
          cpx #1
          beq .SamDoesNotUseFastReload
          
          lda PLAYER_RELOAD_SPEED
          cmp #4
          beq .SpeedHighestAlready
          inc PLAYER_RELOAD_SPEED
.SpeedHighestAlready          
          jmp .RemoveItem
          
.EffectInvincible          
          lda #200
          sta PLAYER_INVINCIBLE,x
          lda #128
          sta SPRITE_STATE,x
          jmp .RemoveItem
          
.EffectIncForceRange
          cpx #0
          beq .DeanDoesNotUseForce
          
          lda PLAYER_FORCE_RANGE
          clc
          adc #2
          sta PLAYER_FORCE_RANGE
          
          cmp #38
          bcc .NotTooLong
          
          lda #38
          sta PLAYER_FORCE_RANGE
          
.NotTooLong          
          jmp .RemoveItem

;------------------------------------------------------------
;put item image on screen
;X = item index
;------------------------------------------------------------
!zone PutItemImage
PutItemImage
          
          ldy ITEM_POS_Y,x
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_2 + 1
          
          ldy ITEM_POS_X,x
          
          lda ITEM_ACTIVE,x
          tax
          ;put item 
          lda ITEM_CHAR_UL,x
          sta (ZEROPAGE_POINTER_1),y
          lda ITEM_COLOR_UL,x
          sta (ZEROPAGE_POINTER_2),y
          
          iny
          lda ITEM_CHAR_UR,x
          sta (ZEROPAGE_POINTER_1),y
          lda ITEM_COLOR_UR,x
          sta (ZEROPAGE_POINTER_2),y
          
          tya
          clc
          adc #39
          tay
          
          lda ITEM_CHAR_LL,x
          sta (ZEROPAGE_POINTER_1),y
          lda ITEM_COLOR_LL,x
          sta (ZEROPAGE_POINTER_2),y
          
          iny
          lda ITEM_CHAR_LR,x
          sta (ZEROPAGE_POINTER_1),y
          lda ITEM_COLOR_LR,x
          sta (ZEROPAGE_POINTER_2),y
          
          rts
          

;------------------------------------------------------------
;remove item image from screen
;Y = item index
;------------------------------------------------------------
!zone RemoveItemImage
RemoveItemImage
          sty PARAM2
          stx PARAM3
          
          lda ITEM_POS_Y,y
          tay
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_2 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_BACK_CHAR - SCREEN_BACK_COLOR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_4 + 1
          
          ldx PARAM2
          ldy ITEM_POS_X,x
          
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          
          iny
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y

          tya
          clc
          adc #39
          tay
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          
          iny
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          
          ;repaint other items to avoid broken overlapped items
RedrawItems          
          ldx #0
.RepaintLoop
          lda ITEM_ACTIVE,x
          cmp #ITEM_NONE
          beq .RepaintNextItem
          
          txa
          pha
          jsr PutItemImage
          pla
          tax
          
.RepaintNextItem
          inx
          cpx #ITEM_COUNT
          bne .RepaintLoop
          
          ldy PARAM2
          ldx PARAM3
          rts


;------------------------------------------------------------
;player fires shot
;------------------------------------------------------------
!zone FireShot
FireShot
          stx PARAM6
          
          lda SFX_MODE
          beq +
          lda #MUSIC_PLAYER_SHOOT
          jsr MUSIC_PLAYER
+          
          
          
          dec PLAYER_SHELLS
          ldy PLAYER_SHELLS
          
          lda #6
          sta SCREEN_COLOR + 23 * 40 + 19,y
          sta SCREEN_COLOR + 24 * 40 + 19,y
          
          lda #5
          sta PLAYER_RELOAD_FLASH_POS
  
          ;red flash for super bullet
          lda SUPER_BULLET
          beq +
          
          lda #2
          jmp ++
          
+          
          lda #1
++          
          sta VIC_BACKGROUND_COLOR
          
          ;frame delay until next shot
          lda #20
          sta PLAYER_SHOT_PAUSE
          
          ldy SPRITE_CHAR_POS_Y
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X
          
.ShotContinue
          lda SPRITE_DIRECTION
          beq .ShootRight

          ;shooting left          
          dey
          
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          beq .CheckHitEnemy

.ShotDone
          ldx PARAM6
          rts
          
.ShootRight
          iny
          
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .ShotDone
          
.CheckHitEnemy          
          ;hit an enemy?
          ldx #1
          
.CheckEnemy          
          stx PARAM2
          lda SPRITE_ACTIVE,x
          bne +
          jmp .CheckNextEnemy

+
          tax
          lda IS_TYPE_ENEMY,x
          bne +
          jmp .CheckNextEnemy

+
          ldx PARAM2
          ;is vulnerable?          
          lda SPRITE_STATE,x
          cmp #128
          bmi +
          jmp .CheckNextEnemy

+
          ;sprite pos matches on x?
          sty PARAM1
          lda SPRITE_CHAR_POS_X,x
          cmp PARAM1
          bne .CheckNextEnemy
          
          ;sprite pos matches on y?
          lda SPRITE_CHAR_POS_Y,x
          cmp SPRITE_CHAR_POS_Y
          beq .EnemyHit

          ;sprite pos matches on y + 1?
          clc
          adc #1
          cmp SPRITE_CHAR_POS_Y
          beq .EnemyHit

          ;sprite pos matches on y - 1?
          sec
          sbc #2
          cmp SPRITE_CHAR_POS_Y
          bne .CheckNextEnemy
          
.EnemyHit          
          ;enemy hit!
          ;is two player enemy?
          ldy SPRITE_ACTIVE,x
          lda IS_TYPE_ENEMY,y
          cmp #1
          bne .HitEnemy
          
          ;in 2p mode?
          ;TODO - if only one player is left?
          lda TWO_PLAYER_MODE_ACTIVE
          beq .HitEnemy
          
          ldy SPRITE_HELD
          dey
          sty PARAM1
          cpx PARAM1
          beq .HitEnemy
          
          ;enemy would be hit, but is not held
          jmp .ShotDone
          
.HitEnemy          
          lda #1
          jsr IncreaseScore
          
          lda SPRITE_HELD
          sta PARAM1
          dec PARAM1
          cpx PARAM1
          bne .NotHeldEnemy
          
          lda #0
          sta SPRITE_HELD
          sta BOSS_HELD
          
.NotHeldEnemy          
          lda SUPER_BULLET
          beq +
          
          ;directly kill enemy
          dec SUPER_BULLET
          jmp .EnemyKilled
          
+          
          lda SPRITE_HP,x
          dec SPRITE_HP,x
          lda SPRITE_HP,x
          beq .EnemyKilled
          
          ;call enemy hit behaviour
          ldy SPRITE_ACTIVE,x
          ;enemy is active
          dey
          dey
          lda ENEMY_HIT_BEHAVIOUR_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda ENEMY_HIT_BEHAVIOUR_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ;set up return address for rts
          lda #>( .ShotDone - 1 )
          pha 
          lda #<( .ShotDone - 1 )
          pha
          
          jmp (ZEROPAGE_POINTER_1)
          
.CheckNextEnemy     
          ldx PARAM2
          inx
          cpx #8
          beq .NoEnemyHit
          jmp .CheckEnemy

.NoEnemyHit
          jmp .ShotContinue

.EnemyKilled
          lda #5
          jsr IncreaseScore

          jsr KillEnemy
          
          lda SFX_MODE
          beq +
          lda #MUSIC_ENEMY_DIE
          jsr MUSIC_PLAYER
+          
          
          jmp .ShotDone
          

;------------------------------------------------------------
;kill off enemy (remove object, generate item)
;x = enemy index
;------------------------------------------------------------
!zone KillEnemy
KillEnemy
          ;is the enemy currently held?
          ldy SPRITE_HELD
          dey
          sty PARAM4
          cpx PARAM4
          bne .WasNotHeld
          
          lda #0
          sta SPRITE_HELD
          sta BOSS_HELD
          
.WasNotHeld          
          ldy SPRITE_ACTIVE,x
          lda IS_TYPE_ENEMY,y
          bne +
          jmp .NoEnemy
+          
          
          dec NUMBER_ENEMIES_ALIVE
          
          cpy #TYPE_BOSS3
          bne +

          ;undo beam
          lda SPRITE_CHAR_POS_X,x
          sta PARAM4
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM5
          jsr RestoreBeamHV

+
          cpy #TYPE_BOSS_PART
          bne .NotABossPart
          
          ;find out proper beam to remove
          stx CURRENT_SUB_INDEX
          
          ;remove beam
          ldx #2
          
          lda #0
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #3
          sta PARAM4
          lda #39
          sta PARAM5
          jsr RestoreBeamHSegment
          
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc #1
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #8
          sta PARAM4
          jsr RestoreBeamDiagonalLLUR
          
          lda SPRITE_CHAR_POS_X,x
          clc
          adc #2
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #8
          sta PARAM4
          jsr RestoreBeamDiagonalULLR

          ldx CURRENT_SUB_INDEX

          inc BOSS_PARTS_KILLED
          lda BOSS_PARTS_KILLED
          cmp #5
          beq .MakeBossHeadVulnerable
          cmp #4
          bne ++
          
          ;make boss torso vulnerable
          ldy #1
          
-          
          lda SPRITE_ACTIVE,y
          cmp #TYPE_BOSS_PART
          beq +
          
          iny
          bne -
          
+          
          lda #0
          sta SPRITE_STATE,y
          jmp ++
          
.MakeBossHeadVulnerable          
          ldy #1
          
-          
          lda SPRITE_ACTIVE,y
          cmp #TYPE_BOSS7
          beq +
          iny
          bne -
          
+          
          lda #0
          sta SPRITE_STATE,y
.NotABossPart          
          
.NoEnemy                    
++
          lda #TYPE_EXPLOSION
          sta SPRITE_ACTIVE,x
          
          lda #15
          sta VIC_SPRITE_COLOR,x
          
          lda BIT_TABLE,x
          ora VIC_SPRITE_MULTICOLOR
          sta VIC_SPRITE_MULTICOLOR
          
          lda #SPRITE_EXPLOSION_1
          sta SPRITE_POINTER_BASE,x
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          sta SPRITE_ANIM_POS,x
          
          lda SPAWN_NO_ITEM
          bne .CreateNoItem
          ;only spawn item randomly
          jsr GenerateRandomNumber
          cmp #5
          bpl .CreateNoItem
          jsr SpawnItem
.CreateNoItem          
          rts
          
          
;------------------------------------------------------------
;sam uses power
;returns 1 when holding an enemy
;------------------------------------------------------------
!zone SamUseForce
SamUseForce
          lda SPRITE_HELD
          beq .NoSpriteHeldNow
          
          lda #1
          rts
          
.NoSpriteHeldNow          
          stx PARAM6
          
          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          lda #0
          sta PARAM7
          
.ShotContinue
          lda PARAM7
          cmp PLAYER_FORCE_RANGE
          beq .OutOfRange
          inc PARAM7
          ;y contains shot X pos
          ;PARAM6 contains x sprite index of player
          ldx PARAM6
          lda SPRITE_DIRECTION,x
          beq .ShootRight

          ;shooting left          
          dey
          
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          beq .CheckHitEnemy

          ldx PARAM6
.ShotDoneMiss   
.OutOfRange
          lda #0
.ShotDoneHit          
          rts
          
.ShootRight
          iny
          
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .ShotDoneMiss
          
.CheckHitEnemy          
          ;hit an enemy?
          ldx #0
          
.CheckEnemy          
          stx PARAM2
          sty PARAM1
          lda SPRITE_ACTIVE,x
          bne +
          jmp .CheckNextEnemy

+
          tax
          lda IS_TYPE_ENEMY,x
          bne +
          jmp .CheckNextEnemy

+
          ldx PARAM2
          ;is vulnerable?          
          lda SPRITE_STATE,x
          and #$80
          beq +
          jmp .CheckNextEnemy

+
          ;sprite pos matches on x?
          lda SPRITE_CHAR_POS_X,x
          cmp PARAM1
          beq +
          jmp .CheckNextEnemy
          
+          
          ;sprite pos matches on y?
          ldy PARAM6
          lda SPRITE_CHAR_POS_Y,x
          cmp SPRITE_CHAR_POS_Y,y
          beq .EnemyHit

          ;sprite pos matches on y + 1?
          clc
          adc #1
          cmp SPRITE_CHAR_POS_Y,y
          beq .EnemyHit

          ;sprite pos matches on y - 1?
          sec
          sbc #2
          cmp SPRITE_CHAR_POS_Y,y
          beq +
          jmp .CheckNextEnemy
+          
          
.EnemyHit          
          ;enemy hit!
          stx SPRITE_HELD
          ldy SPRITE_HELD
          inc SPRITE_HELD
          
          lda SPRITE_ACTIVE,y
          cmp #TYPE_BOSS7
          beq .HoldingBoss
          cmp #TYPE_BOSS_PART
          beq .HoldingBoss
          jmp .NotHoldingBoss
          
.HoldingBoss          
          sty BOSS_HELD
          inc BOSS_HELD
.NotHoldingBoss          
          ;redraw black beam
          ldx PARAM6
          
          ldy SPRITE_CHAR_POS_Y,x
          dey
          sty SAM_FORCE_START_Y
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          lda SPRITE_DIRECTION,x
          sta PARAM1
          
          lda #0
          sta SAM_FORCE_LENGTH
          
          ldx SPRITE_HELD
          dex
 
- 
          ;draw beam char
          lda #253
          sta (ZEROPAGE_POINTER_1),y
          lda #1
          sta (ZEROPAGE_POINTER_2),y
          
          inc SAM_FORCE_LENGTH
          
          lda PARAM1
          bne ++
          
          iny
          jmp +
          
++
          dey
          
+          
          tya
          cmp SPRITE_CHAR_POS_X,x
          bne -
          
          ;store for later removal
          ldx PARAM6
          lda PARAM1
          bne +
          
          ;going right
          lda SPRITE_CHAR_POS_X,x
          sta SAM_FORCE_START_X
          jmp ++
          
          
+
          ;going left
          sty SAM_FORCE_START_X
          inc SAM_FORCE_START_X
          
++          
          ldy SPRITE_HELD
          dey
          ldx SPRITE_ACTIVE,y
          lda IS_TYPE_ENEMY,x
          cmp #1
          bne .HitEnemy
          
          ;in 2p mode?
          ;TODO - if only one player is left?
          lda TWO_PLAYER_MODE_ACTIVE
          beq .HitEnemy
          
          ;no further action
          lda #1
          rts
          
.HitEnemy
          ldx SPRITE_HELD
          dex
          
          ;call enemy hit behaviour
          ldy SPRITE_ACTIVE,x
          ;enemy is active
          dey
          dey
          lda ENEMY_HIT_BEHAVIOUR_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda ENEMY_HIT_BEHAVIOUR_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ;set up return address for rts
          lda #>( .ShotDoneHit - 1 )
          pha 
          lda #<( .ShotDoneHit - 1 )
          pha
          
          ;1 as return value
          lda #1
          jmp (ZEROPAGE_POINTER_1)
          
.CheckNextEnemy     
          ldx PARAM2
          ldy PARAM1
          inx
          cpx #8
          beq .NoEnemyHit
          
          jmp .CheckEnemy

.NoEnemyHit
          jmp .ShotContinue
          
          
;restore play field from force beam          
!zone RemoveForceBeam          
RemoveForceBeam          
          ldy SAM_FORCE_START_Y
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_2 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_BACK_CHAR - SCREEN_BACK_COLOR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_4 + 1
          
          ldy SAM_FORCE_START_X
          
-          
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          
          iny
          dec SAM_FORCE_LENGTH
          bne -
          
          jsr RedrawItems
          rts
 
 
 
;redraw force beam (randomly)
!zone RedrawForceBeam          
RedrawForceBeam          
          ldy SAM_FORCE_START_Y
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          lda SAM_FORCE_LENGTH
          sta PARAM1
          
          ldy SAM_FORCE_START_X
          
-         
          jsr GenerateRandomNumber
          and #$03
          clc
          adc #252
          sta (ZEROPAGE_POINTER_1),y
          
          iny
          dec PARAM1
          bne -
          rts
 
 
 
;------------------------------------------------------------
;spawns an item at char position from object x
;X = object index
;------------------------------------------------------------
!zone SpawnItem
SpawnItem
          ;find free item slot
          ldy #0
          
.CheckNextItemSlot          
          lda ITEM_ACTIVE,y
          cmp #ITEM_NONE
          beq .FreeSlotFound
          iny
          cpy #ITEM_COUNT
          bne .CheckNextItemSlot
          rts
          
.FreeSlotFound          
          jsr GenerateRandomNumber
          
          and #$07
          cmp #ITEM_MAX
          bcc .ItemOk
          sec
          sbc #ITEM_MAX
          
.ItemOk          
          sta ITEM_ACTIVE,y
          sta PARAM1
          
          lda #0
          sta ITEM_TIME,y
          
          lda SPRITE_CHAR_POS_X,x
          sta ITEM_POS_X,y
          ;keep item in bounds
          cmp #37
          bmi .XIsOk
          lda #37
          sta ITEM_POS_X,y
.XIsOk          
          lda SPRITE_CHAR_POS_Y,x
          sec
          sbc #1
          sta ITEM_POS_Y,y
          cmp #21
          bne .YIsOk
          lda #20
          sta ITEM_POS_X,y
.YIsOk
          stx PARAM5
          tya
          tax
          jsr PutItemImage
          
          ldx PARAM5
          rts
          
          
;------------------------------------------------------------
;PlayerMoveLeft
;------------------------------------------------------------
!zone PlayerMoveLeft
PlayerMoveLeft  
          lda #1
          sta SPRITE_DIRECTION,x
          ;fall through


;------------------------------------------------------------
;move object left if not blocked
;x = object index
;------------------------------------------------------------
!zone ObjectMoveLeftBlocking
ObjectMoveLeftBlocking
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .CheckCanMoveLeft
          
.CanMoveLeft
          dec SPRITE_CHAR_POS_X_DELTA,x
          
          jsr MoveSpriteLeft
          lda #1
          rts
          
.CheckCanMoveLeft
          lda SPRITE_CHAR_POS_X,x
          cmp MOVE_BORDER_LEFT
          beq .BlockedLeft

          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .NoThirdCharCheckNeeded
          
          ldy SPRITE_CHAR_POS_Y,x
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          lda SPRITE_CHAR_POS_X,x
          clc
          adc #39
          tay
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedLeft
          
.NoThirdCharCheckNeeded          
          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          dey
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedLeft
          
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .BlockedLeft
          
          
          lda #8
          sta SPRITE_CHAR_POS_X_DELTA,x
          dec SPRITE_CHAR_POS_X,x
          jmp .CanMoveLeft
          
.BlockedLeft
          lda #0
          rts

          
;------------------------------------------------------------
;move object left
;x = object index
;------------------------------------------------------------
!zone ObjectMoveLeft
ObjectMoveLeft
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          bne .NoCharStep
          
          lda #8
          sta SPRITE_CHAR_POS_X_DELTA,x
          dec SPRITE_CHAR_POS_X,x
          
.NoCharStep
          dec SPRITE_CHAR_POS_X_DELTA,x
          
          jmp MoveSpriteLeft
          
          
;------------------------------------------------------------
;walk object left if not blocked and do not fall off
;x = object index
;------------------------------------------------------------
!zone ObjectWalkLeft
ObjectWalkLeft          
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .CheckCanMoveLeft
          
.CanMoveLeft
          dec SPRITE_CHAR_POS_X_DELTA,x
          
          jsr MoveSpriteLeft
          lda #1
          rts
          
.CheckCanMoveLeft
          jsr CanWalkLeft
          beq .Blocked
          
          lda #8
          sta SPRITE_CHAR_POS_X_DELTA,x
          dec SPRITE_CHAR_POS_X,x
          
          jmp .CanMoveLeft
          
.Blocked          
          rts


;------------------------------------------------------------
;checks if an object can walk left
;x = object index
;returns 0 if blocked
;returns 1 if possible
;------------------------------------------------------------
!zone CanWalkLeft
CanWalkLeft
          ldy SPRITE_CHAR_POS_Y,x
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          lda SPRITE_CHAR_POS_X,x
          clc
          adc #39
          tay
          
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlockingFall
          beq .BlockedLeft
          
          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          dey
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedLeft
          
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .BlockedLeft
          
          lda #1
          rts
          
          
.BlockedLeft
          lda #0
          rts
          
          
;------------------------------------------------------------
;PlayerMoveRight
;------------------------------------------------------------
!zone PlayerMoveRight
PlayerMoveRight
          lda #0
          sta SPRITE_DIRECTION,x
          ;fall through
          
                    
;------------------------------------------------------------
;move object right if not blocked
;x = object index
;------------------------------------------------------------
!zone ObjectMoveRightBlocking
ObjectMoveRightBlocking
                    
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .CheckCanMoveRight
          
.CanMoveRight
          inc SPRITE_CHAR_POS_X_DELTA,x
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_X_DELTA,x
          inc SPRITE_CHAR_POS_X,x
          
.NoCharStep          
          jsr MoveSpriteRight
          lda #1
          rts
          
.CheckCanMoveRight
          lda SPRITE_CHAR_POS_X,x
          cmp MOVE_BORDER_RIGHT
          beq .BlockedRight
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .NoThirdCharCheckNeeded
          
          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedRight
          
.NoThirdCharCheckNeeded          

          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          iny
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedRight
          
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .BlockedRight
          
          jmp .CanMoveRight
          
.BlockedRight 
          lda #0
          rts
          

;------------------------------------------------------------
;move object right
;x = object index
;------------------------------------------------------------
!zone ObjectMoveRight
ObjectMoveRight
                    
          inc SPRITE_CHAR_POS_X_DELTA,x
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_X_DELTA,x
          inc SPRITE_CHAR_POS_X,x
          
.NoCharStep          
          jsr MoveSpriteRight
          rts
          
          
;------------------------------------------------------------
;walk object right if not blocked, do not fall off
;x = object index
;------------------------------------------------------------
!zone ObjectWalkRight
ObjectWalkRight
                    
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .CheckCanMoveRight
          
.CanMoveRight
          inc SPRITE_CHAR_POS_X_DELTA,x
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_X_DELTA,x
          inc SPRITE_CHAR_POS_X,x
          
.NoCharStep          
          jsr MoveSpriteRight
          lda #1
          rts
          
.CheckCanMoveRight
          jsr CanWalkRight
          bne .CanMoveRight
          rts
          
          
;------------------------------------------------------------
;checks if an object can walk to the right
;x = object index
;returns 0 if blocked
;returns 1 if possible
;------------------------------------------------------------
!zone CanWalkRight
CanWalkRight
          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny

          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlockingFall
          beq .BlockedRight
          
          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          iny
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedRight
          
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .BlockedRight
          
          lda #1
          rts
          
.BlockedRight          
          lda #0
          rts


;------------------------------------------------------------
;walk object left if could fall off jump if blocked turn
;x = object index
;------------------------------------------------------------
!zone ObjectWalkOrJumpLeft
ObjectWalkOrJumpLeft          
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .CheckCanMoveLeft
          
.CanMoveLeft
          dec SPRITE_CHAR_POS_X_DELTA,x
          
          jsr MoveSpriteLeft
          lda #1
          rts
          
.CheckCanMoveLeft
          jsr CanWalkOrJumpLeft
          beq .Blocked
          
          cmp #1
          beq .WalkLeft

          ;jump
          lda SPRITE_JUMP_POS,x
          bne .WalkLeft
          
          lda #1
          sta SPRITE_JUMP_POS,x
          
.WalkLeft          
          lda #8
          sta SPRITE_CHAR_POS_X_DELTA,x
          dec SPRITE_CHAR_POS_X,x
          
          jmp .CanMoveLeft
          
.Blocked          
          rts

          
          
;place the data at a valid bitmap position, this avoids copying the data        
* = $2000        
;TITLE_LOGO_BMP_DATA
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,51,201,54,0,0,0,0,136,162,94,247
        !byte 0,0,0,0,0,2,138,1,0,0,0,0,192,48,188,96,0,0,0,0,12,15,9,13,0,0,0,0,128,162,98,130
        !byte 0,0,0,0,204,255,149,213,0,0,0,0,136,162,94,215,0,0,0,0,0,1,69,1,0,0,0,0,136,32,95,90
        !byte 0,0,0,0,12,51,151,37,0,0,0,0,0,1,69,1,0,0,0,0,204,255,165,154,0,0,0,0,128,32,120,222
        !byte 0,0,0,0,0,2,137,2,0,0,0,0,168,170,94,86,0,0,0,0,8,2,137,3,0,0,0,0,136,160,92,88
        !byte 0,0,0,0,8,2,10,1,0,0,0,0,204,240,172,92,0,0,0,0,8,34,9,33,0,0,0,0,136,170,85,125
        !byte 0,0,0,0,136,170,85,125,0,0,0,0,128,32,72,67,0,0,0,0,0,0,128,96,0,0,0,0,8,2,37,5
        !byte 0,0,0,0,128,0,98,192,0,0,0,3,51,255,233,230,0,0,0,0,32,136,94,247,0,0,0,0,0,0,16,64
        !byte 0,0,0,0,8,2,10,1,0,0,0,0,204,240,172,92,0,0,0,0,1,4,0,0,0,0,0,0,48,252,36,228
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,231,23,215,23,215,22,230,37,165,173,173,169,171,162,170,234
        !byte 206,2,206,2,206,1,206,13,88,80,88,88,92,88,92,90,9,3,11,3,11,3,2,3,64,1,64,1,65,1,65,1
        !byte 150,214,150,150,150,150,150,150,229,173,229,173,173,173,229,173,200,226,106,98,106,98,106,226,156,239,172,223,155,159,91,91
        !byte 165,41,139,3,138,2,128,0,69,1,69,1,69,1,5,1,155,159,91,159,91,159,91,159,230,38,246,53,53,53,246,54
        !byte 69,1,69,1,69,1,65,1,86,85,85,149,149,149,149,213,207,243,188,179,124,111,108,95,88,208,216,176,216,176,216,240
        !byte 14,2,14,1,13,1,13,13,88,92,88,91,87,155,215,150,9,33,139,35,10,2,128,2,109,233,237,169,173,41,173,41
        !byte 109,121,107,234,106,226,232,224,75,99,107,227,201,161,139,9,108,96,108,96,108,80,108,80,9,13,14,13,14,1,14,2
        !byte 133,80,65,0,65,4,65,5,230,231,214,230,214,230,150,231,249,201,253,205,205,205,253,205,224,72,224,72,224,72,224,200
        !byte 14,2,14,1,14,1,14,13,152,92,88,91,87,155,215,150,0,0,0,0,0,0,64,0,232,251,251,59,247,43,231,39
        !byte 0,0,64,0,64,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,165,41,11,2,10,2,0,0,111,91,86,149,149,229,229,57
        !byte 206,253,253,253,190,109,126,110,88,92,88,95,88,92,88,95,10,1,2,1,10,1,10,1,65,65,65,65,65,65,64,1
        !byte 150,149,149,149,149,213,149,213,229,245,87,94,122,226,232,160,133,81,69,1,69,1,5,1,86,94,85,85,86,94,86,94
        !byte 136,32,120,248,136,160,128,0,5,1,5,1,5,21,5,21,91,159,91,86,85,90,91,91,166,182,216,114,104,242,248,218
        !byte 65,0,1,0,1,0,65,1,165,233,169,237,174,226,191,99,91,91,86,86,86,85,85,149,156,144,92,144,92,80,92,80
        !byte 9,9,197,53,245,53,245,38,151,149,149,213,149,213,85,181,192,192,128,240,128,176,112,112,201,57,57,57,57,57,57,57
        !byte 232,224,232,96,232,224,104,96,9,9,9,9,9,9,9,9,108,80,108,92,92,92,92,92,14,2,14,13,14,13,13,13
        !byte 65,69,69,69,69,69,65,69,150,167,150,149,213,150,214,150,169,173,182,220,90,252,158,150,80,64,0,64,0,64,16,64
        !byte 9,9,197,53,245,53,245,38,151,149,149,213,149,213,85,149,192,192,128,240,128,176,112,176,150,54,150,54,150,54,182,54
        !byte 64,64,64,80,64,80,64,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,40,38,165,45,173,45,165,45,165,247
        !byte 110,110,111,111,127,175,188,195,91,95,91,91,91,154,150,213,14,49,253,57,249,230,150,87,64,65,64,1,64,1,64,0
        !byte 149,213,149,213,150,214,215,23,64,64,64,0,64,0,64,0,5,1,5,1,5,1,5,1,91,91,87,91,87,86,86,85
        !byte 204,3,207,62,249,233,165,85,15,51,143,115,79,115,124,112,86,94,86,94,86,94,94,218,155,219,151,214,230,229,229,53
        !byte 15,3,207,3,192,243,188,115,250,114,248,112,96,112,80,80,149,213,229,37,245,57,249,13,88,88,88,88,88,88,88,80
        !byte 231,23,215,27,216,220,156,208,229,245,245,57,249,61,13,2,104,112,104,112,120,80,88,80,57,13,57,13,57,13,9,13
        !byte 104,96,104,96,104,96,96,224,9,3,9,3,10,2,8,2,88,92,88,95,91,91,86,213,9,9,137,45,135,182,214,92
        !byte 65,0,65,0,65,0,65,0,149,149,149,149,149,151,21,55,230,230,229,245,233,249,249,205,192,192,240,128,176,124,108,92
        !byte 231,23,215,27,152,220,172,144,229,245,229,57,249,61,13,2,104,240,104,112,120,80,88,80,231,43,231,43,247,43,231,38
        !byte 128,160,128,0,136,34,138,37,0,0,0,0,136,168,96,104,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,2,0,0,0,0,0,0,91,175,252,0,0,0,0,0
        !byte 64,0,64,0,0,0,0,0,229,58,255,0,0,0,0,0,91,175,252,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 150,42,136,0,0,0,0,0,0,0,0,0,0,0,0,0,9,2,0,0,0,0,0,0,170,85,68,0,0,0,0,0
        !byte 170,85,68,0,0,0,0,0,132,80,64,0,0,0,0,0,164,85,68,0,0,0,0,0,165,42,136,0,0,0,0,0
        !byte 128,80,64,0,0,0,0,0,160,16,64,0,0,0,0,0,5,1,4,0,0,0,0,0,164,81,68,0,0,0,0,0
        !byte 160,16,64,0,0,0,0,0,5,1,0,0,0,0,0,0,164,80,68,0,0,0,0,0,9,2,8,0,0,0,0,0
        !byte 64,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,149,42,136,0,0,0,0,0,164,80,68,0,0,0,0,0
        !byte 1,0,0,0,0,0,0,0,38,42,34,0,0,0,0,0,41,138,34,0,0,0,0,0,160,84,16,0,0,0,0,0
        !byte 160,16,64,0,0,0,0,0,5,1,0,0,0,0,0,0,164,80,68,0,0,0,0,0,229,63,204,0,0,0,0,0
        !byte 149,255,204,0,0,0,0,0,144,68,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0



 

;------------------------------------------------------------
;drive left/pause/drive off left
;------------------------------------------------------------
!zone BehaviourImpala
BehaviourImpalaDebris
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          and #$04
          lsr
          lsr
          clc
          adc #SPRITE_DEBRIS_1
          sta SPRITE_POINTER_BASE,x

BehaviourImpala

          lda SPRITE_STATE,x
          beq .DriveFirstHalf
          cmp #1
          beq .HandlePause
          
          ;drive off
          jsr MoveSpriteLeft
          lda SPRITE_POS_X,x
          beq .DriveDone
          rts
          
.DriveDone
          jsr RemoveObject
          rts
          
.DriveFirstHalf
          jsr MoveSpriteLeft
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #200
          beq .NextState
          rts
          
.NextState       
          inc SPRITE_STATE,x
          lda #0
          sta SPRITE_MOVE_POS,x
          rts
          
.HandlePause  
          inc SPRITE_MOVE_POS,x
          beq .NextState
          rts


          

        ;here is some free memory in between!
TITLE_LOGO_COLORRAM
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,6,8,0,6,6,0,6,8,0,8,6,0,6,8,0,8,8,8,0,6,0,8
        !byte 8,8,0,0,8,6,8,0,0,6,0,6,0,0,0,0,0,0,6,8,6,8,8,0,6,8,8,6,8,0,6,6
        !byte 0,6,6,8,6,6,8,8,8,8,6,6,0,6,6,8,6,6,0,6,0,0,0,0,0,0,8,6,6,6,0,0
        !byte 6,8,0,8,8,0,6,8,0,6,6,6,6,8,6,6,8,0,6,6,0,6,8,0,6,8,6,8,0,0,0,0
        !byte 0,0,0,8,6,6,6,0,6,0,0,6,6,6,8,6,6,8,6,0,6,6,8,6,8,8,6,8,0,8,6,6
        !byte 6,6,8,6,0,0,0,0,0,0,0,6,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

SCREEN_LINE_OFFSET_TABLE_LO
          !byte ( SCREEN_CHAR +   0 ) & 0x00ff
          !byte ( SCREEN_CHAR +  40 ) & 0x00ff
          !byte ( SCREEN_CHAR +  80 ) & 0x00ff
          !byte ( SCREEN_CHAR + 120 ) & 0x00ff
          !byte ( SCREEN_CHAR + 160 ) & 0x00ff
          !byte ( SCREEN_CHAR + 200 ) & 0x00ff
          !byte ( SCREEN_CHAR + 240 ) & 0x00ff
          !byte ( SCREEN_CHAR + 280 ) & 0x00ff
          !byte ( SCREEN_CHAR + 320 ) & 0x00ff
          !byte ( SCREEN_CHAR + 360 ) & 0x00ff
          !byte ( SCREEN_CHAR + 400 ) & 0x00ff
          !byte ( SCREEN_CHAR + 440 ) & 0x00ff
          !byte ( SCREEN_CHAR + 480 ) & 0x00ff
          !byte ( SCREEN_CHAR + 520 ) & 0x00ff
          !byte ( SCREEN_CHAR + 560 ) & 0x00ff
          !byte ( SCREEN_CHAR + 600 ) & 0x00ff
          !byte ( SCREEN_CHAR + 640 ) & 0x00ff
          !byte ( SCREEN_CHAR + 680 ) & 0x00ff
          !byte ( SCREEN_CHAR + 720 ) & 0x00ff
          !byte ( SCREEN_CHAR + 760 ) & 0x00ff
          !byte ( SCREEN_CHAR + 800 ) & 0x00ff
          !byte ( SCREEN_CHAR + 840 ) & 0x00ff
          !byte ( SCREEN_CHAR + 880 ) & 0x00ff
          !byte ( SCREEN_CHAR + 920 ) & 0x00ff
          !byte ( SCREEN_CHAR + 960 ) & 0x00ff
          
SCREEN_LINE_OFFSET_TABLE_HI
          !byte ( ( SCREEN_CHAR +   0 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR +  40 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR +  80 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 120 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 160 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 200 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 240 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 280 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 320 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 360 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 400 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 440 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 480 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 520 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 560 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 600 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 640 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 680 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 720 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 760 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 800 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 840 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 880 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 920 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_CHAR + 960 ) & 0xff00 ) >> 8
          
SCREEN_BACK_LINE_OFFSET_TABLE_HI
          !byte ( ( SCREEN_BACK_CHAR +   0 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR +  40 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR +  80 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 120 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 160 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 200 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 240 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 280 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 320 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 360 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 400 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 440 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 480 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 520 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 560 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 600 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 640 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 680 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 720 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 760 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 800 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 840 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 880 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 920 ) & 0xff00 ) >> 8
          !byte ( ( SCREEN_BACK_CHAR + 960 ) & 0xff00 ) >> 8

* = $2c00
;TITLE_LOGO_SCREEN_CHAR
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,120,118,134,120,120,134,120,118,96,118,120,96,120,118,134,118,118,118,134,120,118,118
        !byte 118,118,120,118,118,120,118,96,134,120,96,120,0,0,0,0,0,0,120,118,120,118,118,96,120,118,118,120,118,96,120,120
        !byte 96,120,120,118,120,120,118,118,118,118,120,120,104,120,120,118,120,120,96,120,96,0,0,0,0,0,118,120,120,120,134,96
        !byte 120,118,104,118,118,96,120,118,96,120,120,120,120,118,120,120,118,118,120,120,96,120,118,96,120,118,120,118,96,0,0,0
        !byte 0,0,134,118,120,120,120,96,120,96,96,120,120,120,118,120,120,118,120,118,120,120,118,120,118,118,120,118,96,118,120,120
        !byte 120,120,118,120,134,134,0,0,0,0,134,120,96,120,120,0,134,0,134,104,104,104,104,134,104,104,96,104,104,96,104,134
        !byte 96,0,134,104,96,134,134,104,104,96,104,120,120,104,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
        !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

* = $3000
MUSIC_PLAYER
!binary "music.bin",,2


;------------------------------------------------------------
;checks if an object can walk or jump left (jump if would fall off)
;x = object index
;returns 0 if blocked
;returns 1 if possible
;returns 2 if jump required (not blocked, but in front of hole)
;------------------------------------------------------------
!zone CanWalkOrJumpLeft
CanWalkOrJumpLeft
          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          dey
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedLeft
          
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .BlockedLeft

          ;is a hole in front          
          ldy SPRITE_CHAR_POS_Y,x
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          lda SPRITE_CHAR_POS_X,x
          clc
          adc #39
          tay
          
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlockingFall
          bne .NoHole

          lda #2
          rts
          
.NoHole          
          lda #1
          rts
          
          
.BlockedLeft
          lda #0
          rts


;------------------------------------------------------------
;walk object right if could fall off jump if blocked turn
;x = object index
;------------------------------------------------------------
!zone ObjectWalkOrJumpRight
ObjectWalkOrJumpRight
                    
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .CheckCanMoveRight
          
.CanMoveRight
          inc SPRITE_CHAR_POS_X_DELTA,x
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_X_DELTA,x
          inc SPRITE_CHAR_POS_X,x
          
.NoCharStep          
          jsr MoveSpriteRight
          lda #1
          rts
          
.CheckCanMoveRight
          jsr CanWalkOrJumpRight
          beq .Blocked
          
          cmp #1
          beq .CanMoveRight

          ;jump
          lda SPRITE_JUMP_POS,x
          bne .CanMoveRight
          
          lda #1
          sta SPRITE_JUMP_POS,x
          jmp .CanMoveRight
          
.Blocked          
          rts
          
          



;------------------------------------------------------------
;checks if an object can walk or jump right (jump if would fall off)
;x = object index
;returns 0 if blocked
;returns 1 if possible
;------------------------------------------------------------
!zone CanWalkOrJumpRight
CanWalkOrJumpRight
          ldy SPRITE_CHAR_POS_Y,x
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          iny
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedRight
          
          tya
          clc
          adc #40
          tay
          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlocking
          bne .BlockedRight

          ;is a hole in front?
          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          iny

          lda (ZEROPAGE_POINTER_1),y
          jsr IsCharBlockingFall
          bne .NoHole

          lda #2
          rts
          
.NoHole          
          lda #1
          rts
          
.BlockedRight          
          lda #0
          rts


!zone Extro
Extro
          lda #$0b
          sta VIC_CONTROL_MODE
          jsr WaitFrame

          lda #0
          sta VIC_SPRITE_ENABLE
          sta VIC_SPRITE_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta MOVE_STONES
          
          ;clear screen
          lda #32
          ldy #1
          jsr ClearScreen
          jsr ResetObjects
          
          lda #<TEXT_EXTRO
          sta ZEROPAGE_POINTER_1
          lda #>TEXT_EXTRO
          sta ZEROPAGE_POINTER_1 + 1
          
          lda #0
          sta VIC_SPRITE_ENABLE
          sta VIC_SPRITE_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta MOVE_STONES
          
          lda #1
          sta PARAM1
          lda #1
          sta PARAM2
          jsr DisplayText
          
          lda #$1b
          sta VIC_CONTROL_MODE
          
          ldx #0
          stx BUTTON_PRESSED
          stx BUTTON_RELEASED 
          stx VIC_SPRITE_PRIORITY

.ExtroLoop          
          jsr WaitFrame
          jsr ObjectControl
          
          lda #$10
          bit JOYSTICK_PORT_II
          bne .ButtonNotPressed
          
          ;button pushed
          lda BUTTON_RELEASED
          beq .ExtroLoop
          
          jmp HighScoreDirect
          
.ButtonNotPressed
          lda #1
          sta BUTTON_RELEASED
          jmp .ExtroLoop


;------------------------------------------------------------
;move object up if not blocked
;x = object index
;------------------------------------------------------------
!zone ObjectMoveUpBlocking
ObjectMoveUpBlocking
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .CheckCanMoveUp
          
.CanMoveUp
          dec SPRITE_CHAR_POS_Y_DELTA,x
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          cmp #$ff
          bne .NoCharStep
          
          dec SPRITE_CHAR_POS_Y,x
          lda #7
          sta SPRITE_CHAR_POS_Y_DELTA,x
          
.NoCharStep          
          jsr MoveSpriteUp
          lda #1
          rts
          
.CheckCanMoveUp
          lda SPRITE_CHAR_POS_Y,x
          cmp MOVE_BORDER_TOP
          beq .BlockedUp

          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .NoSecondCharCheckNeeded
          
          ldy SPRITE_CHAR_POS_Y,x
          dey
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedUp
          
.NoSecondCharCheckNeeded          

          ldy SPRITE_CHAR_POS_Y,x
          dey
          dey
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedUp
          
          jmp .CanMoveUp
          
.BlockedUp
          lda #0
          rts
          
          
;------------------------------------------------------------
;move object up
;x = object index
;------------------------------------------------------------
!zone ObjectMoveUp
ObjectMoveUp
          
          dec SPRITE_CHAR_POS_Y_DELTA,x
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          cmp #$ff
          bne .NoCharStep
          
          dec SPRITE_CHAR_POS_Y,x
          lda #7
          sta SPRITE_CHAR_POS_Y_DELTA,x
          
.NoCharStep          
          jmp MoveSpriteUp
          
          
          



;------------------------------------------------------------
;move object down if not blocked
;x = object index
;------------------------------------------------------------
!zone ObjectMoveDownBlocking
ObjectMoveDownBlocking
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .CheckCanMoveDown
          
.CanMoveDown
          inc SPRITE_CHAR_POS_Y_DELTA,x
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_Y_DELTA,x
          inc SPRITE_CHAR_POS_Y,x
          
.NoCharStep          
          jsr MoveSpriteDown
          lda #1
          rts
          
.CheckCanMoveDown
          lda SPRITE_CHAR_POS_Y,x
          cmp MOVE_BORDER_BOTTOM
          beq .BlockedDown

          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .NoSecondCharCheckNeeded
          
          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlockingFall
          bne .BlockedDown
          
.NoSecondCharCheckNeeded          

          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlockingFall
          bne .BlockedDown
          
          jmp .CanMoveDown
          
.BlockedDown
          lda #0
          rts


;------------------------------------------------------------
;move object down if not blocked
;x = object index
;------------------------------------------------------------
!zone ObjectMoveDownBlockingNoPlatform
ObjectMoveDownBlockingNoPlatform
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          beq .CheckCanMoveDown
          
.CanMoveDown
          inc SPRITE_CHAR_POS_Y_DELTA,x
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_Y_DELTA,x
          inc SPRITE_CHAR_POS_Y,x
          
.NoCharStep          
          jsr MoveSpriteDown
          lda #1
          rts
          
.CheckCanMoveDown
          lda SPRITE_CHAR_POS_Y
          cmp MOVE_BORDER_BOTTOM
          beq .BlockedDown
          
          lda SPRITE_CHAR_POS_X_DELTA,x
          beq .NoSecondCharCheckNeeded
          
          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1

          ldy SPRITE_CHAR_POS_X,x
          iny
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedDown
          
.NoSecondCharCheckNeeded          

          ldy SPRITE_CHAR_POS_Y,x
          iny
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ldy SPRITE_CHAR_POS_X,x
          
          lda (ZEROPAGE_POINTER_1),y
          
          jsr IsCharBlocking
          bne .BlockedDown
          
          jmp .CanMoveDown
          
.BlockedDown
          lda #0
          rts
          

;------------------------------------------------------------
;move object down
;x = object index
;------------------------------------------------------------
!zone ObjectMoveDown
ObjectMoveDown
          
          inc SPRITE_CHAR_POS_Y_DELTA,x
          
          lda SPRITE_CHAR_POS_Y_DELTA,x
          cmp #8
          bne .NoCharStep
          
          lda #0
          sta SPRITE_CHAR_POS_Y_DELTA,x
          inc SPRITE_CHAR_POS_Y,x
          
.NoCharStep          
          jsr MoveSpriteDown
          rts


          


;------------------------------------------------------------
;Enemy Behaviour
;------------------------------------------------------------
!zone ObjectControl
ObjectControl
          ldx #0
          stx CURRENT_INDEX
.ObjectLoop          
          ;object does not move when held
          lda SPRITE_HELD
          sta PARAM1
          dec PARAM1
          cpx PARAM1
          beq .NextObject
          
          ;does object exist?
          ldy SPRITE_ACTIVE,x
          beq .NextObject
          
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne +
          
          ;check if we're in water
          ldy SPRITE_CHAR_POS_Y,x
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda SCREEN_BACK_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          lda SPRITE_CHAR_POS_X,x
          tay
          lda (ZEROPAGE_POINTER_1),y
          cmp #111
          beq .NextObject
          cmp #143
          beq .NextObject
          
+          
          ldy SPRITE_ACTIVE,x
          
          ;enemy is active
          dey
          lda ENEMY_BEHAVIOUR_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          lda ENEMY_BEHAVIOUR_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          
          ;set up return address for rts
          lda #>( .NextObject - 1 )
          pha 
          lda #<( .NextObject - 1 )
          pha
          
          jmp (ZEROPAGE_POINTER_1)
          
.NextObject  
          inc CURRENT_INDEX
          ldx CURRENT_INDEX
          cpx #8
          bne .ObjectLoop
          rts

!zone BehaviourNone
BehaviourNone
          rts


!zone HitBehaviourBossHelper
HitBehaviourBossHelper
          lda #8
          sta SPRITE_HITBACK,x

          inc SPRITE_ANNOYED,x
          
          ldy SPRITE_ACTIVE,x
          lda TYPE_ANNOYED_COLOR,y
          sta VIC_SPRITE_COLOR,x
          rts


;------------------------------------------------------------
;handles simple hitback
;------------------------------------------------------------
!zone HandleHitBack
HandleHitBack
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          lda SPRITE_HITBACK_DIRECTION,x
          beq .HitBackRight
          
          ;move left
          jsr ObjectMoveLeftBlocking
          lda #1
          rts
          
.HitBackRight          
          jsr ObjectMoveRightBlocking
          lda #1
          rts
          
.NoHitBack
          lda #0
          rts


;------------------------------------------------------------
;simply move diagonal
;------------------------------------------------------------
!zone BehaviourBatDiagonal
BehaviourBatDiagonal
          jsr HandleHitBack
          beq .NoHitBack
          rts

.RandomDir
          jsr GenerateRandomNumber
          and #$07
          sta SPRITE_DIRECTION,x
          inc SPRITE_DIRECTION,x
          
          lda #0
          sta SPRITE_MOVE_POS,x
          rts


.NoHitBack          
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda BAT_ANIMATION,y
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          lda SPRITE_DIRECTION,x
          beq .RandomDir
          cmp #1
          beq .MoveCCWWN
          cmp #2
          beq .MoveCCWSW
          cmp #3
          beq .MoveCCWES
          cmp #4
          beq .MoveCCWNE
          cmp #5
          bne +
          jmp .MoveCWWS
+          
          cmp #6
          bne +
          jmp .MoveCWNW
+          
          cmp #7
          bne +
          jmp .MoveCWEN
+          
          cmp #8
          bne +
          jmp .MoveCWSE
+          
.NextStep          
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #16
          bne +
          
          lda #0
          sta SPRITE_DIRECTION,x
          sta SPRITE_MOVE_POS,x
+
          rts
          
.MoveCCWWN
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveUp
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveRight
          jmp .NextStep

.MoveCCWSW
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveLeft
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveUp
          jmp .NextStep

.MoveCCWES
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveDown
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveLeft
          jmp .NextStep

.MoveCCWNE
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveRight
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveDown
          jmp .NextStep

.MoveCWWS
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveDown
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveRight
          jmp .NextStep

.MoveCWNW
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveLeft
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveDown
          jmp .NextStep

.MoveCWEN
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveUp
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveLeft
          jmp .NextStep

.MoveCWSE
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE,y
          sta PARAM3
          jsr .TryMoveRight
          
          ldy SPRITE_MOVE_POS,x
          lda PATH_CURVE_R,y
          sta PARAM3
          jsr .TryMoveUp
          jmp .NextStep


.Blocked
          lda #0
          sta SPRITE_DIRECTION,x
          rts

.TryMoveUp
          beq +
          
          jsr ObjectMoveUpBlocking
          beq .Blocked
          
          dec PARAM3
          jmp .TryMoveUp
          
+     
          rts
          
.TryMoveDown
          beq +
          
          jsr ObjectMoveDownBlocking
          beq .Blocked
          
          dec PARAM3
          jmp .TryMoveDown
          
+     
          rts
          
.TryMoveLeft
          beq +
          
          jsr ObjectMoveLeftBlocking
          beq .Blocked
          
          dec PARAM3
          jmp .TryMoveLeft
          
+     
          rts
          
.TryMoveRight
          beq +
          
          jsr ObjectMoveRightBlocking
          beq .Blocked
          
          dec PARAM3
          jmp .TryMoveRight
          
+     
          rts
          

!if 0 {
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          jmp .MoveY
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          jmp .MoveY
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          
.MoveY
          lda SPRITE_DIRECTION_Y,x
          beq .MoveDown
          
          ;move up
          jsr ObjectMoveUpBlocking
          beq .ToggleDirectionY
          rts
          
.MoveDown
          jsr ObjectMoveDownBlocking
          beq .ToggleDirectionY
          rts
          
.ToggleDirectionY
          lda SPRITE_DIRECTION_Y,x
          eor #1
          sta SPRITE_DIRECTION_Y,x
          rts
 
}
          

 


;------------------------------------------------------------
;simply move up/down
;------------------------------------------------------------
!zone BehaviourBatUD
BehaviourBatUD
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda BAT_ANIMATION,y
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          lda SPRITE_DIRECTION,x
          beq .MoveDown
          
          ;move up
          jsr ObjectMoveUpBlocking
          beq .ToggleDirection
          rts
          
.MoveDown
          jsr ObjectMoveDownBlocking
          beq .ToggleDirection
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          rts


;------------------------------------------------------------
;single attacking bat
;------------------------------------------------------------
!zone BehaviourBatAttacking
BehaviourBatAttacking
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda BAT_ANIMATION,y
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          lda #3
          sta PARAM1
          lda SPRITE_DIRECTION,x
          beq .MoveRight

.MoveLeft
          jsr ObjectMoveLeft
          dec PARAM1
          bne .MoveLeft
          jmp .XMoveDone
          
.MoveRight
          jsr ObjectMoveRight
          dec PARAM1
          bne .MoveRight
          
.XMoveDone
          lda SPRITE_CHAR_POS_X,x
          cmp #255
          beq .RemoveMe
          cmp #39
          beq .RemoveMe
          rts
          
.RemoveMe
          inc SPAWN_NO_ITEM
          jsr KillEnemy
          dec SPAWN_NO_ITEM
          rts

;------------------------------------------------------------
;simply walk left/right, don't fall off
;------------------------------------------------------------
!zone BehaviourMummy
BehaviourMummy
          jsr HandleHitBack
          beq .NoHitBack
          rts
          
.NoHitBack          
          jsr ObjectMoveDownBlocking
          beq .NotFalling
          rts
          
.NotFalling          
          lda SPRITE_CHAR_POS_Y,x
          cmp SPRITE_CHAR_POS_Y
          bne .NoPlayerInSight
          
          ;player on same height
          ;looking at the player?
          jsr LookingAtPlayer
          beq .NoPlayerInSight

          lda #SPRITE_MUMMY_ATTACK_R
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
          lda SPRITE_DIRECTION,x
          beq .AttackRight
          
          ;attack to left
          jsr ObjectMoveLeftBlocking
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          rts
          
.AttackRight
          ;attack to left
          jsr ObjectMoveRightBlocking
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          rts

.NoPlayerInSight
          lda DELAYED_GENERIC_COUNTER
          and #$03
          beq .MovementUpdate
          rts
          
.MovementUpdate
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          and #$03
          sta SPRITE_MOVE_POS,x
          
          cmp #2
          
          bpl .CanMove

          lda #SPRITE_MUMMY_R_2
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts

.CanMove
          lda #SPRITE_MUMMY_R_1
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          jsr ObjectWalkLeft
          beq .ToggleDirection
          rts
          
.MoveRight
          jsr ObjectWalkRight
          beq .ToggleDirection
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          clc
          adc #SPRITE_MUMMY_R_1
          sta SPRITE_POINTER_BASE,x
          rts
 
 
 
;------------------------------------------------------------
;simply walk left/right, don't fall off
;------------------------------------------------------------
!zone BehaviourDevil
BehaviourDevil
          jsr HandleHitBack
          beq .NoHitBack
          rts
.NoHitBack          
          jsr ObjectMoveDownBlocking
          beq .NotFalling
          rts
          
.NotFalling          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #8
          bne .NoAnimUpdate
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          cmp #3
          bne .NoWrap
          lda #0
.NoWrap          
          sta SPRITE_ANIM_POS,x
          
          clc
          asl
          adc SPRITE_DIRECTION,x
          adc #SPRITE_DEVIL_WALK_R_1
          sta SPRITE_POINTER_BASE,x

.NoAnimUpdate
          lda SPRITE_CHAR_POS_Y,x
          cmp SPRITE_CHAR_POS_Y
          bne .NoPlayerInSight
          
          ;player on same height
          ;looking at the player?
          jsr LookingAtPlayer
          beq .NoPlayerInSight

          lda SPRITE_DIRECTION,x
          beq .AttackRight
          
          ;attack to left
          jsr ObjectMoveLeftBlocking
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          rts
          
.AttackRight
          ;attack to left
          jsr ObjectMoveRightBlocking
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          rts

.NoPlayerInSight
          lda DELAYED_GENERIC_COUNTER
          and #$03
          beq .MovementUpdate
          rts
          
.MovementUpdate
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          and #$03
          sta SPRITE_MOVE_POS,x
          
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          jsr ObjectWalkLeft
          beq .ToggleDirection
          rts
          
.MoveRight
          jsr ObjectWalkRight
          beq .ToggleDirection
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          clc
          adc #SPRITE_DEVIL_WALK_R_1
          sta SPRITE_POINTER_BASE,x
          rts


;------------------------------------------------------------
;simply walk left/right, don't fall off
;------------------------------------------------------------
!zone BehaviourZombie
BehaviourZombie
          jsr HandleHitBack
          beq .NoHitBack
          rts

.NoHitBack          
          lda SPRITE_JUMP_POS,x
          bne .IsJumping
          jsr ObjectMoveDownBlocking
          bne .Falling
          
.IsJumping          
          lda DELAYED_GENERIC_COUNTER
          and #$03
          beq .MovementUpdate
          rts
          
.Falling  
          rts
          
.MovementUpdate
          lda SPRITE_JUMP_POS,x
          bne .UpdateJump
          lda SPRITE_STATE,x
          bne .OtherStates

          jsr GenerateRandomNumber
          cmp #17
          beq .Jump
          jmp .NormalWalk
          
.OtherStates          
          ;collapsing?
          cmp #128
          beq .Collapsing1
          cmp #129
          beq .Collapsing2
          cmp #131
          bne .NotWakeUp1
          jmp .WakeUp1
.NotWakeUp1          
          cmp #132
          bne .NotWakeUp2
          jmp .WakeUp2
.NotWakeUp2          
          cmp #130
          bne .NotHidden
          jmp .Hidden
          
.NotHidden          
          rts          
          
.Jump
          ;start jump
          lda #SPRITE_ZOMBIE_JUMP_R
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
.UpdateJump
          jsr UpdateSpriteJump
          rts

.Collapsing1
          lda #SPRITE_ZOMBIE_COLLAPSE_R_2
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          inc SPRITE_STATE,x
          rts
          
.Collapsing2
          lda #SPRITE_INVISIBLE
          sta SPRITE_POINTER_BASE,x
          
          inc SPRITE_STATE,x

          ;generate hidden time
          jsr GenerateRandomNumber
          and #$31
          clc
          adc #25
          sta SPRITE_MOVE_POS,x
          
          ;normalise position on full char
          ldy SPRITE_CHAR_POS_X_DELTA,x
          sty PARAM5
.CheckXPos          
          beq .XPosClear
          jsr ObjectMoveLeft
          dec PARAM5
          jmp .CheckXPos
          
.XPosClear          
          ldy SPRITE_CHAR_POS_Y_DELTA,x
          sty PARAM5
.CheckYPos          
          beq .YPosClear
          jsr ObjectMoveUp
          dec PARAM5
          jmp .CheckYPos
.YPosClear          
          rts
          
          
.WakeUp1
          ;only animate head to warn player
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #20
          beq .ReallyWakeUp
          
          and #$07
          bne ++
          
          ;show head
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          
          lda #SPRITE_ZOMBIE_COLLAPSE_R_2
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
++          
          rts
          
          
.ReallyWakeUp          
          inc SPRITE_STATE,x
          rts
          
.WakeUp2
          lda #SPRITE_ZOMBIE_WALK_R_1
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
          lda #0
          sta SPRITE_STATE,x
          sta SPRITE_MOVE_POS,x
          rts
          
          
.NormalWalk          
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          and #$07
          sta SPRITE_MOVE_POS,x
          cmp #4
          
          bpl .CanMove
          
          lda #SPRITE_ZOMBIE_WALK_R_1
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts

.CanMove
          lda #SPRITE_ZOMBIE_WALK_R_2
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          
          lda SPRITE_ANNOYED,x
          beq .NotAnnoyed
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
.NotAnnoyed          
          rts
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          lda SPRITE_ANNOYED,x
          beq .NotAnnoyed
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          rts
 
.Hidden
          ;are we apt to wake up?
          dec SPRITE_MOVE_POS,x
          bne .RandomMove

          ;wake up          
          inc SPRITE_STATE,x
          lda #SPRITE_ZOMBIE_COLLAPSE_R_2
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.RandomMove          
          ;move randomly left/right
          jsr GenerateRandomNumber
          and #$01
          beq .MoveLeft

          ;move right if possible          
          jsr CanWalkRight
          beq .Blocked
          
          inc SPRITE_CHAR_POS_X,x
          
          ldy #8
          sty PARAM5
          
.MoveSpriteRight          
          jsr MoveSpriteRight
          dec PARAM5
          bne .MoveSpriteRight
          rts          
          
.MoveLeft          
          jsr CanWalkLeft
          beq .Blocked
          
          dec SPRITE_CHAR_POS_X,x
          
          ldy #8
          sty PARAM5
          
.MoveSpriteLeft
          jsr MoveSpriteLeft
          dec PARAM5
          bne .MoveSpriteLeft
          rts          

.Blocked
          rts

;------------------------------------------------------------
;vanishing bat
;------------------------------------------------------------
!zone BehaviourBatVanishing
BehaviourBatVanishing
          lda SPRITE_STATE,x
          bne .NotNormal
          jmp .NormalUpdate
          
.NotNormal
          cmp #128
          beq .Vanish1
          cmp #129
          beq .Hidden
          cmp #130
          beq .Spawn
          cmp #1
          bne .NoSpecialBehaviour
          jmp .AttackFlight
          
.NoSpecialBehaviour          
          rts
          
.Vanish1
          lda DELAYED_GENERIC_COUNTER
          and #$07
          bne .NoSpecialBehaviour
          
          lda #SPRITE_INVISIBLE
          sta SPRITE_POINTER_BASE,x
          
          inc SPRITE_STATE,x
          jsr GenerateRandomNumber
          adc #24
          sta SPRITE_MOVE_POS,x
          rts
          
.Spawn          
          lda DELAYED_GENERIC_COUNTER
          and #$07
          bne .NoSpecialBehaviour
          
          lda #1
          sta SPRITE_STATE,x
          lda #SPRITE_BAT_1
          sta SPRITE_POINTER_BASE,x
          rts

.Hidden
          dec SPRITE_MOVE_POS,x
          beq .Unhide
          rts
          
.Unhide

          ;position diagonal above/below player
          lda SPRITE_CHAR_POS_X
          cmp #SPAWN_LEFT_BORDER
          bcc .SpawnOnRight
          cmp #SPAWN_RIGHT_BORDER
          bcs .SpawnOnLeft
          
          ;randomly choose
          jsr GenerateRandomNumber
          and #$01
          beq .SpawnOnRight
          
          
.SpawnOnLeft
          lda SPRITE_CHAR_POS_X
          sec
          sbc #5
          sta PARAM1
          
          lda #0
          sta SPRITE_DIRECTION,x
          jmp .FindYSpawnPos

          
.SpawnOnRight          
          lda SPRITE_CHAR_POS_X
          clc
          adc #5
          sta PARAM1

          lda #1
          sta SPRITE_DIRECTION,x

.FindYSpawnPos
          lda SPRITE_CHAR_POS_Y
          cmp #5
          bcc .SpawnBelow
          cmp #15
          bcs .SpawnAbove
          
          ;randomly choose
          jsr GenerateRandomNumber
          and #$01
          beq .SpawnAbove

.SpawnBelow         
          lda SPRITE_CHAR_POS_Y
          clc
          adc #5
          sta PARAM2
          
          lda #0
          sta SPRITE_FALLING,x
          jmp .Reposition

.SpawnAbove
          lda SPRITE_CHAR_POS_Y
          sec
          sbc #5
          sta PARAM2

          lda #1
          sta SPRITE_FALLING,x
          
.Reposition
          jsr CalcSpritePosFromCharPos
          
          inc SPRITE_STATE,x
          
          lda #SPRITE_BAT_VANISH
          sta SPRITE_POINTER_BASE,x
          rts

.AnimateBat
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda BAT_ANIMATION,y
          sta SPRITE_POINTER_BASE,x
.NoAnimUpdate          
          rts
          
.NormalUpdate          
          lda SPRITE_STATE,x
          bne .NoAction
          
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          jmp .AnimateBat
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          jmp .AnimateBat
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
.NoAction 
          rts
 
 
.AttackFlight
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #80
          beq .AttackDone
          cmp #40
          beq .ChangeFlyDirection
          
          ;fly towards player
          lda SPRITE_DIRECTION,x
          beq .FlyRight
          
          stx PARAM5
          jsr ObjectMoveLeft
          jmp .FlyUpDown
          
.FlyRight
          stx PARAM5
          jsr ObjectMoveRight
          
.FlyUpDown          
          ldx PARAM5
          lda SPRITE_FALLING,x
          beq .FlyUp
          
          jsr ObjectMoveDown
          jmp .AnimateBat
          
.FlyUp
          jsr ObjectMoveUp
          jmp .AnimateBat
          
.ChangeFlyDirection
          ;change direction to avoid flying out of the screen
          lda SPRITE_CHAR_POS_Y,x
          cmp #5
          bcc .ChangeY
          cmp #18
          bcc .CheckXDir
          
.ChangeY
          lda SPRITE_FALLING,x
          eor #$01
          sta SPRITE_FALLING,x
          
.CheckXDir          
          lda SPRITE_CHAR_POS_X,x
          cmp #5
          bcc .ChangeX
          cmp #32
          bcs .ChangeX
          rts
          
.ChangeX
          lda SPRITE_DIRECTION,x
          eor #$01
          sta SPRITE_DIRECTION,x
          rts

.AttackDone
          ;auto-vanish
          lda #0
          sta SPRITE_STATE,x
          jmp HitBehaviourVanish


;------------------------------------------------------------
;ghost skeleton
;------------------------------------------------------------
!zone BehaviourGhostSkeleton
BehaviourGhostSkeleton

GHOST_MOVE_SPEED = 1
        
          jsr HandleHitBack
          beq .NoHitBack
          rts

.NoHitBack
          ;inc SPRITE_MODE_POS
          ;lda SPRITE_MODE_POS
          ;and #$01
          ;beq +
          ;rts
    
;+    
          lda DELAYED_GENERIC_COUNTER_WO_WATER
          and #$03
          bne .NoAnimUpdate
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda GHOST_SKELETON_ANIMATION_TABLE,y
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #10
          beq .DoCheckMove
          jmp .DoGhostMove

.DoCheckMove
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          jsr FindPlayer
          cmp #2
          bne .FoundPlayer
          ;no player to hunt
          rts
          
.FoundPlayer
          ;player index in y
          lda SPRITE_CHAR_POS_X,y
          cmp SPRITE_CHAR_POS_X,x
          bpl .MoveRight
          
          ;move left
          lda SPRITE_DIRECTION,x
          bne .AlreadyLookingLeft
          lda SPRITE_MOVE_POS,x
          beq .TurnLNow
          dec SPRITE_MOVE_POS,x
          bne .CheckYNow
          
.TurnLNow          
          ;turning now
          lda #1
          sta SPRITE_DIRECTION,x
          jmp .CheckYNow
          
.AlreadyLookingLeft
          lda SPRITE_MOVE_POS,x
          cmp #GHOST_MOVE_SPEED
          beq .CheckYNow
          inc SPRITE_MOVE_POS,x
          jmp .CheckYNow
          
.MoveRight   
          lda SPRITE_DIRECTION,x
          beq .AlreadyLookingRight
          
          lda SPRITE_MOVE_POS,x
          beq .TurnRNow
          dec SPRITE_MOVE_POS,x
          bne .CheckYNow
          
          ;turning now
.TurnRNow          
          lda #0
          sta SPRITE_DIRECTION,x
          jmp .CheckYNow
          
.AlreadyLookingRight          
          lda SPRITE_MOVE_POS,x
          cmp #GHOST_MOVE_SPEED
          beq .CheckYNow
          inc SPRITE_MOVE_POS,x
          jmp .CheckYNow
          
.CheckYNow
          ;player index in y
          lda SPRITE_CHAR_POS_Y,y
          cmp SPRITE_CHAR_POS_Y,x
          bpl .MoveDown
          
          ;move left
          lda SPRITE_DIRECTION_Y,x
          bne .AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnUNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
.TurnUNow          
          ;turning now
          lda #1
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          cmp #GHOST_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove
          
.MoveDown
          lda SPRITE_DIRECTION_Y,x
          beq .AlreadyLookingDown
          
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnDNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
          ;turning now
.TurnDNow          
          lda #0
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingDown
          lda SPRITE_MOVE_POS_Y,x
          cmp #GHOST_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove

.DoGhostMove
          ;move X times
          ldy SPRITE_MOVE_POS,x
          sty PARAM4
          beq .DoY
          
          lda SPRITE_DIRECTION,x
          beq .DoRight
.MoveLoopL
          jsr ObjectMoveLeftBlocking
          dec PARAM4
          bne .MoveLoopL
          jmp .DoY
          
.DoRight
.MoveLoopR
          jsr ObjectMoveRightBlocking
          dec PARAM4
          bne .MoveLoopR
          
.DoY          
          ;move X times
          ldy SPRITE_MOVE_POS_Y,x
          sty PARAM4
          beq .MoveDone
          
          lda SPRITE_DIRECTION_Y,x
          beq .DoDown
.MoveLoopU
          jsr ObjectMoveUpBlocking
          dec PARAM4
          bne .MoveLoopU
          jmp .MoveDone
          
.DoDown
.MoveLoopD
          jsr ObjectMoveDownBlockingNoPlatform
          dec PARAM4
          bne .MoveLoopD
         
.MoveDone         
          rts

          
 
;------------------------------------------------------------
;jumping toad
;------------------------------------------------------------
!zone BehaviourJumpingToad
BehaviourJumpingToad
          jsr HandleHitBack
          beq .NoHitBack
          rts
.NoHitBack          
          lda SPRITE_STATE,x
          beq .NotDucking
          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #6
          bne .StillDucking
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          ldy SPRITE_ANIM_POS,x
          inc SPRITE_ANIM_POS,x
          lda TOAD_JUMP_ANIMATION_TABLE,y
          sta SPRITE_POINTER_BASE,x
          cmp #SPRITE_JUMPING_TOAD_1
          bne .StillDucking
          
          ;start jump
          lda #0
          sta SPRITE_STATE,x
          inc SPRITE_JUMP_POS,x
          
.StillDucking
          rts
          
.NotDucking          
          lda SPRITE_JUMP_POS,x
          beq .FallIfPossible
          
          ;toad is jumping
          lda SPRITE_JUMP_POS,x
          cmp #TOAD_JUMP_TABLE_SIZE
          bne .JumpOn
          
          ;jump done
          jmp .JumpBlocked
          
.JumpOn          
          ldy SPRITE_JUMP_POS,x
          inc SPRITE_JUMP_POS,x
          lda TOAD_JUMP_TABLE,y
          bne .KeepJumping
          
          ;no jump movement needed
          jmp .ToadMove
          
.KeepJumping          
          sta PARAM5
          
.JumpContinue          
          jsr ObjectMoveUpBlocking
          beq .JumpBlocked
          
          dec PARAM5
          bne .JumpContinue
          jmp .ToadMove
          
.JumpBlocked
          lda #0
          sta SPRITE_JUMP_POS,x
          jmp .ToadMove
          
.FallIfPossible          
          jsr UpdateSpriteFall
          beq .CanJump
          jmp .ToadMove
 
.CanJump
          inc SPRITE_STATE,x
          lda #0
          sta SPRITE_ANIM_DELAY,x
          sta SPRITE_ANIM_POS,x
          
          lda #SPRITE_JUMPING_TOAD_2
          sta SPRITE_POINTER_BASE,x
          rts
 
          ;simple move left/right
.ToadMove
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          rts
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          rts
 
 

;------------------------------------------------------------
;run left/right, jump off directional
;------------------------------------------------------------
!zone BehaviourSpider
BehaviourSpider
          jsr HandleHitBack
          beq .NoHitBack
          rts

.NoHitBack          
          ;animate spider
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #2
          bne .NoAnimUpdate
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda SPIDER_ANIMATION_TABLE,y
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          lda SPRITE_JUMP_POS,x
          bne .NoFallHandling
          
          jsr UpdateSpriteFall
          sta SPRITE_FALLING,x
          
          bne .IsFalling
          
          ;neither jumping nor falling
          jsr GenerateRandomNumber
          and #$3f
          cmp #01
          bcs .IsFalling
          
          ;random jump
          jmp .Jumping
          
.IsFalling          
.NoFallHandling

          lda SPRITE_ANNOYED,x
          clc
          adc #2
          sta PARAM6
.MoveStep
          dec PARAM6
          beq .MoveDone

          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          lda SPRITE_JUMP_POS,x
          ora SPRITE_FALLING,x
          bne .OnlyMoveLeft
          
          jsr ObjectWalkOrJumpLeft
          beq .ToggleDirection
          jmp .MoveStep

.MoveDone
          lda SPRITE_JUMP_POS,x
          beq .NotJumping
          
.Jumping          
          jsr UpdateSpriteJump
.NotJumping          
          rts
          
.OnlyMoveLeft
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          jmp .MoveStep
          
.MoveRight
          lda SPRITE_JUMP_POS,x
          ora SPRITE_FALLING,x
          bne .OnlyMoveRight
          
          jsr ObjectWalkOrJumpRight
          beq .ToggleDirection
          jmp .MoveStep

.OnlyMoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          jmp .MoveStep

.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          jmp .MoveStep



;------------------------------------------------------------
;simply walk left/right, don't fall off
;state 128 = invisible
;      1 = rising
;      0 = moving
;      2 = collapsing
;------------------------------------------------------------
!zone BehaviourFrankenstein
BehaviourFrankenstein
          jsr HandleHitBack
          beq .NoHitBack
          rts
          
.NoHitBack          
          lda SPRITE_JUMP_POS,x
          bne .IsJumping
          jsr ObjectMoveDownBlocking
          bne .Falling
          
.IsJumping          
          lda DELAYED_GENERIC_COUNTER
          and #$03
          beq .MovementUpdate
.NoMovement          
          rts
          
.Falling  
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoMovement
          jmp .WalkWithoutAnimation
          
.MovementUpdate
          lda SPRITE_JUMP_POS,x
          bne .UpdateJump
          lda SPRITE_STATE,x
          bne .OtherStates

          ;moving
          jsr GenerateRandomNumber
          cmp #3
          bcc .Jump
          jmp .NormalWalk
          
.OtherStates          
          ;collapsing?
          cmp #2
          beq .Collapsing
          cmp #1
          beq .Rising
          cmp #128
          bne .NotHidden
          jmp .Hidden
          
.NotHidden          
          rts          
          
.Jump
          ;start jump
          lda #SPRITE_FRANKIE_JUMP_R
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
.UpdateJump
          jsr UpdateSpriteJump
          
          ;still move
          jmp .WalkWithoutAnimation
          
.NoUpdate    
          rts

.Collapsing
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          bne .NoUpdate
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          lda SPRITE_ANIM_POS,x
          beq .CollapseDone
          
          dec SPRITE_ANIM_POS,x
          
          lda SPRITE_ANIM_POS,x
          clc
          asl
          adc #SPRITE_FRANKIE_RISE_R_1
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.CollapseDone
          ;on to hidden state
          lda #128
          sta SPRITE_STATE,x
          
          lda #SPRITE_INVISIBLE
          sta SPRITE_POINTER_BASE,x

          ;generate hidden time
          jsr GenerateRandomNumber
          and #$31
          clc
          adc #25
          sta SPRITE_MOVE_POS,x
          
          ;normalise position on full char
          ldy SPRITE_CHAR_POS_X_DELTA,x
          sty PARAM5
.CheckXPos          
          beq .XPosClear
          jsr ObjectMoveLeft
          dec PARAM5
          jmp .CheckXPos
          
.XPosClear          
          ldy SPRITE_CHAR_POS_Y_DELTA,x
          sty PARAM5
.CheckYPos          
          beq .YPosClear
          jsr ObjectMoveUp
          dec PARAM5
          jmp .CheckYPos
.YPosClear          
          rts
          
.Rising
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          bne .NoUpdate
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          cmp #3
          beq .RiseDone

          clc
          asl
          adc #SPRITE_FRANKIE_RISE_R_1
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.RiseDone          
          lda #SPRITE_FRANKIE_WALK_R_1
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
          lda #0
          sta SPRITE_MOVE_POS,x
          sta SPRITE_ANIM_DELAY,x
          sta SPRITE_ANIM_POS,x
          sta SPRITE_STATE,x
          rts
          
.NormalWalk          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          bne .NoAnimUpdate
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_MOVE_POS,x
          
.NoAnimUpdate          
          lda SPRITE_MOVE_POS,x
          and #$03
          sta SPRITE_MOVE_POS,x
          
          clc
          asl
          adc #SPRITE_FRANKIE_WALK_R_1
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
.WalkWithoutAnimation          
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          
          lda SPRITE_ANNOYED,x
          beq .NotAnnoyed
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
.NotAnnoyed
          rts
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          lda SPRITE_ANNOYED,x
          beq .NotAnnoyed
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          rts
 
.Hidden
          ;are we apt to wake up?
          dec SPRITE_MOVE_POS,x
          bne .RandomMove

          ;wake up          
          lda #1
          sta SPRITE_STATE,x
          lda #SPRITE_FRANKIE_RISE_R_1
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.RandomMove          
          ;move randomly left/right
          jsr GenerateRandomNumber
          and #$01
          beq .MoveLeft

          ;move right if possible          
          jsr CanWalkRight
          beq .Blocked
          
          inc SPRITE_CHAR_POS_X,x
          
          ldy #8
          sty PARAM5
          
.MoveSpriteRight          
          jsr MoveSpriteRight
          dec PARAM5
          bne .MoveSpriteRight
          rts          
          
.MoveLeft          
          jsr CanWalkLeft
          beq .Blocked
          
          dec SPRITE_CHAR_POS_X,x
          
          ldy #8
          sty PARAM5
          
.MoveSpriteLeft
          jsr MoveSpriteLeft
          dec PARAM5
          bne .MoveSpriteLeft
          rts          

.Blocked
          rts
          
 
;------------------------------------------------------------
;simply appear and hide again
;state 128 = invisible
;      0 = rising/hiding
;------------------------------------------------------------
!zone BehaviourHand
BehaviourHand
          lda DELAYED_GENERIC_COUNTER
          and #$03
          beq .MovementUpdate
.NoMovement          
          rts

.MovementUpdate
          lda SPRITE_STATE,x
          bne .HiddenState

          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          bne .NoMovement
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          cmp #6
          beq .EnterHiddenState
          
.UpdateHandSprite          
          ldy SPRITE_ANIM_POS,x
          lda HAND_ANIM_TABLE,y
          sta SPRITE_POINTER_BASE,x
          lda HAND_COLOR_TABLE,y
          sta VIC_SPRITE_COLOR,x
          rts
          
.EnterHiddenState
          lda #SPRITE_INVISIBLE
          sta SPRITE_POINTER_BASE,x
          
          jsr GenerateRandomNumber
          sta SPRITE_MOVE_POS,x
          
          lda #128
          sta SPRITE_STATE,x
.StillHidden
          rts
          
.HiddenState
          dec SPRITE_MOVE_POS,x
          bne .StillHidden
          
          ;unhiding
          lda #0
          sta SPRITE_STATE,x
          sta SPRITE_ANIM_DELAY,x
          sta SPRITE_ANIM_POS,x
          jmp .UpdateHandSprite          
          
;------------------------------------------------------------
;move randomly diagonal
;------------------------------------------------------------
!zone BehaviourFly
BehaviourFly
          lda DELAYED_GENERIC_COUNTER
          and #$01
          bne .NoAnimUpdate
          
          lda SPRITE_ANIM_POS,x
          eor #1
          sta SPRITE_ANIM_POS,x
          
          clc
          adc #SPRITE_FLY_1
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          lda SPRITE_STATE,x
          beq .Move

          dec SPRITE_MOVE_POS,x
          bne .NoAction
          
          ;can move again
          dec SPRITE_STATE,x
          
          jsr GenerateRandomNumber
          sta SPRITE_MOVE_POS,x
          
          jsr GenerateRandomNumber
          and #$03
          cmp #3
          bne .ValueOK
          
          lda #2
.ValueOK          
          sta SPRITE_DIRECTION,x

          jsr GenerateRandomNumber
          and #$03
          cmp #3
          bne .ValueOK2
          
          lda #2
.ValueOK2
          sta SPRITE_DIRECTION_Y,x

.NoAction          
          rts
          
.Move
          dec SPRITE_MOVE_POS,x
          bne .CanMove
          
          ;wait
          jsr GenerateRandomNumber
          sta SPRITE_MOVE_POS,x
          
          inc SPRITE_STATE,x
          rts
          
.CanMove          
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          cmp #2
          beq .MoveY
          
          ;move left
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          jmp .MoveY
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          jmp .MoveY
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          
.MoveY
          lda SPRITE_DIRECTION_Y,x
          beq .MoveDown
          cmp #2
          beq .NoYMovement
          
          ;move up
          jsr ObjectMoveUpBlocking
          beq .ToggleDirectionY
          rts
          
.MoveDown
          jsr ObjectMoveDownBlockingNoPlatform
          beq .ToggleDirectionY
          
.NoYMovement          
          rts
          
.ToggleDirectionY
          lda SPRITE_DIRECTION_Y,x
          eor #1
          sta SPRITE_DIRECTION_Y,x
          rts
 
 
;------------------------------------------------------------
;floating ghost
;------------------------------------------------------------
!zone BehaviourFloatingGhost
BehaviourFloatingGhost
          jsr HandleHitBack
          beq .NoHitBack
          rts
          
.NoHitBack          
          lda SPRITE_STATE,x
          cmp #128
          beq .Vanish1
          cmp #129
          beq .Hidden
          cmp #130
          beq .Spawn
          cmp #131
          beq .SpawnWait
          jmp .AttackFlight
          
.NoSpecialBehaviour          
          rts
          
.SpawnWait          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #20
          bne .NoSpecialBehaviour
          
          lda #0
          sta SPRITE_STATE,x
          rts
          
.Vanish1
          lda DELAYED_GENERIC_COUNTER
          and #$07
          bne .NoSpecialBehaviour
          
          lda #SPRITE_INVISIBLE
          sta SPRITE_POINTER_BASE,x
          
          inc SPRITE_STATE,x
          jsr GenerateRandomNumber
          adc #24
          sta SPRITE_MOVE_POS,x
          rts
          
.Spawn          
          lda DELAYED_GENERIC_COUNTER
          and #$07
          bne .NoSpecialBehaviour


          lda #SPRITE_FLOATING_GHOST_1
          sta SPRITE_POINTER_BASE,x
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_STATE,x
          rts

.Hidden
          dec SPRITE_MOVE_POS,x
          beq .Unhide
          rts
          
.Unhide

          ;position diagonal above/below player
          lda SPRITE_CHAR_POS_X
          cmp #10
          bcc .SpawnOnRight
          cmp #30
          bcs .SpawnOnLeft
          
          ;randomly choose
          jsr GenerateRandomNumber
          and #$01
          beq .SpawnOnRight
          
          
.SpawnOnLeft
          lda SPRITE_CHAR_POS_X
          sec
          sbc #5
          sta PARAM1
          
          lda #0
          sta SPRITE_DIRECTION,x
          jmp .FindYSpawnPos

          
.SpawnOnRight          
          lda SPRITE_CHAR_POS_X
          clc
          adc #5
          sta PARAM1

          lda #1
          sta SPRITE_DIRECTION,x

.FindYSpawnPos
          lda SPRITE_CHAR_POS_Y
          cmp #5
          bcc .SpawnBelow
          cmp #15
          bcs .SpawnAbove
          
          ;randomly choose
          jsr GenerateRandomNumber
          and #$01
          beq .SpawnAbove

.SpawnBelow         
          lda SPRITE_CHAR_POS_Y
          clc
          adc #5
          sta PARAM2
          
          lda #0
          sta SPRITE_FALLING,x
          jmp .Reposition

.SpawnAbove
          lda SPRITE_CHAR_POS_Y
          sec
          sbc #5
          sta PARAM2

          lda #1
          sta SPRITE_FALLING,x
          
.Reposition
          jsr CalcSpritePosFromCharPos
          
          inc SPRITE_STATE,x
          
          lda #SPRITE_BAT_VANISH
          sta SPRITE_POINTER_BASE,x
          rts

.AnimateBat
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda FLOATING_GHOST_ANIMATION_TABLE,y
          sta SPRITE_POINTER_BASE,x
.NoAnimUpdate          
          rts
          
.AttackFlight
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #80
          beq .AttackDone
          cmp #40
          beq .ChangeFlyDirection
          
          ;fly towards player
          lda SPRITE_DIRECTION,x
          beq .FlyRight
          
          stx PARAM5
          jsr ObjectMoveLeft
          jmp .FlyUpDown
          
.FlyRight
          stx PARAM5
          jsr ObjectMoveRight
          
.FlyUpDown          
          ldx PARAM5
          lda SPRITE_FALLING,x
          beq .FlyUp
          
          jsr ObjectMoveDown
          jmp .AnimateBat
          
.FlyUp
          jsr ObjectMoveUp
          jmp .AnimateBat
          
.ChangeFlyDirection
          ;change direction to avoid flying out of the screen
          lda SPRITE_CHAR_POS_Y,x
          cmp #5
          bcc .ChangeY
          cmp #18
          bcc .CheckXDir
          
.ChangeY
          lda SPRITE_FALLING,x
          eor #$01
          sta SPRITE_FALLING,x
          
.CheckXDir          
          lda SPRITE_CHAR_POS_X,x
          cmp #5
          bcc .ChangeX
          cmp #32
          bcs .ChangeX
          rts
          
.ChangeX
          lda SPRITE_DIRECTION,x
          eor #$01
          sta SPRITE_DIRECTION,x
          rts

.AttackDone
          ;auto-vanish
          lda #0
          sta SPRITE_STATE,x
          jmp HitBehaviourVanish
          
 
;------------------------------------------------------------
;slime
;------------------------------------------------------------
!zone BehaviourSlime
BehaviourSlime
          jsr HandleHitBack
          beq .NoHitBack
          rts
          
.NoHitBack          
          ;state 0 = jumping
          ;state 1 = ducking
          ;state 2 = ducked
          ;state 3 = unducking
          
          lda SPRITE_STATE,x
          beq .SlimeJumping
          cmp #2
          beq .SlimeDucked
          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #6
          bne .AnimPause
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          ldy SPRITE_ANIM_POS,x
          inc SPRITE_ANIM_POS,x
          
          lda SPRITE_STATE,x
          cmp #3
          beq .SlimeUnducking
          
          cpy #3
          beq .DuckDone
          
          lda SLIME_DUCK_ANIMATION_TABLE,y
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.DuckDone          
          ;start ducked state
          lda #0
          sta SPRITE_ANIM_POS,x
          lda #2
          sta SPRITE_STATE,x
          
          jsr GenerateRandomNumber
          sta SPRITE_MOVE_POS,x
          
.AnimPause
          rts

.SlimeUnducking
          cpy #3
          beq .UnduckDone
          
          lda SLIME_UNDUCK_ANIMATION_TABLE,y
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          rts
          
.UnduckDone          
          ;start jump
          lda #0
          sta SPRITE_ANIM_POS,x
          sta SPRITE_STATE,x
          inc SPRITE_JUMP_POS,x
          rts
          

.SlimeDucked          
          dec SPRITE_MOVE_POS,x
          bne .StayDucked
          
          inc SPRITE_STATE,x
.StayDucked
          rts
          
.SlimeJumping          
          lda SPRITE_JUMP_POS,x
          beq .FallIfPossible
          
          ;toad is jumping
          lda SPRITE_JUMP_POS,x
          cmp #TOAD_JUMP_TABLE_SIZE
          bne .JumpOn
          
          ;jump done
          jmp .JumpBlocked
          
.JumpOn          
          ldy SPRITE_JUMP_POS,x
          inc SPRITE_JUMP_POS,x
          lda TOAD_JUMP_TABLE,y
          bne .KeepJumping
          
          ;no jump movement needed
          jmp .SlimeMove
          
.KeepJumping          
          sta PARAM5
          
.JumpContinue          
          jsr ObjectMoveUpBlocking
          beq .JumpBlocked
          
          dec PARAM5
          bne .JumpContinue
          jmp .SlimeMove
          
.JumpBlocked
          lda #0
          sta SPRITE_JUMP_POS,x
          jmp .SlimeMove
          
.FallIfPossible          
          jsr UpdateSpriteFall
          beq .CanJump
          jmp .SlimeMove
 
.CanJump
          inc SPRITE_STATE,x
          lda #0
          sta SPRITE_ANIM_DELAY,x
          sta SPRITE_ANIM_POS,x
          
           
          lda SPRITE_DIRECTION,x
          beq .LookingRight
          lda #SPRITE_SLIME_L_1
          sta SPRITE_POINTER_BASE,x
          rts
          
.LookingRight          
          lda #SPRITE_SLIME_R_1
          sta SPRITE_POINTER_BASE,x
          rts
 
          ;simple move left/right
.SlimeMove
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          rts
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          rts
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          clc
          adc #SPRITE_SLIME_R_1
          sta SPRITE_POINTER_BASE,x
          rts
 
 
;------------------------------------------------------------
;run left/right, jump off directional
;------------------------------------------------------------
!zone BehaviourWolf
BehaviourWolf
          jsr HandleHitBack
          beq .NoHitBack
          rts
          
.NoHitBack          
          ;animate wolf
          lda SPRITE_JUMP_POS,x
          bne .NoAnimUpdate
          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #4
          bne .NoAnimUpdate
          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          and #$03
          sta SPRITE_ANIM_POS,x
          
          tay
          lda SPRITE_DIRECTION,x
          beq .FacingLeft
          
          lda WOLF_ANIMATION_TABLE,y
          sta SPRITE_POINTER_BASE,x
          jmp .NoAnimUpdate
          
.FacingLeft          
          lda WOLF_ANIMATION_TABLE,y
          clc
          adc #( SPRITE_WOLF_WALK_R_1 - SPRITE_WOLF_WALK_L_1 )
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          lda SPRITE_JUMP_POS,x
          bne .NoFallHandling
          
          jsr UpdateSpriteFall
          sta SPRITE_FALLING,x
          
          bne .IsFalling
          
          ;neither jumping nor falling
          jsr GenerateRandomNumber
          and #$0f
          cmp SPRITE_ANNOYED,x
          bpl .IsFalling
          
          ;random jump
          jmp .Jumping
          
.IsFalling          
.NoFallHandling

          lda SPRITE_ANNOYED,x
          clc
          adc #2
          sta PARAM6
.MoveStep
          dec PARAM6
          beq .MoveDone

          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          lda SPRITE_JUMP_POS,x
          ora SPRITE_FALLING,x
          bne .OnlyMoveLeft
          
          jsr ObjectWalkOrJumpLeft
          beq .ToggleDirection
          jmp .MoveStep

.MoveDone
          lda SPRITE_JUMP_POS,x
          beq .NotJumping
          
.Jumping          
          jsr UpdateSpriteJump
.NotJumping          
          rts
          
.OnlyMoveLeft
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          jmp .MoveStep
          
.MoveRight
          lda SPRITE_JUMP_POS,x
          ora SPRITE_FALLING,x
          bne .OnlyMoveRight
          
          jsr ObjectWalkOrJumpRight
          beq .ToggleDirection
          jmp .MoveStep

.OnlyMoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          jmp .MoveStep

.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          jmp .MoveStep
          
 
;------------------------------------------------------------
;simply move diagonal
;------------------------------------------------------------
!zone BehaviourEye
BehaviourEye
          jsr HandleHitBack
          beq .NoHitBack
          rts
          
.NoHitBack          
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          ;inc SPRITE_ANIM_POS,x
          ;lda SPRITE_ANIM_POS,x
          ;and #$03
          ;sta SPRITE_ANIM_POS,x
          
          ;tay
          ;lda BAT_ANIMATION,y
          ;sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate          
          lda SPRITE_STATE,x
          beq .Move
          cmp #1
          beq .EyeOpen
          cmp #2
          beq .EyeIsOpen
          
          ;eye closes
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          bne .NoActionNow

          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          ;close animation
          dec SPRITE_ANIM_POS,x
          dec SPRITE_POINTER_BASE,x
          
          ldy SPRITE_ANIM_POS,x
          lda EYE_COLOR_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoActionNow
          
          ;can move again
          lda #0
          sta SPRITE_STATE,x
          
          ;random direction
          jsr GenerateRandomNumber
          and #$01
          sta SPRITE_DIRECTION,x
          jsr GenerateRandomNumber
          and #$01
          sta SPRITE_DIRECTION_Y,x
          rts
          
          
.EyeOpen
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          bne .NoActionNow

          lda #0
          sta SPRITE_ANIM_DELAY,x

          ;open animation
          inc SPRITE_ANIM_POS,x
          inc SPRITE_POINTER_BASE,x
          
          ldy SPRITE_ANIM_POS,x
          lda EYE_COLOR_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #3
          bne .NoActionNow
          
          ;now wait
          inc SPRITE_STATE,x
          rts
          
.EyeIsOpen
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #30
          beq .EyeCloseNow
          
.NoActionNow          
          rts
          
.EyeCloseNow
          lda #3
          sta SPRITE_STATE,x
          lda #0
          sta SPRITE_ANIM_DELAY,x
          rts
          
.Move
          jsr GenerateRandomNumber
          cmp #7
          bne .MoveNow
          
          ;start blinking
          lda #1
          sta SPRITE_STATE,x
          rts

.MoveNow
          lda SPRITE_DIRECTION,x
          beq .MoveRight
          
          ;move left
          jsr ObjectMoveLeftBlocking
          beq .ToggleDirection
          jmp .MoveY
          
.MoveRight
          jsr ObjectMoveRightBlocking
          beq .ToggleDirection
          jmp .MoveY
          
.ToggleDirection
          lda SPRITE_DIRECTION,x
          eor #1
          sta SPRITE_DIRECTION,x
          
.MoveY
          lda SPRITE_DIRECTION_Y,x
          beq .MoveDown
          
          ;move up
          jsr ObjectMoveUpBlocking
          beq .ToggleDirectionY
          rts
          
.MoveDown
          jsr ObjectMoveDownBlockingNoPlatform
          beq .ToggleDirectionY
          rts
          
.ToggleDirectionY
          lda SPRITE_DIRECTION_Y,x
          eor #1
          sta SPRITE_DIRECTION_Y,x
          rts
 
 
;------------------------------------------------------------
;Spawn
;------------------------------------------------------------
!zone BehaviourSpawn
BehaviourSpawn
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          beq .UpdateAnimation
          rts
          
.UpdateAnimation          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          lda SPRITE_POINTER_BASE,x
          eor #$01
          sta SPRITE_POINTER_BASE,x
          
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #20
          beq .SpawnNow
          rts
          
.SpawnNow
          dec NUMBER_SPAWNS_ALIVE
          lda SPRITE_ANNOYED,x
          sta PARAM3
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM2
          stx PARAM7
          lda #1
          jsr SpawnObject
          ldx PARAM7
          rts



;------------------------------------------------------------
;check player vs. beam
; beam boss index in x
; player index in y
;------------------------------------------------------------
!zone CheckIsPlayerCollidingWithBeam
CheckIsPlayerCollidingWithBeam
          lda SPRITE_ACTIVE,y
          bne .PlayerIsActive
.PlayerNotActive          
          rts
          
.PlayerIsActive          
          cmp #TYPE_PLAYER_DEAN
          beq +
          cmp #TYPE_PLAYER_SAM
          beq +
          rts
          
+          
          lda SPRITE_STATE,y
          cmp #128
          bcs .PlayerNotActive
          
          ;compare char positions in x
          lda SPRITE_CHAR_POS_X,x
          cmp SPRITE_CHAR_POS_X,y
          beq .PlayerHit
          
          clc
          adc #1
          cmp SPRITE_CHAR_POS_X,y
          beq .PlayerHit
          
          sec
          sbc #2
          cmp SPRITE_CHAR_POS_X,y
          beq .PlayerHit
          
          ;compare char positions in y
          lda SPRITE_CHAR_POS_Y,x
          cmp SPRITE_CHAR_POS_Y,y
          beq .PlayerHit
          
          clc
          adc #1
          cmp SPRITE_CHAR_POS_Y,y
          beq .PlayerHit
          
          sec
          sbc #2
          cmp SPRITE_CHAR_POS_Y,y
          beq .PlayerHit
          
          ;not hit
          rts
          
.PlayerHit          
          ;player killed
          jsr KillPlayer
          rts


;------------------------------------------------------------
;check player vs. beam H
; YPos in PARAM3
; player index in y
;------------------------------------------------------------
!zone CheckIsPlayerCollidingWithYPosH
CheckIsPlayerCollidingWithYPosH
          lda SPRITE_ACTIVE,y
          bne .PlayerIsActive
.PlayerNotActive          
          rts
          
.PlayerIsActive          
          cmp #TYPE_PLAYER_DEAN
          beq +
          cmp #TYPE_PLAYER_SAM
          beq +
          rts
          
+          
          lda SPRITE_STATE,y
          cmp #128
          bcs .PlayerNotActive
          
          lda SPRITE_CHAR_POS_X,y
          cmp PARAM1
          bcc .PlayerNotActive
          cmp PARAM2
          bcs .PlayerNotActive
          
          ;compare char positions in y
          lda PARAM3
          cmp SPRITE_CHAR_POS_Y,y
          beq .PlayerHit
          
          clc
          adc #1
          cmp SPRITE_CHAR_POS_Y,y
          beq .PlayerHit
          
          sec
          sbc #2
          cmp SPRITE_CHAR_POS_Y,y
          beq .PlayerHit
          
          ;not hit
          rts
          
.PlayerHit          
          ;player killed
          jmp KillPlayer

;kills player (index y)
!zone KillPlayer
KillPlayer
          lda #129
          sta SPRITE_STATE,y
          
          lda #SPRITE_PLAYER_DEAD
          sta SPRITE_POINTER_BASE,y
          
          lda #0
          sta SPRITE_MOVE_POS,y
          
          lda SPRITE_ACTIVE,y
          cmp #TYPE_PLAYER_SAM
          bne .PlayerWasDean
          
          ;reset Sam specific variables
          lda SPRITE_HELD
          beq .PlayerWasDean
          jsr RemoveForceBeam
          lda #0
          sta SPRITE_HELD
          
.PlayerWasDean         

          lda SFX_MODE
          beq +
          lda #MUSIC_PLAYER_DIE
          jsr MUSIC_PLAYER
+          
          ldx CURRENT_INDEX
          rts

;------------------------------------------------------------
;check player vs. beam
; beam boss index in x
; player index in y
; PARAM5 = beam start Y
;------------------------------------------------------------
!zone CheckIsPlayerCollidingWithBeamV
CheckIsPlayerCollidingWithBeamV
          lda SPRITE_ACTIVE,y
          bne .PlayerIsActive
.PlayerNotActive          
          rts
          
.PlayerIsActive          
          cmp #TYPE_PLAYER_DEAN
          beq +
          cmp #TYPE_PLAYER_SAM
          beq +
          rts
          
+          
          lda SPRITE_STATE,y
          cmp #128
          bcs .PlayerNotActive
          
          ;compare char positions in x
          lda SPRITE_CHAR_POS_X,x
          cmp SPRITE_CHAR_POS_X,y
          beq .XMatch
          
          clc
          adc #1
          cmp SPRITE_CHAR_POS_X,y
          beq .XMatch
          
          sec
          sbc #2
          cmp SPRITE_CHAR_POS_X,y
          beq .XMatch
       
          ;not hit
          rts
          
.XMatch          
          ;compare char positions in y
          lda SPRITE_CHAR_POS_Y,x
          cmp SPRITE_CHAR_POS_Y,y
          bmi .PlayerHit
          
          ;not hit
          rts
          
.PlayerHit          
          ;player killed
          jsr KillPlayer
          rts



;------------------------------------------------------------
;check player vs. diagonal beam
; beam boss index in x
; player index in y
;------------------------------------------------------------
!zone CheckIsPlayerCollidingWithDiagonalBeam
CheckIsPlayerCollidingWithDiagonalBeam
          lda SPRITE_ACTIVE,y
          bne .PlayerIsActive
.PlayerNotActive          
          rts
          
.PlayerIsActive          
          lda SPRITE_STATE,y
          cmp #128
          bcs .PlayerNotActive
          
          ;compare char positions in x
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc SPRITE_CHAR_POS_X,y
          bpl .PositiveX
          
          lda SPRITE_CHAR_POS_X,y
          sec
          sbc SPRITE_CHAR_POS_X,x
.PositiveX
          sta PARAM1
          
          lda SPRITE_CHAR_POS_Y,x
          sec
          sbc SPRITE_CHAR_POS_Y,y
          bpl .PositiveY
          
          lda SPRITE_CHAR_POS_Y,y
          sec
          sbc SPRITE_CHAR_POS_Y,x
.PositiveY
          sta PARAM2
          
          lda PARAM1
          cmp PARAM2
          beq .PlayerHit
          
          lda PARAM1
          sec
          sbc PARAM2
          bpl .PositiveDelta
          lda PARAM2
          sec
          sbc PARAM1
.PositiveDelta          
          cmp #1
          beq .PlayerHit
          
          
          ;not hit
          rts
          
.PlayerHit          
          ;player killed
          jsr KillPlayer
          rts



;------------------------------------------------------------
;check player vs. diagonal beam
; X start in PARAM1
; Y start in PARAM2
; player index in y
;------------------------------------------------------------
!zone CheckIsPlayerCollidingWithDiagonalLLUR
CheckIsPlayerCollidingWithDiagonalLLUR
          lda SPRITE_ACTIVE,y
          bne .PlayerIsActive
.PlayerNotActive          
          rts
          
.PlayerIsActive          
          cmp #TYPE_PLAYER_DEAN
          beq +
          cmp #TYPE_PLAYER_SAM
          beq +
          rts
          
+          
          lda SPRITE_STATE,y
          cmp #128
          bcs .PlayerNotActive
          
          ;compare char positions in x
          lda PARAM1
          sec
          sbc SPRITE_CHAR_POS_X,y
          bpl .PositiveX
          
          ;player is to the right
          rts
.PositiveX
          sta PARAM3
          
          lda PARAM2
          sec
          sbc SPRITE_CHAR_POS_Y,y
          bpl .PositiveY
          
          lda SPRITE_CHAR_POS_Y,y
          sec
          sbc PARAM2
.PositiveY
          sta PARAM4
          
          lda PARAM3
          cmp PARAM4
          beq .PlayerHit
          
          lda PARAM3
          sec
          sbc PARAM4
          bpl .PositiveDelta
          lda PARAM4
          sec
          sbc PARAM3
.PositiveDelta          
          cmp #1
          beq .PlayerHit
          
          
          ;not hit
          rts
          
.PlayerHit          
          ;player killed
          jmp KillPlayer



;------------------------------------------------------------
;check player vs. diagonal beam
; X start in PARAM1
; Y start in PARAM2
; player index in y
;------------------------------------------------------------
!zone CheckIsPlayerCollidingWithDiagonalULLR
CheckIsPlayerCollidingWithDiagonalULLR
          lda SPRITE_ACTIVE,y
          bne .PlayerIsActive
.PlayerNotActive          
          rts
          
.PlayerIsActive          
          cmp #TYPE_PLAYER_DEAN
          beq +
          cmp #TYPE_PLAYER_SAM
          beq +
          rts
          
+          
          lda SPRITE_STATE,y
          cmp #128
          bcs .PlayerNotActive
          
          ;compare char positions in x
          lda PARAM1
          sec
          sbc SPRITE_CHAR_POS_X,y
          bpl .PlayerNotActive
          
          ;player is to the right
          lda SPRITE_CHAR_POS_X,y
          sec
          sbc PARAM1
          sta PARAM3
          
          lda PARAM2
          sec
          sbc SPRITE_CHAR_POS_Y,y
          bpl .PositiveY
          
          lda SPRITE_CHAR_POS_Y,y
          sec
          sbc PARAM2
.PositiveY
          sta PARAM4
          
          lda PARAM3
          cmp PARAM4
          beq .PlayerHit
          
          lda PARAM3
          sec
          sbc PARAM4
          bpl .PositiveDelta
          lda PARAM4
          sec
          sbc PARAM3
.PositiveDelta          
          cmp #1
          beq .PlayerHit
          
          
          ;not hit
          rts
          
.PlayerHit          
          ;player killed
          jmp KillPlayer


;------------------------------------------------------------
;boss
;------------------------------------------------------------
!zone BehaviourBoss
BehaviourBoss
BOSS_MOVE_SPEED = 1
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack
          
          ;make vulnerable again
          lda SPRITE_STATE,x
          cmp #128
          bne .NoHitBack
          
          lda #0
          sta SPRITE_STATE,x
        
.NoHitBack        
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          ;lda SPRITE_POINTER_BASE,x
          ;eor #$01
          ;sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate     
          lda SPRITE_STATE,x
          and #$7f
          bne .NotFollowPlayer
          
          
          lda SPRITE_DIRECTION,x
          beq +
          lda #SPRITE_BOSS_FOOT_L
          jmp ++


+
          lda #SPRITE_BOSS_FOOT_R
++          
          sta SPRITE_POINTER_BASE,x

          jmp BossFollowPlayer
          
.NotFollowPlayer          
          cmp #1
          beq .AttackMode
          rts
          
.AttackMode          
          ;Attack modes (more modes?)
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #4
          beq .NextAttackStep
          rts
          
.NextAttackStep
          lda SPRITE_CHAR_POS_X,x
          sta PARAM4
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM5
          
          lda #0
          sta SPRITE_MOVE_POS,x

          inc SPRITE_MODE_POS,x
          
          lda SPRITE_MODE_POS,x
          cmp #11
          bcc .BeamNotDangerous
          cmp #29
          bcs .BeamNotDangerous
          
          ;does player hit beam?
          ldy #0
          jsr CheckIsPlayerCollidingWithBeam
          ldy #1
          jsr CheckIsPlayerCollidingWithBeam
          
.BeamNotDangerous          
          lda SPRITE_MODE_POS,x
          cmp #11
          beq .BeamStep1
          cmp #12
          beq .BeamStep2
          cmp #13
          beq .BeamStep3
          cmp #16
          beq .BeamStep4
          cmp #17
          beq .BeamStep3
          cmp #18
          beq .BeamStep4
          cmp #19
          beq .BeamStep3
          cmp #20
          beq .BeamStep4
          cmp #21
          beq .BeamStep3
          cmp #22
          beq .BeamStep4
          cmp #23
          beq .BeamStep3
          cmp #24
          beq .BeamStep4
          cmp #25
          beq .BeamStep3
          cmp #26
          beq .BeamStep4
          cmp #27
          beq .BeamStep3
          cmp #28
          beq .BeamStep4
          cmp #29
          beq .BeamStep3
          cmp #30
          beq .BeamEnd
          rts
          
.HandleBeam
          lda BEAM_CHAR_H,y
          sta PARAM1
          lda BEAM_CHAR_V,y
          sta PARAM2
          lda BEAM_COLOR,y
          sta PARAM3
          
          jsr DrawBeamH
          jsr DrawBeamV
          rts

.BeamStep1
          ;beam
          ldy #BEAM_TYPE_DARK
          jmp .HandleBeam
          
.BeamStep2
          ;beam
          ldy #BEAM_TYPE_MEDIUM
          jmp .HandleBeam
          
.BeamStep3
          ;beam
          ldy #BEAM_TYPE_LIGHT
          jmp .HandleBeam
          
.BeamStep4
          ;beam
          ldy #BEAM_TYPE_LIGHT2
          jmp .HandleBeam
          
.BeamEnd
          jsr RestoreBeamHV
          
          lda #0
          sta SPRITE_STATE,x
          rts
          

;PARAM1 = beam h char
;PARAM2 = beam v char
;PARAM3 = beam color
;PARAM4 = x char pos
;PARAM5 = y char pos
!zone DrawBeamH
DrawBeamH
          ldy PARAM5
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          stx PARAM6
          
          ldy #1
.HLoop          
          lda PARAM1
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM3
          sta (ZEROPAGE_POINTER_2),y
          iny
          cpy #39
          bne .HLoop

          ;vertical beam
          ldy PARAM4
          ldx #1
          
.NextLine          
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          lda PARAM2
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM3
          sta (ZEROPAGE_POINTER_2),y
          
          inx
          cpx #22
          bne .NextLine

          ldx PARAM6
          rts

!zone DrawBeamV
DrawBeamV
          ldy PARAM4
          ldx PARAM5
          
.NextLine          
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          lda PARAM2
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM3
          sta (ZEROPAGE_POINTER_2),y
          
          inx
          cpx #22
          bne .NextLine

          ldx PARAM6
          rts


RestoreBeamHV
          ldy PARAM5
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          sec
          sbc #( ( SCREEN_CHAR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_COLOR ) >> 8 )
          sta ZEROPAGE_POINTER_4 + 1
          
          stx PARAM10
          ldy #1
          
-
          lda (ZEROPAGE_POINTER_2),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_3),y
          iny
          cpy #39
          bne -

          ;vertical beam
          ldy PARAM4
          ldx #1
          
.NextLineR          
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_BACK_CHAR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_COLOR ) >> 8 )
          sta ZEROPAGE_POINTER_4 + 1

          lda (ZEROPAGE_POINTER_2),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_3),y
          
          inx
          cpx #22
          bne .NextLineR

          ldx PARAM10
          rts


;PARAM3 = x char pos
;PARAM4 = y char pos
;PARAM5 = x end pos
!zone RestoreBeamHSegment
RestoreBeamHSegment
          ldy PARAM4
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          sec
          sbc #( ( SCREEN_CHAR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_COLOR ) >> 8 )
          sta ZEROPAGE_POINTER_4 + 1
          
          ldy PARAM3
-
          lda (ZEROPAGE_POINTER_2),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_3),y
          cpy PARAM5
          beq +
          iny
          jmp -
+
          rts

;PARAM1 = beam h char
;PARAM2 = beam color
;PARAM3 = x char pos
;PARAM4 = y char pos
;PARAM5 = x end pos
!zone DrawBeamHSegment
DrawBeamHSegment
          ldy PARAM4
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          ldy PARAM3
.HLoop          
          lda PARAM1
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM2
          sta (ZEROPAGE_POINTER_2),y
          cpy PARAM5
          beq +
          iny
          jmp .HLoop
+          
          rts


;looks for player
;x = own object index
;returns player index in y
!zone FindPlayer
FindPlayer
          txa
          and #$01
          tay
          lda SPRITE_ACTIVE,y
          cmp #TYPE_PLAYER_DEAN
          beq .FoundPlayer
          cmp #TYPE_PLAYER_SAM
          beq .FoundPlayer
          
          ;check other player
          tya
          eor #1
          tay
          lda SPRITE_ACTIVE,y
          cmp #TYPE_PLAYER_DEAN
          beq .FoundPlayer
          cmp #TYPE_PLAYER_SAM
          beq .FoundPlayer
          
          ;no player to hunt
          ldy #2
          rts
          
.FoundPlayer
          rts


BossFollowPlayer
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #10
          beq .DoCheckMove
          jmp .DoGhostMove

.DoCheckMove
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          jsr FindPlayer
          cmp #2
          bne +
          
          ;no player to hunt
          rts
          
+
          ;player index in y
          lda SPRITE_CHAR_POS_X,y
          cmp SPRITE_CHAR_POS_X,x
          bpl .MoveRight
          
          ;move left
          lda SPRITE_DIRECTION,x
          bne .AlreadyLookingLeft
          lda SPRITE_MOVE_POS,x
          beq .TurnLNow
          dec SPRITE_MOVE_POS,x
          bne .CheckYNow
          
.TurnLNow          
          ;turning now
          lda #1
          sta SPRITE_DIRECTION,x
          jmp .CheckYNow
          
.AlreadyLookingLeft
          lda SPRITE_MOVE_POS,x
          cmp #BOSS_MOVE_SPEED
          beq .CheckYNow
          inc SPRITE_MOVE_POS,x
          jmp .CheckYNow
          
.MoveRight   
          lda SPRITE_DIRECTION,x
          beq .AlreadyLookingRight
          
          lda SPRITE_MOVE_POS,x
          beq .TurnRNow
          dec SPRITE_MOVE_POS,x
          bne .CheckYNow
          
          ;turning now
.TurnRNow          
          lda #0
          sta SPRITE_DIRECTION,x
          lda #SPRITE_BOSS_FOOT_R
          sta SPRITE_POINTER_BASE,x
          jmp .CheckYNow
          
.AlreadyLookingRight          
          lda SPRITE_MOVE_POS,x
          cmp #BOSS_MOVE_SPEED
          beq .CheckYNow
          inc SPRITE_MOVE_POS,x
          jmp .CheckYNow
          
.CheckYNow
          ;player index in y
          lda SPRITE_CHAR_POS_Y,y
          cmp SPRITE_CHAR_POS_Y,x
          bpl .MoveDown
          
          ;move left
          lda SPRITE_DIRECTION_Y,x
          bne .AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnUNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
.TurnUNow          
          ;turning now
          lda #1
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          cmp #BOSS_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove
          
.MoveDown
          lda SPRITE_DIRECTION_Y,x
          beq .AlreadyLookingDown
          
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnDNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
          ;turning now
.TurnDNow          
          lda #0
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingDown
          lda SPRITE_MOVE_POS_Y,x
          cmp #BOSS_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove

.DoGhostMove
          ;move X times
          ldy SPRITE_MOVE_POS,x
          sty PARAM4
          beq .DoY
          
          lda SPRITE_DIRECTION,x
          beq .DoRight
.MoveLoopL
          jsr ObjectMoveLeftBlocking
          dec PARAM4
          bne .MoveLoopL
          jmp .DoY
          
.DoRight
.MoveLoopR
          jsr ObjectMoveRightBlocking
          dec PARAM4
          bne .MoveLoopR
          
.DoY          
          ;move X times
          ldy SPRITE_MOVE_POS_Y,x
          sty PARAM4
          beq .MoveDone
          
          lda SPRITE_DIRECTION_Y,x
          beq .DoDown
.MoveLoopU
          jsr ObjectMoveUpBlocking
          dec PARAM4
          bne .MoveLoopU
          jmp .MoveDone
          
.DoDown
.MoveLoopD
          jsr ObjectMoveDownBlockingNoPlatform
          dec PARAM4
          bne .MoveLoopD
         
.MoveDone         
          rts
          
 
;------------------------------------------------------------
;boss
;------------------------------------------------------------
!zone BehaviourBoss2
BehaviourBoss2
          
BOSS_MOVE_SPEED = 1
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack
          
          ;make vulnerable again
          lda SPRITE_STATE,x
          cmp #128
          bne .NoHitBack
          
          lda #0
          sta SPRITE_STATE,x
        
.NoHitBack        
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          ;lda SPRITE_POINTER_BASE,x
          ;eor #$01
          ;sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate     
          lda SPRITE_STATE,x
          and #$7f
          bne .NotFollowPlayer
          
          lda SPRITE_DIRECTION,x
          beq +
          lda #SPRITE_BOSS_FOOT_L
          jmp ++


+
          lda #SPRITE_BOSS_FOOT_R
++          
          sta SPRITE_POINTER_BASE,x
          jmp BossFollowPlayer
          
.NotFollowPlayer          
          cmp #1
          beq .AttackMode
          rts
          
.AttackMode          
          ;Attack modes (more modes?)
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #4
          beq .NextAttackStep
          rts
          
.NextAttackStep
          lda #0
          sta SPRITE_MOVE_POS,x

          inc SPRITE_MODE_POS,x
          
          lda SPRITE_MODE_POS,x
          cmp #11
          bcc .BeamNotDangerous
          cmp #29
          bcs .BeamNotDangerous
          
          ;does player hit beam?
          ldy #0
          jsr CheckIsPlayerCollidingWithDiagonalBeam
          ldy #1
          jsr CheckIsPlayerCollidingWithDiagonalBeam
          
.BeamNotDangerous          
          lda SPRITE_MODE_POS,x
          cmp #11
          beq .BeamStep1
          cmp #12
          beq .BeamStep2
          cmp #13
          beq .BeamStep3
          cmp #16
          beq .BeamStep4
          cmp #17
          beq .BeamStep3
          cmp #18
          beq .BeamStep4
          cmp #19
          beq .BeamStep3
          cmp #20
          beq .BeamStep4
          cmp #21
          beq .BeamStep3
          cmp #22
          beq .BeamStep4
          cmp #23
          beq .BeamStep3
          cmp #24
          beq .BeamStep4
          cmp #25
          beq .BeamStep3
          cmp #26
          beq .BeamStep4
          cmp #27
          beq .BeamStep3
          cmp #28
          beq .BeamStep4
          cmp #29
          beq .BeamStep3
          cmp #30
          beq .BeamEnd
          rts
          
.BeamStep1
          ;beam
          lda #BEAM_TYPE_DARK
          jsr .DrawBeamDiagonal
          rts
          
.BeamStep2
          ;beam
          lda #BEAM_TYPE_MEDIUM
          jsr .DrawBeamDiagonal
          rts
          
.BeamStep3
          ;beam
          lda #BEAM_TYPE_LIGHT
          jsr .DrawBeamDiagonal
          rts
          
.BeamStep4
          ;beam
          lda #BEAM_TYPE_LIGHT2
          jsr .DrawBeamDiagonal
          rts
          
.BeamEnd
          jsr RestoreBeamDiagonal
          
          lda #0
          sta SPRITE_STATE,x
          rts
          
.DrawBeamDiagonal
          tay
          lda BEAM_CHAR_NWSE,y
          sta PARAM1
          lda BEAM_CHAR_NESW,y
          sta PARAM2
          lda BEAM_COLOR,y
          sta PARAM3
          
          ldy SPRITE_CHAR_POS_Y,x
          sty PARAM9
          stx PARAM6
          
          lda SPRITE_CHAR_POS_X,x
          sta PARAM7
          sta PARAM8
          
          
.NextUpperLine          
          ldy PARAM9          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          
          
          ;upper part
          ;left
          ldy PARAM7
          beq .NoLeftPart
          lda PARAM1
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM3
          sta (ZEROPAGE_POINTER_2),y
          
.NoLeftPart          
          ;right
          ldy PARAM8
          beq .NoRightPart
          lda PARAM2
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM3
          sta (ZEROPAGE_POINTER_2),y
          
.NoRightPart
          dec PARAM9
          beq .UpperPartDone
         
          ;left border reached?
          lda PARAM7
          beq .LeftDone
          dec PARAM7
.LeftDone 
          lda PARAM8
          beq .RightEndReached
          cmp #38
          beq .RightEndReached
          inc PARAM8
          jmp .NextUpperLine
          
.RightEndReached
          lda #0
          sta PARAM8
          
          jmp .NextUpperLine

.UpperPartDone


          ;lower part
          ldy SPRITE_CHAR_POS_Y,x
          sty PARAM9
          stx PARAM6
          
          lda SPRITE_CHAR_POS_X,x
          sta PARAM7
          sta PARAM8
          
          
.NextUpperLineBottom
          ldy PARAM9          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          ;upper part
          ;left
          ldy PARAM7
          beq .NoLeftPartBottom
          lda PARAM2
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM3
          sta (ZEROPAGE_POINTER_2),y
          
.NoLeftPartBottom
          ;right
          ldy PARAM8
          beq .NoRightPartBottom
          lda PARAM1
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM3
          sta (ZEROPAGE_POINTER_2),y
          
.NoRightPartBottom
          inc PARAM9
          lda PARAM9
          cmp #22
          beq .LowerPartDone
         
          ;left border reached?
          lda PARAM7
          beq .LeftDoneBottom
          dec PARAM7
.LeftDoneBottom
          lda PARAM8
          beq .RightEndReachedBottom
          cmp #38
          beq .RightEndReachedBottom
          inc PARAM8
          jmp .NextUpperLineBottom
          
.RightEndReachedBottom
          lda #0
          sta PARAM8
          
          jmp .NextUpperLineBottom

.LowerPartDone

          ldx PARAM6
          rts
          

!zone RestoreBeamDiagonal
RestoreBeamDiagonal
          ldy SPRITE_CHAR_POS_Y,x
          
          stx PARAM6
          
          ldy SPRITE_CHAR_POS_Y,x
          sty PARAM9
          stx PARAM6
          
          lda SPRITE_CHAR_POS_X,x
          sta PARAM7
          sta PARAM8
          
          
.NextUpperLine          
          ldy PARAM9          
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          sec
          sbc #( ( SCREEN_CHAR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_COLOR ) >> 8 )
          sta ZEROPAGE_POINTER_4 + 1
          
          ;upper part
          ;left
          ldy PARAM7
          beq .NoLeftPart
          lda (ZEROPAGE_POINTER_2),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_3),y
          
.NoLeftPart          
          ;right
          ldy PARAM8
          beq .NoRightPart
          
          lda (ZEROPAGE_POINTER_2),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_3),y
          
.NoRightPart
          dec PARAM9
          beq .UpperPartDone
         
          ;left border reached?
          lda PARAM7
          beq .LeftDone
          dec PARAM7
.LeftDone 
          lda PARAM8
          beq .RightEndReached
          cmp #38
          beq .RightEndReached
          inc PARAM8
          jmp .NextUpperLine
          
.RightEndReached
          lda #0
          sta PARAM8
          
          jmp .NextUpperLine

.UpperPartDone


          ;lower part
          ldy SPRITE_CHAR_POS_Y,x
          sty PARAM9
          stx PARAM6
          
          lda SPRITE_CHAR_POS_X,x
          sta PARAM7
          sta PARAM8
          
          
.NextUpperLineBottom
          ldy PARAM9          
          
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          sec
          sbc #( ( SCREEN_CHAR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_COLOR ) >> 8 )
          sta ZEROPAGE_POINTER_4 + 1
          
          ;upper part
          ;left
          ldy PARAM7
          beq .NoLeftPartBottom
          
          lda (ZEROPAGE_POINTER_2),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_3),y
          
.NoLeftPartBottom
          ;right
          ldy PARAM8
          beq .NoRightPartBottom
          
          lda (ZEROPAGE_POINTER_2),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_3),y
          
.NoRightPartBottom
          inc PARAM9
          lda PARAM9
          cmp #22
          beq .LowerPartDone
         
          ;left border reached?
          lda PARAM7
          beq .LeftDoneBottom
          dec PARAM7
.LeftDoneBottom
          lda PARAM8
          beq .RightEndReachedBottom
          cmp #38
          beq .RightEndReachedBottom
          inc PARAM8
          jmp .NextUpperLineBottom
          
.RightEndReachedBottom
          lda #0
          sta PARAM8
          
          jmp .NextUpperLineBottom

.LowerPartDone

          ldx PARAM6
          rts
 
 
 
!zone BossFollowPlayerX
BOSS3_MOVE_SPEED = 2
.DoGhostMove
          ;move X times
          ldy SPRITE_MOVE_POS,x
          sty PARAM4
          beq +
          
          lda SPRITE_DIRECTION,x
          beq .DoRight
.MoveLoopL
          jsr ObjectMoveLeftBlocking
          dec PARAM4
          bne .MoveLoopL
+          
          rts
          
.DoRight
.MoveLoopR
          jsr ObjectMoveRightBlocking
          dec PARAM4
          bne .MoveLoopR
          rts

BossFollowPlayerX
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #10
          beq .DoCheckMove
          jmp .DoGhostMove

.DoCheckMove
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          txa
          and #$01
          tay
          lda SPRITE_ACTIVE,y
          cmp #TYPE_PLAYER_DEAN
          beq .FoundPlayer
          cmp #TYPE_PLAYER_SAM
          beq .FoundPlayer
          
          ;check other player
          tya
          eor #1
          tay
          lda SPRITE_ACTIVE,y
          cmp #TYPE_PLAYER_DEAN
          beq .FoundPlayer
          cmp #TYPE_PLAYER_SAM
          beq .FoundPlayer
          
          ;no player to hunt
          rts
          
.FoundPlayer
          ;player index in y
          lda SPRITE_CHAR_POS_X,y
          cmp SPRITE_CHAR_POS_X,x
          bpl .MoveRight
          
          ;move left
          lda SPRITE_DIRECTION,x
          bne .AlreadyLookingLeft
          lda SPRITE_MOVE_POS,x
          beq .TurnLNow
          dec SPRITE_MOVE_POS,x
          bne .CheckXDone
          
.TurnLNow          
          ;turning now
          lda #1
          sta SPRITE_DIRECTION,x
          lda #SPRITE_BOSS_ARM_L
          sta SPRITE_POINTER_BASE,x
          jmp .CheckXDone
          
.AlreadyLookingLeft
          lda SPRITE_MOVE_POS,x
          cmp #BOSS3_MOVE_SPEED
          beq .CheckXDone
          inc SPRITE_MOVE_POS,x
          jmp .CheckXDone
          
.MoveRight   
          lda SPRITE_DIRECTION,x
          beq .AlreadyLookingRight
          
          lda SPRITE_MOVE_POS,x
          beq .TurnRNow
          dec SPRITE_MOVE_POS,x
          bne .CheckXDone
          
          ;turning now
.TurnRNow          
          lda #0
          sta SPRITE_DIRECTION,x
          lda #SPRITE_BOSS_ARM_R
          sta SPRITE_POINTER_BASE,x
          jmp .CheckXDone
          
.AlreadyLookingRight          
          lda SPRITE_MOVE_POS,x
          cmp #BOSS3_MOVE_SPEED
          beq .CheckXDone
          inc SPRITE_MOVE_POS,x
          jmp .CheckXDone
 
 
.CheckXDone
          rts
          
;------------------------------------------------------------
;boss 3
;state 1 = shoot
;state 128 = follow player
;state 129 = shoot, hitback active
;------------------------------------------------------------
!zone BehaviourBoss3
BehaviourBoss3
BOSS_MOVE_SPEED = 1
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack
          
          ;make vulnerable again
          lda SPRITE_STATE,x
          cmp #129
          bne .NoHitBack
          
          lda #1
          sta SPRITE_STATE,x
        
.NoHitBack        
          lda SPRITE_STATE,x
          and #$7f
          beq .FollowPlayer

          ;shoot state
          jmp .ShootDown
          



.FollowPlayer
          ;above player?
          jsr FindPlayer
          cmp #2
          bne ++
          ;no player to hunt
          rts
          
++
          ;player index in y
          lda SPRITE_CHAR_POS_X,y
          cmp SPRITE_CHAR_POS_X,x
          bne +

          ;enter attack mode
          lda #1
          sta SPRITE_STATE,x
          lda #0
          sta SPRITE_MODE_POS,x
          rts

+

          lda DELAYED_GENERIC_COUNTER
          and #$01
          beq +
          
          rts
          
+          
          ;y swing
          inc SPRITE_MOVE_POS_Y,x
          lda SPRITE_MOVE_POS_Y,x
          and #15
          sta SPRITE_MOVE_POS_Y,x
          
          ldy SPRITE_MOVE_POS_Y,x
          lda PATH_DY,y
          beq .NoYMoveNeeded
          sta PARAM1
          bpl .MoveDown
          
          ;move up
          lda PARAM1
          and #$7f
          sta PARAM1
.MoveUp   
          jsr ObjectMoveUp
          dec PARAM1
          bne .MoveUp
          
          jmp BossFollowPlayerX
          
.MoveDown
          jsr ObjectMoveDown
          dec PARAM1
          bne .MoveDown

.NoYMoveNeeded
          jmp BossFollowPlayerX
          
          
          
.ShootDown          
          ;Attack modes (more modes?)
          inc SPRITE_ANNOYED,x
          lda SPRITE_ANNOYED,x
          cmp #4
          beq .NextAttackStep
          rts
          
.NextAttackStep
          lda #0
          sta SPRITE_ANNOYED,x

          lda SPRITE_CHAR_POS_X,x
          sta PARAM4
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM5

          inc SPRITE_MODE_POS,x
          
          lda SPRITE_MODE_POS,x
          cmp #11
          bcc .BeamNotDangerous
          cmp #29
          bcs .BeamNotDangerous
          
          ;does player hit beam?
          ldy #0
          jsr CheckIsPlayerCollidingWithBeamV
          ldy #1
          jsr CheckIsPlayerCollidingWithBeamV
          
.BeamNotDangerous          
          lda SPRITE_MODE_POS,x
          cmp #11
          beq .BeamStep1
          cmp #12
          beq .BeamStep2
          cmp #13
          beq .BeamStep3
          cmp #16
          beq .BeamStep4
          cmp #17
          beq .BeamStep3
          cmp #18
          beq .BeamStep4
          cmp #19
          beq .BeamStep3
          cmp #20
          beq .BeamStep4
          cmp #21
          beq .BeamStep3
          cmp #22
          beq .BeamStep4
          cmp #23
          beq .BeamStep3
          cmp #24
          beq .BeamStep4
          cmp #25
          beq .BeamStep3
          cmp #26
          beq .BeamStep4
          cmp #27
          beq .BeamStep3
          cmp #28
          beq .BeamStep4
          cmp #29
          beq .BeamStep3
          cmp #30
          beq .BeamEnd
          rts
          
.HandleBeam
          lda BEAM_CHAR_H,y
          sta PARAM1
          lda BEAM_CHAR_V,y
          sta PARAM2
          lda BEAM_COLOR,y
          sta PARAM3
          
          txa
          pha
          jsr DrawBeamV
          pla
          tax
          rts

.BeamStep1
          ;beam
          ldy #BEAM_TYPE_DARK
          jmp .HandleBeam
          
.BeamStep2
          ;beam
          ldy #BEAM_TYPE_MEDIUM
          jmp .HandleBeam
          
.BeamStep3
          ;beam
          ldy #BEAM_TYPE_LIGHT
          jmp .HandleBeam
          
.BeamStep4
          ;beam
          ldy #BEAM_TYPE_LIGHT2
          jmp .HandleBeam
          
.BeamEnd
          jsr RestoreBeamHV
          
          lda #128
          sta SPRITE_STATE,x
          rts



;------------------------------------------------------------
;boss
;------------------------------------------------------------
!zone BehaviourBoss4
BehaviourBoss4
BOSS_MOVE_SPEED = 1
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack
          
          ;make vulnerable again
          lda SPRITE_STATE,x
          cmp #128
          bne .NoHitBack
          
          lda #0
          sta SPRITE_STATE,x
        
.NoHitBack        
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
.NoAnimUpdate     
          lda SPRITE_STATE,x
          bne .NotFollowPlayer
          
          
          ;check if on same height as a player
          lda SPRITE_ACTIVE
          cmp #TYPE_PLAYER_DEAN
          bne ++
          
          lda SPRITE_CHAR_POS_Y
          cmp SPRITE_CHAR_POS_Y,x
          beq .StartAttackMode
          
++          

          lda SPRITE_ACTIVE + 1
          cmp #TYPE_PLAYER_SAM
          bne ++

          lda SPRITE_CHAR_POS_Y + 1
          cmp SPRITE_CHAR_POS_Y,x
          beq .StartAttackMode
          
++          
          ;anim
          lda SPRITE_DIRECTION,x
          beq +
          lda #SPRITE_BOSS_FOOT_L
          jmp ++


+
          lda #SPRITE_BOSS_FOOT_R
++          
          sta SPRITE_POINTER_BASE,x
          
          jmp BossFollowPlayer
          
.StartAttackMode
          lda #1
          sta SPRITE_STATE,x
          lda #0
          sta SPRITE_MOVE_POS,x
          sta SPRITE_MODE_POS,x
          jmp .AttackMode
          
.NotFollowPlayer          
          cmp #1
          beq .AttackMode
          rts
          
.AttackMode          
          ;Attack modes (more modes?)
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          cmp #4
          beq .NextAttackStep
          rts
          
.NextAttackStep
          lda SPRITE_CHAR_POS_X,x
          sta PARAM4
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM5
          
          lda #0
          sta SPRITE_MOVE_POS,x

          inc SPRITE_MODE_POS,x
          
          lda SPRITE_MODE_POS,x
          cmp #11
          bcc .BeamNotDangerous
          cmp #29
          bcs .BeamNotDangerous
          
          ;does player hit beam?
          ldy #0
          jsr CheckIsPlayerCollidingWithBeam
          ldy #1
          jsr CheckIsPlayerCollidingWithBeam
          
.BeamNotDangerous          
          lda SPRITE_MODE_POS,x
          cmp #5
          beq .BeamStep1
          cmp #6
          beq .BeamStep2
          cmp #7
          beq .BeamStep3
          cmp #8
          beq .BeamStep4
          cmp #9
          beq .BeamStep3
          cmp #10
          beq .BeamStep4
          cmp #11
          beq .BeamStep3
          cmp #12
          beq .BeamEnd
          rts
          
.HandleBeam
          lda BEAM_CHAR_H,y
          sta PARAM1
          lda BEAM_CHAR_V,y
          sta PARAM2
          lda BEAM_COLOR,y
          sta PARAM3
          
          jsr DrawBeamH
          jsr DrawBeamV
          rts

.BeamStep1
          ;beam
          ldy #BEAM_TYPE_DARK
          jmp .HandleBeam
          
.BeamStep2
          ;beam
          ldy #BEAM_TYPE_MEDIUM
          jmp .HandleBeam
          
.BeamStep3
          ;beam
          ldy #BEAM_TYPE_LIGHT
          jmp .HandleBeam
          
.BeamStep4
          ;beam
          ldy #BEAM_TYPE_LIGHT2
          jmp .HandleBeam
          
.BeamEnd
          jsr RestoreBeamHV
          
          lda #0
          sta SPRITE_STATE,x
          rts



;------------------------------------------------------------
;boss #5
;state 0 = find target Y
;state 1 = move towards target Y
;state 2 = attack
;state 3 = cool off
;------------------------------------------------------------
!zone BehaviourBoss5
BehaviourBoss5
BOSS_MOVE_SPEED = 1
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack

          lda #1
          sta VIC_SPRITE_COLOR,x

          ;make vulnerable again
          lda SPRITE_STATE,x
          cmp #128
          bne .NoHitBack
          
          
          lda #0
          sta SPRITE_STATE,x
        
.NoHitBack        
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate
          
          lda SPRITE_POINTER_BASE,x
          eor #1
          sta SPRITE_POINTER_BASE,x
          
.NoAnimUpdate   
          lda SPRITE_STATE,x
          bne +
          jmp .FindTargetY
+          
          cmp #1
          beq .MoveTowardsTarget
          cmp #2
          beq .Attack
          cmp #3
          beq .CoolOff
          
          lda #0
          sta SPRITE_STATE,x
          rts
          
.CoolOff
          inc SPRITE_MODE_POS,x
          lda SPRITE_MODE_POS,x
          cmp #30
          bne +
          
          lda #0
          sta SPRITE_STATE,x
          
+          
          rts
          
.Attack
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          and #$1f
          cmp #$1f
          beq +
          rts
          
+          
          ;free bats
          inc SPRITE_MODE_POS,x
          lda SPRITE_MODE_POS,x
          cmp #5
          bne +
          
          inc SPRITE_STATE,x
          lda #0
          sta SPRITE_MODE_POS,x
          rts
          
+          
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM2
          inc PARAM2
          stx PARAM10

          jsr FindEmptySpriteSlot
          beq ++
          
          lda #TYPE_BAT_ATTACKING
          sta PARAM3
          jsr SpawnObject
          lda #0
          sta SPRITE_DIRECTION,x

          jsr FindEmptySpriteSlot
          beq ++

          jsr SpawnObject
          lda #1
          sta SPRITE_DIRECTION,x
          
++          
          ldx PARAM10
          rts
          
          

.MoveTowardsTarget
          ;player index in y
          lda SPRITE_VALUE,x
          cmp SPRITE_CHAR_POS_Y,x
          bne +
 
          ;arrived at target Y
          inc SPRITE_STATE,x
          lda #0
          sta SPRITE_MODE_POS,x
          rts
          
+          
          bpl .MoveDown
          
          ;move up?
          lda SPRITE_DIRECTION_Y,x
          bne .AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnUNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
.TurnUNow          
          ;turning now
          lda #1
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          cmp #BOSS_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove
          
.MoveDown
          lda SPRITE_DIRECTION_Y,x
          beq .AlreadyLookingDown
          
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnDNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
          ;turning now
.TurnDNow          
          lda #0
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingDown
          lda SPRITE_MOVE_POS_Y,x
          cmp #BOSS_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove

.DoGhostMove
          ;move X times
          ldy SPRITE_MOVE_POS_Y,x
          sty PARAM4
          beq .MoveDone
          
          lda SPRITE_DIRECTION_Y,x
          beq .DoDown
.MoveLoopU
          jsr ObjectMoveUpBlocking
          dec PARAM4
          bne .MoveLoopU
          jmp .MoveDone
          
.DoDown
.MoveLoopD
          jsr ObjectMoveDownBlockingNoPlatform
          dec PARAM4
          bne .MoveLoopD
         
.MoveDone       
          rts
          
.FindTargetY
          lda #4
          sta PARAM5
          lda #18
          sta PARAM6
          jsr GenerateRangedRandom
          sta SPRITE_VALUE,x
          inc SPRITE_STATE,x
          rts


;------------------------------------------------------------
;boss #5
;state 128 = find target Y
;state 129 = move towards target Y
;state 0 = attack
;state 130 = cool off
;------------------------------------------------------------
!zone BehaviourBoss6
BehaviourBoss6
BOSS_MOVE_SPEED = 1
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack

          lda #1
          sta VIC_SPRITE_COLOR,x

          ;keep invulnerable
.NoHitBack        
          lda DELAYED_GENERIC_COUNTER
          and #$03
          bne .NoAnimUpdate

          lda SPRITE_POINTER_BASE,x
          eor #1
          sta SPRITE_POINTER_BASE,x

.NoAnimUpdate   
          lda SPRITE_STATE,x
          beq .Attack
          cmp #128
          bne +
          jmp .FindTargetY
+          
          cmp #129
          beq .MoveTowardsTarget
          cmp #130
          beq .CoolOff
          
          lda #0
          sta SPRITE_STATE,x
          rts
          
.CoolOff
          inc SPRITE_MODE_POS,x
          lda SPRITE_MODE_POS,x
          cmp #30
          bne +
          
          lda #128
          sta SPRITE_STATE,x
          
+          
          rts
          
.Attack
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          and #$1f
          cmp #$1f
          beq +
          rts
          
+          
          ;free bats
          inc SPRITE_MODE_POS,x
          lda SPRITE_MODE_POS,x
          cmp #5
          bne +
          
          lda #130
          sta SPRITE_STATE,x
          lda #0
          sta SPRITE_MODE_POS,x
          rts
          
+          
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM2
          inc PARAM2
          stx PARAM10

          jsr FindEmptySpriteSlot
          beq ++
          
          lda #TYPE_BAT_ATTACKING
          sta PARAM3
          jsr SpawnObject
          lda #0
          sta SPRITE_DIRECTION,x

          jsr FindEmptySpriteSlot
          beq ++

          jsr SpawnObject
          lda #1
          sta SPRITE_DIRECTION,x
          
++          
          ldx PARAM10
          rts
          
          

.MoveTowardsTarget
          ;player index in y
          lda SPRITE_VALUE,x
          cmp SPRITE_CHAR_POS_Y,x
          bne +
 
          ;arrived at target Y
          lda #0
          sta SPRITE_MODE_POS,x
          sta SPRITE_STATE,x
          rts
          
+          
          bpl .MoveDown
          
          ;move up?
          lda SPRITE_DIRECTION_Y,x
          bne .AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnUNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
.TurnUNow          
          ;turning now
          lda #1
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingUp
          lda SPRITE_MOVE_POS_Y,x
          cmp #BOSS_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove
          
.MoveDown
          lda SPRITE_DIRECTION_Y,x
          beq .AlreadyLookingDown
          
          lda SPRITE_MOVE_POS_Y,x
          beq .TurnDNow
          dec SPRITE_MOVE_POS_Y,x
          bne .DoGhostMove
          
          ;turning now
.TurnDNow          
          lda #0
          sta SPRITE_DIRECTION_Y,x
          jmp .DoGhostMove
          
.AlreadyLookingDown
          lda SPRITE_MOVE_POS_Y,x
          cmp #BOSS_MOVE_SPEED
          beq .DoGhostMove
          inc SPRITE_MOVE_POS_Y,x
          jmp .DoGhostMove

.DoGhostMove
          ;move X times
          ldy SPRITE_MOVE_POS_Y,x
          sty PARAM4
          beq .MoveDone
          
          lda SPRITE_DIRECTION_Y,x
          beq .DoDown
.MoveLoopU
          jsr ObjectMoveUpBlocking
          dec PARAM4
          bne .MoveLoopU
          jmp .MoveDone
          
.DoDown
.MoveLoopD
          jsr ObjectMoveDownBlockingNoPlatform
          dec PARAM4
          bne .MoveLoopD
         
.MoveDone       
          rts
          
.FindTargetY
          lda #4
          sta PARAM5
          lda #18
          sta PARAM6
          jsr GenerateRangedRandom
          sta SPRITE_VALUE,x
          inc SPRITE_STATE,x
          rts


;------------------------------------------------------------
;boss #7
;state = 0, 128 -> random movements
;state = 129 -> attack with beams
;------------------------------------------------------------
!zone BehaviourBoss7
BehaviourBoss7
BOSS_MOVE_SPEED = 1
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack
          
          ;make vulnerable again
          lda #0
          sta SPRITE_STATE,x
          lda #2
          sta VIC_SPRITE_COLOR,x
          lda #SPRITE_BOSS_HEAD
          sta SPRITE_POINTER_BASE,x
        
.NoHitBack
          lda BOSS_HELD
          beq +
          
          rts


+
          lda SPRITE_STATE,x
          beq .RandomMovements
          cmp #1
          beq +
          cmp #129
          beq +
          jmp .RandomMovements
          
+          
          jmp .AttackWithBeams

.RandomMovements
          inc SPRITE_MODE_POS,x
          bne +
          
          ;attack mode
          lda #129
          sta SPRITE_STATE,x
          rts

+
          lda SPRITE_MOVE_POS,x
          bne .DoMove
          
          ;find new random dir
          
          lda #25
          sta SPRITE_MOVE_POS,x
          
          jsr GenerateRandomNumber
          and #$01
          sta SPRITE_DIRECTION,x
          jsr GenerateRandomNumber
          and #$01
          sta SPRITE_DIRECTION_Y,x

.DoMove
          dec SPRITE_MOVE_POS,x
          
          lda #12
          sta MOVE_BORDER_LEFT
          lda #39 - 12
          sta MOVE_BORDER_RIGHT
          lda #4
          sta MOVE_BORDER_TOP
          lda #12
          sta MOVE_BORDER_BOTTOM
          
          lda SPRITE_DIRECTION,x
          beq ++
          jsr ObjectMoveLeftBlocking
          beq .DoMoveY
          
          ;move other parts
          lda #5
          sta PARAM10
-          
          inx
          lda SPRITE_ACTIVE,x
          cmp #TYPE_BOSS_PART
          bne +
          jsr ObjectMoveLeft
+          
          dec PARAM10
          bne -
          
          jmp .DoMoveY
++          
          jsr ObjectMoveRightBlocking        
          beq .DoMoveY
          
          ;move other parts
          lda #5
          sta PARAM10
-          
          inx
          lda SPRITE_ACTIVE,x
          cmp #TYPE_BOSS_PART
          bne +
          jsr ObjectMoveRight
+          
          dec PARAM10
          bne -
          
.DoMoveY
          ldx CURRENT_INDEX
          lda SPRITE_DIRECTION_Y,x
          beq ++
          jsr ObjectMoveUpBlocking        
          beq .DoMoveDone
          
          ;move other parts
          lda #5
          sta PARAM10
-          
          inx
          lda SPRITE_ACTIVE,x
          cmp #TYPE_BOSS_PART
          bne +
          jsr ObjectMoveUp
+          
          dec PARAM10
          bne -
          jmp .DoMoveDone
++          
          jsr ObjectMoveDownBlocking
          beq .DoMoveDone
          
          ;move other parts
          lda #5
          sta PARAM10
-          
          inx
          lda SPRITE_ACTIVE,x
          cmp #TYPE_BOSS_PART
          bne +
          jsr ObjectMoveDown
+          
          dec PARAM10
          bne -
.DoMoveDone          

          lda #0
          sta MOVE_BORDER_LEFT
          sta MOVE_BORDER_TOP
          lda #39
          sta MOVE_BORDER_RIGHT
          lda #23
          sta MOVE_BORDER_BOTTOM
          rts


.AttackWithBeams
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          and #$03
          beq +
          rts
+


          inc SPRITE_MODE_POS,x

          lda BOSS_PARTS_KILLED
          cmp #5
          bne +
          jmp FinalAttack
          
+         
          cmp #4
          bne +

          ;attack with bats
          jsr GenerateRandomNumber
          and #$01
          beq .NoBatLeft
          
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          lda SPRITE_CHAR_POS_Y,x
          clc
          adc #4
          sta PARAM2
          inc PARAM2
          
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          beq ++
          
          lda #TYPE_BAT_ATTACKING
          sta PARAM3
          jsr SpawnObject
          lda #0
          sta SPRITE_DIRECTION,x
.NoBatLeft
          jsr GenerateRandomNumber
          and #$01
          beq .NoBatRight

          ldx CURRENT_INDEX
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          lda SPRITE_CHAR_POS_Y,x
          clc
          adc #4
          sta PARAM2
          inc PARAM2
          lda #TYPE_BAT_ATTACKING
          sta PARAM3
          
          ldx #2
          jsr FindEmptySpriteSlotWithStartingX
          beq ++          
          jsr SpawnObject
          lda #1
          sta SPRITE_DIRECTION,x
++          
.NoBatRight
          ldx CURRENT_INDEX
          
          lda SPRITE_MODE_POS,x
          cmp #20
          bne +++
                    
          dec SPRITE_STATE,x
          lda #0
          sta SPRITE_MODE_POS,x
+++
          rts


+
          lda SPRITE_MODE_POS,x
          cmp #5
          bcs +
          jmp .BeamNotDangerous
+          
          cmp #12
          bcc +
          jmp .BeamNotDangerous
+          
          
          ;does player hit beam?
          ;modify x to point to arm object
          
          ;only check left/right segment!
          lda SPRITE_ACTIVE + 2,x
          beq ++
          ;left arm
          lda SPRITE_CHAR_POS_Y,x
          clc
          adc #3
          sta PARAM3
          lda #0
          sta PARAM1
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc #2
          sta PARAM2
          ldy #0
          jsr CheckIsPlayerCollidingWithYPosH
          ldy #1
          jsr CheckIsPlayerCollidingWithYPosH
          ldx CURRENT_INDEX
++
          lda SPRITE_ACTIVE + 3,x
          beq ++
          ;right arm
          lda SPRITE_CHAR_POS_Y,x
          clc
          adc #3
          sta PARAM3
          lda SPRITE_CHAR_POS_X,x
          clc
          adc #2
          sta PARAM1
          lda #39
          sta PARAM2
          
          ldy #0
          jsr CheckIsPlayerCollidingWithYPosH
          ldy #1
          jsr CheckIsPlayerCollidingWithYPosH
          ldx CURRENT_INDEX
++

          lda SPRITE_ACTIVE + 4,x
          beq ++
          
          lda SPRITE_CHAR_POS_Y,x
          clc
          adc #8
          sta PARAM2
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc #1
          sta PARAM1
          ldy #0
          jsr CheckIsPlayerCollidingWithDiagonalLLUR
          ldy #1
          jsr CheckIsPlayerCollidingWithDiagonalLLUR
          ldx CURRENT_INDEX

++
          lda SPRITE_ACTIVE + 5,x
          beq ++
          
          lda SPRITE_CHAR_POS_X,x
          clc
          adc #2
          sta PARAM1
          lda SPRITE_CHAR_POS_Y,x
          clc
          adc #8
          sta PARAM2
          ldy #0
          jsr CheckIsPlayerCollidingWithDiagonalULLR
          ldy #1
          jsr CheckIsPlayerCollidingWithDiagonalULLR
          ldx CURRENT_INDEX
++          
          
          
.BeamNotDangerous          
          lda SPRITE_MODE_POS,x
          cmp #5
          beq .BeamStep1
          cmp #6
          beq .BeamStep2
          cmp #7
          beq .BeamStep3
          cmp #8
          beq .BeamStep4
          cmp #9
          beq .BeamStep3
          cmp #10
          beq .BeamStep4
          cmp #11
          beq .BeamStep3
          cmp #12
          bne +
          dec SPRITE_STATE,x
          lda #0
          sta SPRITE_MODE_POS,x
          ;remove beam
          lda #0
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #3
          sta PARAM4
          lda #39
          sta PARAM5
          jsr RestoreBeamHSegment
          
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc #1
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #8
          sta PARAM4
          jsr RestoreBeamDiagonalLLUR
          
          lda SPRITE_CHAR_POS_X,x
          clc
          adc #2
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #8
          sta PARAM4
          jsr RestoreBeamDiagonalULLR
          
          jsr RedrawItems
          
+          
          rts
          
.BeamStep1
          ;beam
          ldy #BEAM_TYPE_DARK
          jmp .HandleBeam
          
.BeamStep2
          ;beam
          ldy #BEAM_TYPE_MEDIUM
          jmp .HandleBeam
          
.BeamStep3
          ;beam
          ldy #BEAM_TYPE_LIGHT
          jmp .HandleBeam
          
.BeamStep4
          ;beam
          ldy #BEAM_TYPE_LIGHT2
          jmp .HandleBeam
          
.HandleBeam
          ;PARAM1 = beam h char
          ;PARAM2 = beam color
          ;PARAM3 = x char pos
          ;PARAM4 = y char pos
          ;PARAM5 = x end pos
          tya
          pha

          lda BEAM_CHAR_H,y
          sta PARAM1
          lda BEAM_COLOR,y
          sta PARAM2

          ;left arm
          lda SPRITE_ACTIVE + 2,x
          beq ++
          lda #0
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #3
          sta PARAM4
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc #2
          sta PARAM5
          jsr DrawBeamHSegment

++
          lda SPRITE_ACTIVE + 3,x
          beq ++
          lda SPRITE_CHAR_POS_X,x
          clc
          adc #3
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #3
          sta PARAM4
          lda #39
          sta PARAM5
          jsr DrawBeamHSegment
          
++
          ;diagonal left
          pla
          pha
          tay
          
          lda SPRITE_ACTIVE + 4,x
          beq ++
          
          lda BEAM_CHAR_NESW,y
          sta PARAM1
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc #1
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #8
          sta PARAM4
          jsr DrawBeamDiagonalLLUR
          
++          
          pla
          tay
          
          lda SPRITE_ACTIVE + 5,x
          beq ++
          
          lda BEAM_CHAR_NWSE,y
          sta PARAM1
          lda SPRITE_CHAR_POS_X,x
          clc
          adc #2
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          clc 
          adc #8
          sta PARAM4
          jsr DrawBeamDiagonalULLR
          
++          
          rts


!zone FinalAttack
.BeamStep1
          ;left arm
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM3
          lda #0
          sta PARAM1
          lda SPRITE_CHAR_POS_X,x
          sta PARAM2
          ldy #0
          jsr CheckIsPlayerCollidingWithYPosH
          ldy #1
          jsr CheckIsPlayerCollidingWithYPosH
          ldx CURRENT_INDEX
          

          ldy #BEAM_TYPE_DARK
          lda BEAM_CHAR_H,y
          sta PARAM1
          lda #1
          sta PARAM2
          lda #0
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM4
          lda SPRITE_CHAR_POS_X,x
          sec
          sbc #2
          sta PARAM5
          jsr DrawBeamHSegment
          rts
          
.BeamStep1End
          ;remove beam
          lda #0
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM4
          lda #39
          sta PARAM5
          jsr RestoreBeamHSegment
          jsr RedrawItems
          rts


.BeamStep2

          lda SPRITE_CHAR_POS_Y,x
          sta PARAM2
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          ldy #0
          jsr CheckIsPlayerCollidingWithDiagonalLLUR
          ldy #1
          jsr CheckIsPlayerCollidingWithDiagonalLLUR
          ldx CURRENT_INDEX

          ldy #3
          lda BEAM_CHAR_NESW,y
          sta PARAM1
          lda #1
          sta PARAM2
          lda SPRITE_CHAR_POS_X,x
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM4
          jsr DrawBeamDiagonalLLUR
          rts
          
.BeamStep2End
          lda SPRITE_CHAR_POS_X,x
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM4
          jsr RestoreBeamDiagonalLLUR
          jsr RedrawItems
          rts

FinalAttack
          ;mode 5, 6 = left
          ;     7, 8 = diagonal left down
          ;     9, 10 = down
          ;     11, 12 = diagonal right down
          ;     13, 14 = right
          
          lda SPRITE_MODE_POS,x
          cmp #5
          bne +
          jmp .BeamStep1
+          
          cmp #6
          beq .BeamStep1End
          cmp #7
          beq .BeamStep2
          cmp #8
          beq .BeamStep2End
          cmp #9
          beq .BeamStep3
          cmp #10
          beq .BeamStep3End
          cmp #11
          beq .BeamStep4
          cmp #12
          bne +
          jmp .BeamStep4End
+          
          cmp #13
          bne +
          jmp .BeamStep5
+          
          cmp #14
          bne +
          ; .BeamStep5End
          jmp .BeamStep1End
+
          cmp #15
          bne +

          lda #0
          sta SPRITE_MODE_POS,x
          sta SPRITE_STATE,x
+          
          rts

.BeamStep3

          ;does player hit beam?
          ldy #0
          jsr CheckIsPlayerCollidingWithBeamV
          ldy #1
          jsr CheckIsPlayerCollidingWithBeamV
          ldx CURRENT_INDEX

          ldy #BEAM_TYPE_DARK
          lda BEAM_CHAR_H,y
          sta PARAM1
          lda BEAM_CHAR_V,y
          sta PARAM2
          lda #1
          sta PARAM3

          lda SPRITE_CHAR_POS_X,x
          sta PARAM4
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM5
          stx PARAM6
          jsr DrawBeamV
          rts
          
.BeamStep3End
          lda SPRITE_CHAR_POS_X,x
          sta PARAM4
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM5

          jsr RestoreBeamHV
          jsr RedrawItems
          rts
          


.BeamStep4
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM2
          ldy #0
          jsr CheckIsPlayerCollidingWithDiagonalULLR
          ldy #1
          jsr CheckIsPlayerCollidingWithDiagonalULLR
          ldx CURRENT_INDEX

          ldy #3
          lda BEAM_CHAR_NWSE,y
          sta PARAM1
          lda #1
          sta PARAM2
          lda SPRITE_CHAR_POS_X,x
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM4
          jsr DrawBeamDiagonalULLR

          rts
          
.BeamStep4End
          lda SPRITE_CHAR_POS_X,x
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM4
          jsr RestoreBeamDiagonalULLR
          jsr RedrawItems
          rts


.BeamStep5

          ;right arm
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM3
          lda SPRITE_CHAR_POS_X,x
          sta PARAM1
          lda #39
          sta PARAM2
          
          ldy #0
          jsr CheckIsPlayerCollidingWithYPosH
          ldy #1
          jsr CheckIsPlayerCollidingWithYPosH
          ldx CURRENT_INDEX

          ldy #BEAM_TYPE_DARK
          lda BEAM_CHAR_H,y
          sta PARAM1
          lda #1
          sta PARAM2
          lda SPRITE_CHAR_POS_X,x
          sta PARAM3
          lda SPRITE_CHAR_POS_Y,x
          sta PARAM4
          lda #39
          sta PARAM5
          jsr DrawBeamHSegment
          rts
          
;PARAM1 = beam h char
;PARAM2 = beam color
;PARAM3 = x char pos
;PARAM4 = y char pos
!zone DrawBeamDiagonalLLUR
DrawBeamDiagonalLLUR
.NextLine
          ldy PARAM4
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          ;left
          ldy PARAM3
          lda PARAM1
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM2
          sta (ZEROPAGE_POINTER_2),y
          
          inc PARAM4
          lda PARAM4
          cmp #22
          beq .LowerPartDone
         
          ;left border reached?
          lda PARAM3
          beq .LowerPartDone
          dec PARAM3
          jmp .NextLine

.LowerPartDone
          rts
          

;PARAM3 = x char pos
;PARAM4 = y char pos
!zone RestoreBeamDiagonalLLUR
RestoreBeamDiagonalLLUR
.NextLine
          ldy PARAM4
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_BACK_CHAR - SCREEN_BACK_COLOR ) >> 8 )
          sta ZEROPAGE_POINTER_4 + 1
          
          ;left
          ldy PARAM3
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          
          inc PARAM4
          lda PARAM4
          cmp #22
          beq .LowerPartDone
         
          ;left border reached?
          lda PARAM3
          beq .LowerPartDone
          dec PARAM3
          jmp .NextLine

.LowerPartDone
          rts


;PARAM1 = beam h char
;PARAM2 = beam color
;PARAM3 = x char pos
;PARAM4 = y char pos
!zone DrawBeamDiagonalULLR
DrawBeamDiagonalULLR
.NextLine
          ldy PARAM4
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          
          ldy PARAM3
          lda PARAM1
          sta (ZEROPAGE_POINTER_1),y
          lda PARAM2
          sta (ZEROPAGE_POINTER_2),y
          
          inc PARAM4
          lda PARAM4
          cmp #22
          beq .LowerPartDone
         
          ;left border reached?
          lda PARAM3
          cmp #39
          beq .LowerPartDone
          inc PARAM3
          jmp .NextLine

.LowerPartDone
          rts
          

;PARAM3 = x char pos
;PARAM4 = y char pos
!zone RestoreBeamDiagonalULLR
RestoreBeamDiagonalULLR
.NextLine
          ldy PARAM4
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_1 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_2 + 1
          sec
          sbc #( ( SCREEN_COLOR - SCREEN_BACK_CHAR ) >> 8 )
          sta ZEROPAGE_POINTER_3 + 1
          sec
          sbc #( ( SCREEN_BACK_CHAR - SCREEN_BACK_COLOR ) >> 8 )
          sta ZEROPAGE_POINTER_4 + 1
          
          ldy PARAM3
          lda (ZEROPAGE_POINTER_3),y
          sta (ZEROPAGE_POINTER_1),y
          lda (ZEROPAGE_POINTER_4),y
          sta (ZEROPAGE_POINTER_2),y
          
          inc PARAM4
          lda PARAM4
          cmp #22
          beq .LowerPartDone
         
          ;left border reached?
          lda PARAM3
          cmp #39
          beq .LowerPartDone
          inc PARAM3
          jmp .NextLine

.LowerPartDone
          rts




;------------------------------------------------------------
;boss helper
;------------------------------------------------------------
!zone BehaviourBossHelper
BehaviourBossHelper
          lda SPRITE_HITBACK,x
          beq .NoHitBack

          dec SPRITE_HITBACK,x
          
          ldy SPRITE_HITBACK,x
          lda BOSS_FLASH_TABLE,y
          sta VIC_SPRITE_COLOR,x
          
          cpy #0
          bne .NoHitBack
          
          ;make vulnerable again
          lda #0
          sta SPRITE_STATE,x
          lda #2
          sta VIC_SPRITE_COLOR,x
        
.NoHitBack        
          jsr GenerateRandomNumber
          and #$03
          bne .DoY
          
          inc SPRITE_MOVE_POS,x
          lda SPRITE_MOVE_POS,x
          and #$0f
          sta SPRITE_MOVE_POS,x
          ldy SPRITE_MOVE_POS,x
          lda BOSS_DELTA_TABLE_X,y
          beq .DoY
          sta PARAM1
          
          bmi .Left
          
.Right          
          jsr MoveSpriteRight
          dec PARAM1
          bne .Right
          jmp .DoY
          
.Left
          jsr MoveSpriteLeft
          inc PARAM1
          bne .Left
          
.DoY          
          jsr GenerateRandomNumber
          and #$03
          bne .Done

          inc SPRITE_MOVE_POS_Y,x
          lda SPRITE_MOVE_POS_Y,x
          and #$0f
          sta SPRITE_MOVE_POS_Y,x

          ldy SPRITE_MOVE_POS_Y,x
          lda BOSS_DELTA_TABLE_Y,y
          beq .Done
          sta PARAM1
          
          bmi .Up
          
.Down
          jsr MoveSpriteDown
          dec PARAM1
          bne .Down
          jmp .Done
          
.Up
          jsr MoveSpriteUp
          inc PARAM1
          bne .Up
          
.Done
          rts


;------------------------------------------------------------
;explosion
;------------------------------------------------------------
!zone BehaviourExplosion
BehaviourExplosion
          jsr MoveSpriteUp
          
          inc SPRITE_ANIM_DELAY,x
          lda SPRITE_ANIM_DELAY,x
          cmp #3
          beq .UpdateAnimation
          rts
          
.UpdateAnimation          
          lda #0
          sta SPRITE_ANIM_DELAY,x
          
          inc SPRITE_ANIM_POS,x
          lda SPRITE_ANIM_POS,x
          cmp #8
          beq .ExplosionDone
         
          inc SPRITE_POINTER_BASE,x
          rts
          

.ExplosionDone
          jsr RemoveObject
          rts
          

;------------------------------------------------------------
;determins if object is looking at player
;X = sprite index
;returns 1 if looking at player, 0 if not
;------------------------------------------------------------
!zone LookingAtPlayer
LookingAtPlayer
          lda SPRITE_DIRECTION,x
          beq .LookingRight
          
          lda SPRITE_ACTIVE
          cmp #TYPE_PLAYER_DEAN
          bne .NotDean
          
          lda SPRITE_CHAR_POS_X,x
          cmp SPRITE_CHAR_POS_X
          bpl .LookingAtPlayer
          
.NotDean          
          lda SPRITE_ACTIVE + 1
          cmp #TYPE_PLAYER_SAM
          bne .NoPlayerInSight
          
          lda SPRITE_CHAR_POS_X,x
          cmp SPRITE_CHAR_POS_X + 1
          bpl .LookingAtPlayer
          jmp .NoPlayerInSight

.LookingRight
          lda SPRITE_ACTIVE
          cmp #TYPE_PLAYER_DEAN
          bne .NotDeanR
          
          lda SPRITE_CHAR_POS_X,x
          cmp SPRITE_CHAR_POS_X
          bmi .LookingAtPlayer
          
.NotDeanR          
          lda SPRITE_ACTIVE + 1
          cmp #TYPE_PLAYER_SAM
          bne .NoPlayerInSight

          lda SPRITE_CHAR_POS_X,x
          cmp SPRITE_CHAR_POS_X + 1
          bmi .LookingAtPlayer

          jmp .NoPlayerInSight
          
.LookingAtPlayer
          lda #1
          rts
 
.NoPlayerInSight
          lda #0
          rts

;------------------------------------------------------------
;hit behaviour getting hurt
;------------------------------------------------------------
!zone HitBehaviourHurt
HitBehaviourHurt
          lda #8
          sta SPRITE_HITBACK,x

          ;hitback dir determined from player dir (equal shot dir)          
          lda SPRITE_DIRECTION
          sta SPRITE_HITBACK_DIRECTION,x
          
          inc SPRITE_ANNOYED,x
          
          ldy SPRITE_ACTIVE,x
          lda TYPE_ANNOYED_COLOR,y
          sta VIC_SPRITE_COLOR,x
          rts


;------------------------------------------------------------
;hit behaviour getting hurt
;------------------------------------------------------------
!zone HitBehaviourBoss7
HitBehaviourBoss7
          lda #SPRITE_BOSS_HEAD_HURT
          sta SPRITE_POINTER_BASE,x
          jmp HitBehaviourHurt

 
;------------------------------------------------------------
;hit behaviour for boss
;------------------------------------------------------------
!zone HitBehaviourBoss
HitBehaviourBoss
          lda #8
          sta SPRITE_HITBACK,x
          
          ;boss switches tactic
          lda SPRITE_HP,x
          and #$01
          beq .SwitchToAttack
          rts
          
.SwitchToAttack          
          lda #129
          sta SPRITE_STATE,x
          
          lda #0
          sta SPRITE_MODE_POS,x
          sta SPRITE_MOVE_POS,x
          sta SPRITE_MOVE_POS_Y,x
          
          rts

!zone HitBehaviourBoss3
HitBehaviourBoss3
          lda #8
          sta SPRITE_HITBACK,x
          rts
          
 
;------------------------------------------------------------
;hit behaviour getting hurt and turn towards the player
;x = index of hurt object
;PARAM6 = index of shooting player
;------------------------------------------------------------
!zone HitBehaviourHurtTurn
HitBehaviourHurtTurn
          lda #8
          sta SPRITE_HITBACK,x

          ;hitback dir determined from player dir (equal shot dir)
          ldy PARAM6
          lda SPRITE_DIRECTION,y
          sta SPRITE_HITBACK_DIRECTION,x
          
          ;looking at the player?
          jsr LookingAtPlayer
          bne .AlreadySeeingPlayer
          
          ;turn around
          lda SPRITE_DIRECTION,x
          eor #$01
          sta SPRITE_DIRECTION,x
          
.AlreadySeeingPlayer          
          inc SPRITE_ANNOYED,x
          
          ldy SPRITE_ACTIVE,x
          lda TYPE_ANNOYED_COLOR,y
          sta VIC_SPRITE_COLOR,x
          rts
          
 
;------------------------------------------------------------
;hit behaviour crumbling (zombie)
;------------------------------------------------------------
!zone HitBehaviourCrumble
HitBehaviourCrumble
          lda #8
          sta SPRITE_HITBACK,x

          ;hitback dir determined from player dir (equal shot dir)          
          lda SPRITE_DIRECTION
          sta SPRITE_HITBACK_DIRECTION,x

          lda SPRITE_STATE,x
          bne .NoHit
          
          inc SPRITE_ANNOYED,x
          
          ldy SPRITE_ACTIVE,x
          lda TYPE_ANNOYED_COLOR,y
          sta VIC_SPRITE_COLOR,x
          
          lda #SPRITE_ZOMBIE_COLLAPSE_R_1
          clc
          adc SPRITE_DIRECTION,x
          sta SPRITE_POINTER_BASE,x
          
          lda #128
          sta SPRITE_STATE,x
          
.NoHit          
          rts
          
 
;------------------------------------------------------------
;hit behaviour vanishing bat
;------------------------------------------------------------
!zone HitBehaviourVanish
HitBehaviourVanish
          lda SPRITE_STATE,x
          bne .NoHit
          
          lda #1
          sta SPRITE_ANNOYED,x
          
          ldy SPRITE_ACTIVE,x
          lda TYPE_ANNOYED_COLOR,y
          sta VIC_SPRITE_COLOR,x
          
          lda #SPRITE_BAT_VANISH
          sta SPRITE_POINTER_BASE,x
          
          lda #128
          sta SPRITE_STATE,x
          
.NoHit          
          rts
          
 
 
;------------------------------------------------------------
;update sprite jump
;expect x as sprite index (0 to 7)
;returns 0 if blocked/done
;returns 1 if jump continues
;------------------------------------------------------------
 
!zone UpdateSpriteJump
UpdateSpriteJump
          inc SPRITE_JUMP_POS,x
          lda SPRITE_JUMP_POS,x
          cmp #JUMP_TABLE_SIZE
          bne .JumpOn
          
          ;jump done
          jmp .JumpBlocked
          
.JumpOn          
          ldy SPRITE_JUMP_POS,x
          lda JUMP_TABLE,y
          bne .KeepJumping
          
          lda #1
          rts
          
.KeepJumping          
          sta PARAM5
          
.JumpContinue          
          jsr ObjectMoveUpBlocking
          beq .JumpBlocked
          
          dec PARAM5
          bne .JumpContinue
          
          lda #1
          rts
          
.JumpBlocked
          lda #0
          sta SPRITE_JUMP_POS,x
          rts

 
;------------------------------------------------------------
;update sprite fall
;expect x as sprite index (0 to 7)
;returns 0 if not falling
;returns 1 if falling
;------------------------------------------------------------
 
!zone UpdateSpriteFall
UpdateSpriteFall
          jsr ObjectMoveDownBlocking
          beq .NotFalling
          
          ;fell one pixel
          lda #1
          sta SPRITE_FALLING,x
          
          ldy SPRITE_FALL_POS,x
          lda FALL_SPEED_TABLE,y
          beq .FallComplete
          sta PARAM5

.FallLoop          
          dec PARAM5
          beq .FallComplete
          
          jsr ObjectMoveDownBlocking
          jmp .FallLoop
          
.FallComplete
          lda SPRITE_FALL_POS,x
          cmp #( FALL_TABLE_SIZE - 1 )
          beq .FallSpeedAtMax
          
          inc SPRITE_FALL_POS,x
          
.FallSpeedAtMax          
          lda #1
          rts
          
.NotFalling          
          lda #0
          sta SPRITE_FALL_POS,x
          sta SPRITE_FALLING,x
          rts
 
;------------------------------------------------------------
;Move Sprite Left
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
!zone MoveSpriteLeft
MoveSpriteLeft
          lda SPRITE_POS_X,x
          bne .NoChangeInExtendedFlag
          
          lda BIT_TABLE,x
          eor #$ff
          and SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
.NoChangeInExtendedFlag     
          dec SPRITE_POS_X,x
          txa
          asl
          tay
          
          lda SPRITE_POS_X,x
          sta VIC_SPRITE_X_POS,y
          rts  

;------------------------------------------------------------
;Move Sprite Right
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
!zone MoveSpriteRight
MoveSpriteRight
          inc SPRITE_POS_X,x
          lda SPRITE_POS_X,x
          bne .NoChangeInExtendedFlag
          
          lda BIT_TABLE,x
          ora SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
.NoChangeInExtendedFlag     
          txa
          asl
          tay
          
          lda SPRITE_POS_X,x
          sta VIC_SPRITE_X_POS,y
          rts  

;------------------------------------------------------------
;Move Sprite Up
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
!zone MoveSpriteUp
MoveSpriteUp
          dec SPRITE_POS_Y,x
          
          txa
          asl
          tay
          
          lda SPRITE_POS_Y,x
          sta VIC_SPRITE_Y_POS,y
          rts  

;------------------------------------------------------------
;Move Sprite Down
;expect x as sprite index (0 to 7)
;------------------------------------------------------------
!zone MoveSpriteDown
MoveSpriteDown
          inc SPRITE_POS_Y,x
          
          txa
          asl
          tay
          
          lda SPRITE_POS_Y,x
          sta VIC_SPRITE_Y_POS,y
          rts  


;------------------------------------------------------------
;displays get ready
;------------------------------------------------------------
!zone DisplayGetReady
DisplayGetReady
          lda #40
          sta LEVEL_START_DELAY
          lda #0
          sta SPRITE_JUMP_POS

          lda VIC_SPRITE_ENABLE
          sta SPRITE_ENABLED
          lda VIC_SPRITE_MULTICOLOR
          sta SPRITE_MULTICOLOR
          
          ldx #0
          ldy #0
          
-          
          lda GETREADY_SPRITE_X_POS,x
          sta VIC_SPRITE_X_POS,y
          lda VIC_SPRITE_COLOR,x
          sta SPRITE_COLOR,x
          lda GETREADY_SPRITE_COLOR,x
          sta VIC_SPRITE_COLOR,x
          iny
          iny
          inx
          cpx #8
          bne -
          
          lda #110
          sta VIC_SPRITE_Y_POS
          sta VIC_SPRITE_Y_POS + 2
          sta VIC_SPRITE_Y_POS + 4
          sta VIC_SPRITE_Y_POS + 6
          sta VIC_SPRITE_Y_POS + 8
          sta VIC_SPRITE_Y_POS + 10
          sta VIC_SPRITE_Y_POS + 12
          sta VIC_SPRITE_Y_POS + 14
          
          lda #SPRITE_G
          sta SPRITE_POINTER_BASE
          lda #SPRITE_E
          sta SPRITE_POINTER_BASE + 1
          sta SPRITE_POINTER_BASE + 4
          lda #SPRITE_T
          sta SPRITE_POINTER_BASE + 2
          lda #SPRITE_R
          sta SPRITE_POINTER_BASE + 3
          lda #SPRITE_A
          sta SPRITE_POINTER_BASE + 5
          lda #SPRITE_D
          sta SPRITE_POINTER_BASE + 6
          lda #SPRITE_Y
          sta SPRITE_POINTER_BASE + 7
          
          lda #0
          sta VIC_SPRITE_MULTICOLOR
          lda #$80
          sta VIC_SPRITE_X_EXTEND
          lda #$ff
          sta VIC_SPRITE_ENABLE
          sta VIC_SPRITE_EXPAND_X
          sta VIC_SPRITE_EXPAND_Y
          rts



;------------------------------------------------------------
;displays game over
;------------------------------------------------------------
!zone DisplayGameOver
DisplayGameOver
          ldx #0
          ldy #0
          
-          
          lda GETREADY_SPRITE_X_POS,x
          sta VIC_SPRITE_X_POS,y
          lda GETREADY_SPRITE_COLOR,x
          sta VIC_SPRITE_COLOR,x
          iny
          iny
          inx
          cpx #8
          bne -
          
          lda #110
          sta VIC_SPRITE_Y_POS
          sta VIC_SPRITE_Y_POS + 2
          sta VIC_SPRITE_Y_POS + 4
          sta VIC_SPRITE_Y_POS + 6
          sta VIC_SPRITE_Y_POS + 8
          sta VIC_SPRITE_Y_POS + 10
          sta VIC_SPRITE_Y_POS + 12
          sta VIC_SPRITE_Y_POS + 14
          
          lda #SPRITE_G
          sta SPRITE_POINTER_BASE
          lda #SPRITE_A
          sta SPRITE_POINTER_BASE + 1
          lda #SPRITE_M
          sta SPRITE_POINTER_BASE + 2
          lda #SPRITE_E
          sta SPRITE_POINTER_BASE + 3
          sta SPRITE_POINTER_BASE + 6
          lda #SPRITE_O
          sta SPRITE_POINTER_BASE + 4
          lda #SPRITE_V
          sta SPRITE_POINTER_BASE + 5
          lda #SPRITE_R
          sta SPRITE_POINTER_BASE + 7
          
          lda #0
          sta VIC_SPRITE_MULTICOLOR
          lda #$80
          sta VIC_SPRITE_X_EXTEND
          lda #$ff
          sta VIC_SPRITE_ENABLE
          sta VIC_SPRITE_EXPAND_X
          sta VIC_SPRITE_EXPAND_Y
          rts



;------------------------------------------------------------
;ResetObjects
;resets all objects/spawn spots
;------------------------------------------------------------
!zone ResetObjects
ResetObjects
          ldx #0
          lda #0
          sta SPRITE_ENABLED
          sta SPRITE_MULTICOLOR
          sta NUMBER_SPAWN_SPOTS_ALIVE
          sta NUMBER_DELAYED_SPAWN_SPOTS_ALIVE
          sta NUMBER_SPAWNS_ALIVE
          sta SPAWN_SPOT_LEVEL
          sta FINAL_INTRO_TIMER
          sta FINAL_INTRO_TIMER_DELAY

.ClearObjectLoop
          sta SPRITE_ACTIVE,x
          sta SPRITE_FALLING,x
          sta SPRITE_DIRECTION,x
          sta SPRITE_DIRECTION_Y,x
          sta SPRITE_ANIM_POS,x
          sta SPRITE_ANIM_DELAY,x
          sta SPAWN_SPOT_ACTIVE,x
          
          inx
          cpx #8
          bne .ClearObjectLoop
          rts


;------------------------------------------------------------
;BuildScreen
;creates a screen from level data
;------------------------------------------------------------
!zone BuildScreen
BuildScreen
          ;reset all objects
          jsr ResetObjects
          
          ;clear screen
          lda #32
          ldy #6
          jsr ClearPlayScreen

          lda #0
          sta LEVEL_CONFIG
          lda #10
          sta SPAWN_LEFT_BORDER
          lda #30
          sta SPAWN_RIGHT_BORDER
          
          ;get pointer to real level data from table
          lda LEVEL_NR
          asl
          tax
          ;lda SCREEN_DATA_TABLE,x
          lda SN_SCREEN_DATA_TABLE,x
          sta ZEROPAGE_POINTER_1
          ;lda SCREEN_DATA_TABLE + 1,x
          lda SN_SCREEN_DATA_TABLE + 1,x
          sta ZEROPAGE_POINTER_1 + 1
          beq .NoMoreLevels
          
          jsr .BuildLevel
          
          lda LEVEL_CONFIG
          and #$01
          bne .SkipBorder

          ;draw level border
          lda #<LEVEL_BORDER_DATA
          sta ZEROPAGE_POINTER_1
          lda #>LEVEL_BORDER_DATA
          sta ZEROPAGE_POINTER_1 + 1
          jsr .BuildLevel
          
.SkipBorder          
          lda LEVEL_CONFIG
          and #$02
          beq .SetCharSet1
          
          ;set charset 2
          lda #10
          sta VIC_CHARSET_MULTICOLOR_1
          lda #7
          sta VIC_CHARSET_MULTICOLOR_2
          lda #$30
-          
          sta VIC_MEMORY_CONTROL

          jsr DisplayLevelNumber
 
          ;adjust spawn border
          lda LEVEL_CONFIG
          and #$04
          beq +
          
          lda #15
          sta SPAWN_LEFT_BORDER
          lda #25
          sta SPAWN_RIGHT_BORDER
+          
          rts
          
.SetCharSet1
          lda #12
          sta VIC_CHARSET_MULTICOLOR_1
          lda #8
          sta VIC_CHARSET_MULTICOLOR_2
          lda #$3e
          jmp -
          
.NoMoreLevels
          ;loop from first screen
          jsr StartLevel
          
          lda #0
          sta LEVEL_NR
          jsr BuildScreen
          rts
          
.BuildLevel
          ;work through data
          ldy #255
          
.LevelDataLoop
          iny
          
          lda (ZEROPAGE_POINTER_1),y
          tax
          
          lda LEVEL_ELEMENT_TABLE_LO,x
          sta ZEROPAGE_POINTER_4
          lda LEVEL_ELEMENT_TABLE_HI,x
          sta ZEROPAGE_POINTER_4 + 1
          
          jmp (ZEROPAGE_POINTER_4)
          
LEVEL_ELEMENT_TABLE_LO
          !byte <.LevelComplete
          !byte <LevelLineH
          !byte <LevelLineV
          !byte <LevelObject
          !byte <LevelArea
          !byte <LevelLineHAlternating
          !byte <LevelLineVAlternating
          !byte <LevelQuad
          !byte <LevelSpawnSpot
          !byte <LevelElement
          !byte <LevelElementH
          !byte <LevelElementV
          !byte <LevelElementArea
          !byte <LevelConfigByte
          
LEVEL_ELEMENT_TABLE_HI
          !byte >.LevelComplete
          !byte >LevelLineH
          !byte >LevelLineV
          !byte >LevelObject
          !byte >LevelArea
          !byte >LevelLineHAlternating
          !byte >LevelLineVAlternating
          !byte >LevelQuad
          !byte >LevelSpawnSpot
          !byte >LevelElement
          !byte >LevelElementH
          !byte >LevelElementV
          !byte >LevelElementArea
          !byte >LevelConfigByte

.LevelComplete          
          rts
          
NextLevelData
          pla
          
          ;adjust pointers so we're able to access more 
          ;than 256 bytes of level data
          clc
          adc #1
          adc ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_1
          lda ZEROPAGE_POINTER_1 + 1
          adc #0
          sta ZEROPAGE_POINTER_1 + 1
          ldy #255
          
          jmp .LevelDataLoop


!zone LevelConfigByte
LevelConfigByte
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta LEVEL_CONFIG
          
          tya
          pha
          jmp NextLevelData
          


!zone LevelLineH
LevelLineH
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;width
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          
          ;char
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM4
          
          ;color
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM5
          
          ;store target pointers to screen and color ram
          ldx PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          tya
          pha
          
          ldy PARAM1
.NextChar          
          lda PARAM4
          sta (ZEROPAGE_POINTER_2),y
          lda PARAM5
          sta (ZEROPAGE_POINTER_3),y
          iny
          dec PARAM3
          bne .NextChar
          
          jmp NextLevelData


!zone LevelLineV          
LevelLineV
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;height
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          
          ;char
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM4
          
          ;color
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM5
          
          ;store target pointers to screen and color ram
          ldx PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          tya
          pha
          
          ldy PARAM1
.NextCharV         
          lda PARAM4
          sta (ZEROPAGE_POINTER_2),y
          lda PARAM5
          sta (ZEROPAGE_POINTER_3),y
          
          ;adjust pointer
          lda ZEROPAGE_POINTER_2
          clc
          adc #40
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda ZEROPAGE_POINTER_2 + 1
          adc #0
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          dec PARAM3
          bne .NextCharV
          
          jmp NextLevelData
       

!zone LevelObject       
LevelObject
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;type
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          
          ;store y for later
          tya
          pha

          ;disable players not suitable for game mode
          lda PARAM3
          cmp #TYPE_PLAYER_SAM
          bne .NoProblemSam
          
          ;it's Sam
          lda GAME_MODE
          cmp #GT_SINGLE_PLAYER_DEAN
          beq .DoNotSpawnObject
          
          lda PLAYER_LIVES + 1
          beq .DoNotSpawnObject
          
          ;make sure Sam starts in slot 1
          ldx #1
          jsr FindEmptySpriteSlotWithStartingX
          jmp .LookedForSpriteSlot          
          
.DoNotSpawnObject
          jmp NextLevelData

.NoProblemSam
          lda PARAM3
          cmp #TYPE_PLAYER_DEAN
          bne .NoProblemDean

          ;spawn Dean?
          lda GAME_MODE
          cmp #GT_SINGLE_PLAYER_SAM
          beq .DoNotSpawnObject

          lda PLAYER_LIVES
          beq .DoNotSpawnObject

.NoProblemDean
          jsr FindEmptySpriteSlot
.LookedForSpriteSlot          
          jsr SpawnObject
          jmp NextLevelData
          

;------------------------------------------------------------
;x is sprite slot
;PARAM1 is X
;PARAM2 is Y
;PARAM3 is object type
;expects #1 in A to add object, #0 does not add
;------------------------------------------------------------
!zone SpawnObject
SpawnObject
          ;add object to sprite array
          bne .FreeSlotFound
          rts
          
.FreeSlotFound          
          lda PARAM3
          sta SPRITE_ACTIVE,x
          cmp #TYPE_PLAYER_DEAN
          beq .IsPlayer
          cmp #TYPE_PLAYER_SAM
          bne .IsNotPlayer

.IsPlayer
          lda PARAM1
          sta PLAYER_START_POS_X,x
          lda PARAM2
          sta PLAYER_START_POS_Y,x
          
.IsNotPlayer          
          ;PARAM1 and PARAM2 hold x,y already
          jsr CalcSpritePosFromCharPos
          
          ;enable sprite
          lda BIT_TABLE,x
          ora VIC_SPRITE_ENABLE
          sta VIC_SPRITE_ENABLE

          ;sprite color
          ldy SPRITE_ACTIVE,x
          lda TYPE_START_COLOR,y
          sta VIC_SPRITE_COLOR,x
          
          lda TYPE_START_MULTICOLOR,y
          beq .NoMulticolor
          
          lda BIT_TABLE,x
          ora VIC_SPRITE_MULTICOLOR
          sta VIC_SPRITE_MULTICOLOR
          jmp .MultiColorDone
          
.NoMulticolor          
          lda BIT_TABLE,x
          eor #$ff
          and VIC_SPRITE_MULTICOLOR
          sta VIC_SPRITE_MULTICOLOR

.MultiColorDone      
          
          ;initialise enemy values
          lda TYPE_START_SPRITE,y
          sta SPRITE_POINTER_BASE,x
          
          lda TYPE_START_HP,y
          sta SPRITE_HP,x
          
          ;look right per default
          lda #0
          sta SPRITE_DIRECTION,x
          sta SPRITE_DIRECTION_Y,x
          sta SPRITE_ANIM_POS,x
          sta SPRITE_ANIM_DELAY,x
          sta SPRITE_MOVE_POS,x
          sta SPRITE_MOVE_POS_Y,x
          sta SPRITE_ANNOYED,x
          sta SPRITE_HITBACK,x
          sta SPRITE_MODE_POS,x
          sta SPRITE_VALUE,x

          lda TYPE_START_STATE,y
          sta SPRITE_STATE,x

          lda TYPE_START_DELTA_Y,y
          sta PARAM10
          sty PARAM9
          
.OffsetY          
          beq .NoOffsetY
          
          jsr MoveSpriteUp
          dec PARAM10
          jmp .OffsetY
          
.NoOffsetY          
          ldy PARAM9
          
          ;use start direction
          lda TYPE_START_DIRECTION,y
          and #$10
          beq .NoRandomMovePos
          
          jsr GenerateRandomNumber
          sta SPRITE_MOVE_POS,x
          
.NoRandomMovePos          
          lda TYPE_START_DIRECTION,y
          and #$03
          cmp #3
          beq .RandomLeftRightNothing
          cmp #2
          bne .SetDirX
          jmp .RandomLeftRight
          
.RandomLeftRightNothing
          jsr GenerateRandomNumber
          and #$03
          cmp #2
          beq .SetDirX
          
.RandomLeftRight          
          jsr GenerateRandomNumber
          and #$01
.SetDirX
          sta SPRITE_DIRECTION,x

          lda TYPE_START_DIRECTION,y
          and #%00001100
          lsr
          lsr
          cmp #3
          beq .RandomUpDownNothing
          cmp #2
          bne .SetDirY
          jmp .RandomUpDown
          
.RandomUpDownNothing
          jsr GenerateRandomNumber
          and #$03
          cmp #2
          beq .SetDirY
          
.RandomUpDown          
          jsr GenerateRandomNumber
          and #$01
.SetDirY
          sta SPRITE_DIRECTION_Y,x
          
          ;adjust enemy counter
          ldy PARAM3
          lda IS_TYPE_ENEMY,y
          beq .NoEnemy
          
          inc NUMBER_ENEMIES_ALIVE
          
.NoEnemy
          rts


!zone LevelArea
LevelArea
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          tax
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1

          ;width
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2
          sta PARAM6
          
          ;height
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          
          ;char
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM4
          
          ;color
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM5
          
          ;store target pointers to screen and color ram
          tya
          pha
          
.NextLineArea          
          ldy PARAM1
.NextCharArea
          lda PARAM4
          sta (ZEROPAGE_POINTER_2),y
          lda PARAM5
          sta (ZEROPAGE_POINTER_3),y
          iny
          dec PARAM2
          bne .NextCharArea
          
          dec PARAM3
          beq .AreaDone
          
          ;move pointers down a line
          tya
          sec
          sbc #40
          tay
          
          lda ZEROPAGE_POINTER_2
          clc
          adc #40
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          
          lda ZEROPAGE_POINTER_2 + 1
          adc #0
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          lda PARAM6
          sta PARAM2
          jmp .NextLineArea
          
.AreaDone          
          jmp NextLevelData



!zone LevelLineHAlternating
LevelLineHAlternating
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;width
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          
          ;char
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM4
          
          ;color
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM5
          
          ;store target pointers to screen and color ram
          ldx PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          tya
          pha
          
          ldy PARAM1
.NextChar          
          lda PARAM4
          sta (ZEROPAGE_POINTER_2),y
          lda PARAM5
          sta (ZEROPAGE_POINTER_3),y
          iny
          dec PARAM3
          beq .LineDone
          
          inc PARAM4
          lda PARAM4
          sta (ZEROPAGE_POINTER_2),y
          lda PARAM5
          sta (ZEROPAGE_POINTER_3),y
          iny
          dec PARAM3
          beq .LineDone
          
          dec PARAM4
          jmp .NextChar
          
.LineDone          
          jmp NextLevelData


!zone LevelLineVAlternating          
LevelLineVAlternating
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;height
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          
          ;char
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM4
          
          ;color
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM5
          
          ;store target pointers to screen and color ram
          ldx PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          tya
          pha
          
          ldx #1
          
          ldy PARAM1
.NextCharV     
          txa
          eor #$01
          tax
          
          clc
          adc PARAM4
          sta (ZEROPAGE_POINTER_2),y
          lda PARAM5
          sta (ZEROPAGE_POINTER_3),y
          
          ;adjust pointer
          lda ZEROPAGE_POINTER_2
          clc
          adc #40
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda ZEROPAGE_POINTER_2 + 1
          adc #0
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          dec PARAM3
          bne .NextCharV
          
          jmp NextLevelData


!zone LevelQuad          
LevelQuad
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;item
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          
          ;store y for next data
          tya
          pha
          
          ldy PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1
          
          ldy PARAM1
          ldx PARAM3
          
          ;put image
          lda BLOCK_TABLE_UL_LOCATION0,x
          sta (ZEROPAGE_POINTER_2),y
          lda BLOCK_TABLE_UL_COLOR_LOCATION0,x
          sta (ZEROPAGE_POINTER_3),y
          
          iny
          lda BLOCK_TABLE_UR_LOCATION0,x
          sta (ZEROPAGE_POINTER_2),y
          lda BLOCK_TABLE_UR_COLOR_LOCATION0,x
          sta (ZEROPAGE_POINTER_3),y
          
          tya
          clc
          adc #39
          tay
          
          lda BLOCK_TABLE_LL_LOCATION0,x
          sta (ZEROPAGE_POINTER_2),y
          lda BLOCK_TABLE_LL_COLOR_LOCATION0,x
          sta (ZEROPAGE_POINTER_3),y
          
          iny
          lda BLOCK_TABLE_LR_LOCATION0,x
          sta (ZEROPAGE_POINTER_2),y
          lda BLOCK_TABLE_LR_COLOR_LOCATION0,x
          sta (ZEROPAGE_POINTER_3),y
          jmp NextLevelData
          
          
!zone LevelSpawnSpot          
LevelSpawnSpot
          ;find free spot
          ldx #0
          
.ExamineNextSpot          
          lda SPAWN_SPOT_ACTIVE,x
          beq .EmptySpotFound
          inx
          cpx #SPAWN_SPOT_COUNT
          bne .ExamineNextSpot
          jmp NextLevelData
          
.EmptySpotFound          
          lda #1
          sta SPAWN_SPOT_ACTIVE,x
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta SPAWN_SPOT_X,x
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta SPAWN_SPOT_Y,x

          ;type
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta SPAWN_SPOT_TYPE,x

          ;count
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta SPAWN_SPOT_SPAWN_COUNT,x
          
          ;upper 4 bits set? then it's a delayed spawn spot!
          and #$f0
          bne +
          inc NUMBER_SPAWN_SPOTS_ALIVE
          jmp ++
+ 
          inc NUMBER_DELAYED_SPAWN_SPOTS_ALIVE
++
          tya
          pha

          jmp NextLevelData


;------------------------------------------------------------
;draws a level element
;PARAM1 = X
;PARAM2 = Y
;PARAM3 = TYPE
;returns element width in PARAM4
;returns element height in PARAM5
;------------------------------------------------------------

!zone DrawLevelElement          
DrawLevelElement          

          ldy PARAM3

          lda SNELEMENT_TABLE_LO,y
          sta .LoadCode + 1
          lda SNELEMENT_TABLE_HI,y
          sta .LoadCode + 2

          lda SNELEMENT_COLOR_TABLE_LO,y
          sta .LoadCodeColor + 1
          lda SNELEMENT_COLOR_TABLE_HI,y
          sta .LoadCodeColor + 2

          lda SNELEMENT_WIDTH_TABLE,y
          sta PARAM4
          lda SNELEMENT_HEIGHT_TABLE,y
          sta PARAM5
          sta PARAM6
          
          ldy PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,y
          clc
          adc PARAM1
          sta .StoreCode + 1
          sta .StoreCodeColor + 1
          sta ZEROPAGE_POINTER_4
          lda SCREEN_LINE_OFFSET_TABLE_HI,y
          adc #0
          sta .StoreCode + 2
          adc #( ( >SCREEN_COLOR ) - ( >SCREEN_CHAR ) )
          sta .StoreCodeColor + 2
          
.NextRow          
          ldx #0
          
          ;display a row
.Row
          
.LoadCode
          lda $8000,x
.StoreCode
          sta $8000,x
          
.LoadCodeColor
          lda $8000,x
.StoreCodeColor
          sta $8000,x
          
          inx
          cpx PARAM4
          bne .Row
          
          ;eine zeile nach unten
          dec PARAM6
          beq .ElementDone

          ;should be faster?
          lda .LoadCode + 1
          clc
          adc PARAM4
          sta .LoadCode + 1
          lda .LoadCode + 2
          adc #0
          sta .LoadCode + 2
          
          lda .LoadCodeColor + 1
          clc
          adc PARAM4
          sta .LoadCodeColor + 1
          lda .LoadCodeColor + 2
          adc #0
          sta .LoadCodeColor + 2

          lda .StoreCode + 1
          clc
          adc #40
          sta .StoreCode + 1
          lda .StoreCode + 2
          adc #0
          sta .StoreCode + 2

          lda .StoreCodeColor + 1
          clc
          adc #40
          sta .StoreCodeColor + 1
          lda .StoreCodeColor + 2
          adc #0
          sta .StoreCodeColor + 2

          jmp .NextRow
          
.ElementDone          
          rts


!zone LevelElement
LevelElement


          ; !byte LD_ELEMENT,0,0,EL_BLUE_BRICK_4x3
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2
          
          and #$80
          beq +
          
          lda PARAM2
          and #$7f
          sta PARAM2
          
          lda PREVIOUS_ELEMENT
          jmp ++

+
          ;type
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PREVIOUS_ELEMENT
++          
          sta PARAM3

          ;store y for later
          tya
          pha
          
          jsr DrawLevelElement
          
          jmp NextLevelData


!zone LevelElementArea
LevelElementArea

          ;!byte LD_ELEMENT_AREA,24,16,5,1,EL_SN_BROWN_ROCK
          
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          sta PARAM10
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;x count
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM7
          sta PARAM9

          ;y count
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM8

          ;type
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          sta PREVIOUS_ELEMENT

          ;store y for later
          tya
          pha
          
.NextElementRow
          jsr DrawLevelElement
          
          dec PARAM7
          beq .RowDone
          
          lda PARAM1
          clc
          adc PARAM4
          sta PARAM1
          jmp .NextElementRow
          
.RowDone          
          lda PARAM2
          clc
          adc PARAM5
          sta PARAM2
          
          lda PARAM9
          sta PARAM7
          
          lda PARAM10
          sta PARAM1
          
          dec PARAM8
          bne .NextElementRow

          jmp NextLevelData


!zone LevelElementH
LevelElementH

          ; !byte LD_ELEMENT_LINE_H,x,y,width,element
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;x count
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM7

          ;type
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          sta PREVIOUS_ELEMENT

          ;store y for later
          tya
          pha
          
.NextElement          
          jsr DrawLevelElement
          
          dec PARAM7
          beq .Done
          
          lda PARAM1
          clc
          adc PARAM4
          sta PARAM1
          jmp .NextElement
          
.Done          
          jmp NextLevelData

          
!zone LevelElementV
LevelElementV

          ; !byte LD_ELEMENT_LINE_V,x,y,num,element
          ;X pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM1 
          
          ;Y pos
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM2

          ;y count
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM7

          ;type
          iny
          lda (ZEROPAGE_POINTER_1),y
          sta PARAM3
          sta PREVIOUS_ELEMENT

          ;store y for later
          tya
          pha
          
.NextElement          
          jsr DrawLevelElement
          
          dec PARAM7
          beq .Done
          
          lda PARAM2
          clc
          adc PARAM5
          sta PARAM2
          jmp .NextElement
          
.Done          
          jmp NextLevelData


;------------------------------------------------------------
;wait for the raster to reach line $f8
;this is keeping our timing stable
;------------------------------------------------------------
!zone WaitFrame
WaitFrame 
          ;are we on line $F8 already? if so, wait for the next full screen
          ;prevents mistimings if called too fast
          lda $d012
          cmp #$F8
          beq WaitFrame

          ;wait for the raster to reach line $f8 (should be closer to the start of this line this way)
.WaitStep2
          lda $d012
          cmp #$F8
          bne .WaitStep2
          
          rts


;------------------------------------------------------------
;Looks for an empty sprite slot, returns in X
;#1 in A when empty slot found, #0 when full
;------------------------------------------------------------

!zone FindEmptySpriteSlot
FindEmptySpriteSlot
          ldx #0
FindEmptySpriteSlotWithStartingX

.CheckSlot          
          lda SPRITE_ACTIVE,x
          beq .FoundSlot
          
          inx
          cpx #8
          bne .CheckSlot
          
          lda #0
          rts
          
.FoundSlot
          lda #1
          rts


;------------------------------------------------------------
;Removed object from array
;X = index of object
;------------------------------------------------------------

!zone RemoveObject
RemoveObject
          ;remove from array
          lda #0
          sta SPRITE_ACTIVE,x

          ;disable sprite          
          lda BIT_TABLE,x
          eor #$ff
          and VIC_SPRITE_ENABLE
          sta VIC_SPRITE_ENABLE
          rts


;------------------------------------------------------------
;clears the play area of the screen
;A = char
;Y = color
;------------------------------------------------------------

!zone ClearPlayScreen
ClearPlayScreen
          ldx #$00
.ClearLoop          
          sta SCREEN_CHAR,x
          sta SCREEN_CHAR + 230,x
          sta SCREEN_CHAR + 460,x
          sta SCREEN_CHAR + 690,x
          inx
          cpx #230
          bne .ClearLoop

          tya
          ldx #$00
.ColorLoop          
          sta $d800,x
          sta $d800 + 230,x
          sta $d800 + 460,x
          sta $d800 + 690,x
          inx
          cpx #230
          bne .ColorLoop

          rts


;------------------------------------------------------------
;clears the screen
;A = char
;Y = color
;------------------------------------------------------------

!zone ClearScreen
ClearScreen
          ldx #$00
.ClearLoop          
          sta SCREEN_CHAR,x
          sta SCREEN_CHAR + 250,x
          sta SCREEN_CHAR + 500,x
          sta SCREEN_CHAR + 750,x
          inx
          cpx #250
          bne .ClearLoop

          tya
          ldx #$00
.ColorLoop          
          sta $d800,x
          sta $d800 + 250,x
          sta $d800 + 500,x
          sta $d800 + 750,x
          inx
          cpx #250
          bne .ColorLoop

          rts


;------------------------------------------------------------
;displays a line of text
;ZEROPAGE_POINTER_1 = pointer to text
;PARAM1 = X
;PARAM2 = Y;
;modifies ZEROPAGE_POINTER_2 and ZEROPAGE_POINTER_3

!zone DisplayText
DisplayText
          ldx PARAM2
          lda SCREEN_LINE_OFFSET_TABLE_LO,x
          sta ZEROPAGE_POINTER_2
          sta ZEROPAGE_POINTER_3
          lda SCREEN_LINE_OFFSET_TABLE_HI,x
          sta ZEROPAGE_POINTER_2 + 1
          clc
          adc #( ( SCREEN_COLOR - SCREEN_CHAR ) & 0xff00 ) >> 8
          sta ZEROPAGE_POINTER_3 + 1

          lda ZEROPAGE_POINTER_2
          clc
          adc PARAM1
          sta ZEROPAGE_POINTER_2
          lda ZEROPAGE_POINTER_2 + 1
          adc #0
          sta ZEROPAGE_POINTER_2 + 1
          lda ZEROPAGE_POINTER_3
          clc
          adc PARAM1
          sta ZEROPAGE_POINTER_3
          lda ZEROPAGE_POINTER_3 + 1
          adc #0
          sta ZEROPAGE_POINTER_3 + 1

          ldy #0
.InLineLoop
          lda (ZEROPAGE_POINTER_1),y
          beq .SkipChar
          cmp #$2A
          beq .EndMarkerReached
          cmp #45
          beq .LineBreak
          sta (ZEROPAGE_POINTER_2),y
          lda #1
          sta (ZEROPAGE_POINTER_3),y
.SkipChar          
          iny
          jmp .InLineLoop
        
.LineBreak
          iny
          tya
          clc
          adc ZEROPAGE_POINTER_1
          sta ZEROPAGE_POINTER_1
          lda #0
          adc ZEROPAGE_POINTER_1 + 1
          sta ZEROPAGE_POINTER_1 + 1

          inc PARAM2
          jmp DisplayText
            
.EndMarkerReached
          rts


;------------------------------------------------------------
;increases score by A
;note that the score is only shown; not held in a variable
;------------------------------------------------------------
!zone IncreaseScore
IncreaseScore
          sta PARAM1
          stx PARAM2
          sty PARAM3
          
.IncreaseBy1          
          ldx #6
          
.IncreaseDigit          
          inc SCREEN_CHAR + ( 23 * 40 + 8 ),x
          inc PLAYER_SCORE,x
          lda SCREEN_CHAR + ( 23 * 40 + 8 ),x
          cmp #58
          bne .IncreaseBy1Done
          
          ;looped digit, increase next
          lda #48
          sta SCREEN_CHAR + ( 23 * 40 + 8 ),x
          sta PLAYER_SCORE,x
          dex
          ;TODO - this might overflow
          jmp .IncreaseDigit
          
.IncreaseBy1Done          
          dec PARAM1
          bne .IncreaseBy1
          
          ;increase complete, restore x,y
          ldx PARAM2
          ldy PARAM3
          rts


;------------------------------------------------------------
;displays level number
;------------------------------------------------------------
!zone DisplayLevelNumber
DisplayLevelNumber
          lda LEVEL_NR
          clc
          adc #1
          jsr DivideBy10
          
          pha
          
          ;10 digit
          tya
          clc
          adc #48
          sta SCREEN_CHAR + ( 23 * 40 + 37 )
          
          pla
          clc
          adc #48
          sta SCREEN_CHAR + ( 23 * 40 + 38 )
          
          rts
          

;------------------------------------------------------------
;displays live number
;------------------------------------------------------------
!zone DisplayLiveNumber
DisplayLiveNumber
          cpx #1
          beq DisplayLiveNumberSam
          
          ;fall through

          lda PLAYER_LIVES
          jsr DivideBy10
          
          pha
          
          ;10 digit
          tya
          clc
          adc #48
          sta SCREEN_CHAR + ( 24 * 40 + 37 )
          
          pla
          clc
          adc #48
          sta SCREEN_CHAR + ( 24 * 40 + 38 )
          rts
          
DisplayLiveNumberSam
          lda PLAYER_LIVES + 1
          jsr DivideBy10
          
          pha
          
          ;10 digit
          tya
          clc
          adc #48
          sta SCREEN_CHAR + ( 24 * 40 + 8 )
          
          pla
          clc
          adc #48
          sta SCREEN_CHAR + ( 24 * 40 + 9 )
          rts
          

;------------------------------------------------------------
;generates a sometimes random number
;------------------------------------------------------------
!zone GenerateRandomNumber
GenerateRandomNumber
          lda $dc04
          eor $dc05
          eor $dd04
          adc $dd05
          eor $dd06
          eor $dd07
          rts

;lower end = PARAM5          
;higher end = PARAM6
GenerateRangedRandom
          lda PARAM6
          sec
          sbc PARAM5
          clc
          adc #1
          sta PARAM6

          jsr GenerateRandomNumber
.CheckValue          
          cmp PARAM6
          bcc .ValueOk
          
          ;too high
          sec
          sbc PARAM6
          jmp .CheckValue

.ValueOk
          clc
          adc PARAM5
          rts  

;------------------------------------------------------------
;copies charset from ZEROPAGE_POINTER_1 to ZEROPAGE_POINTER_2
;------------------------------------------------------------

!zone CopyCharSet
CopyCharSet
          ;set target address ($F000)
          lda #$00
          sta ZEROPAGE_POINTER_2
          lda #$F8
          sta ZEROPAGE_POINTER_2 + 1

          ldx #$00
          ldy #$00
          lda #0
          sta PARAM2

.NextLine
          lda (ZEROPAGE_POINTER_1),Y
          sta (ZEROPAGE_POINTER_2),Y
          inx
          iny
          cpx #$08
          bne .NextLine
          cpy #$00
          bne .PageBoundaryNotReached
          
          ;we've reached the next 256 bytes, inc high byte
          inc ZEROPAGE_POINTER_1 + 1
          inc ZEROPAGE_POINTER_2 + 1

.PageBoundaryNotReached

          ;only copy 254 chars to keep irq vectors intact
          inc PARAM2
          ;lda PARAM2
          ;cmp #254
          beq .CopyCharsetDone
          ldx #$00
          jmp .NextLine

.CopyCharsetDone
          rts


;------------------------------------------------------------
;copies charset from ZEROPAGE_POINTER_1 to ZEROPAGE_POINTER_2
;------------------------------------------------------------

!zone CopyCharSet2
CopyCharSet2
          ;set target address ($F000)
          lda #$00
          sta ZEROPAGE_POINTER_2
          lda #$C0
          sta ZEROPAGE_POINTER_2 + 1

          ldx #$00
          ldy #$00
          lda #0
          sta PARAM2

.NextLine
          lda (ZEROPAGE_POINTER_1),Y
          sta (ZEROPAGE_POINTER_2),Y
          inx
          iny
          cpx #$08
          bne .NextLine
          cpy #$00
          bne .PageBoundaryNotReached
          
          ;we've reached the next 256 bytes, inc high byte
          inc ZEROPAGE_POINTER_1 + 1
          inc ZEROPAGE_POINTER_2 + 1

.PageBoundaryNotReached

          ;only copy 254 chars to keep irq vectors intact
          inc PARAM2
          beq .CopyCharsetDone
          ldx #$00
          jmp .NextLine

.CopyCharsetDone
          rts


;------------------------------------------------------------
;copies sprites from ZEROPAGE_POINTER_1 to ZEROPAGE_POINTER_2
;       sprites are copied in numbers of four
;------------------------------------------------------------

!zone CopySprites
CopySprites
          ldy #$00
          ldx #$00
          
          
          lda #00
          sta ZEROPAGE_POINTER_2
          lda #$d0
          sta ZEROPAGE_POINTER_2 + 1
          
          ;4 sprites per loop
.SpriteLoop
          lda (ZEROPAGE_POINTER_1),y
          sta (ZEROPAGE_POINTER_2),y
          iny
          bne .SpriteLoop
          inx
          inc ZEROPAGE_POINTER_1+1
          inc ZEROPAGE_POINTER_2+1
          cpx #NUMBER_OF_SPRITES_DIV_4
          bne .SpriteLoop

          rts
          
          
;------------------------------------------------------------
;divides A by 10
;returns remainder in A
;returns result in Y
;------------------------------------------------------------
!zone DivideBy10
DivideBy10
          sec
          ldy #$FF
.divloop
          iny
          sbc #10
          bcs .divloop
          adc #10
          rts


;------------------------------------------------------------
;IsCharBlocking
;checks if a char is blocking
;PARAM1 = char_pos_x
;PARAM2 = char_pos_y
;returns 1 for blocking, 0 for not blocking
;------------------------------------------------------------
!zone IsCharBlocking
IsCharBlocking
          cmp #192
          bcs .Blocking
          
          lda #0
          rts

.Blocking
          lda #1
          rts


;------------------------------------------------------------
;IsCharBlockingFall
;checks if a char is blocking a fall (downwards)
;PARAM1 = char_pos_x
;PARAM2 = char_pos_y
;returns 1 for blocking, 0 for not blocking
;------------------------------------------------------------
!zone IsCharBlockingFall
IsCharBlockingFall
          cmp #160
          bcs .Blocking
          
          lda #0
          rts
          
.Blocking
          lda #1
          rts

;------------------------------------------------------------
;CalcSpritePosFromCharPos
;calculates the real sprite coordinates from screen char pos
;and sets them directly
;PARAM1 = char_pos_x
;PARAM2 = char_pos_y
;X      = sprite index
;------------------------------------------------------------
!zone CalcSpritePosFromCharPos    
CalcSpritePosFromCharPos

          ;offset screen to border 24,50
          lda BIT_TABLE,x
          eor #$ff
          and SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
          ;need extended x bit?
          lda PARAM1
          sta SPRITE_CHAR_POS_X,x
          cmp #30
          bcc .NoXBit
          
          lda BIT_TABLE,x
          ora SPRITE_POS_X_EXTEND
          sta SPRITE_POS_X_EXTEND
          sta VIC_SPRITE_X_EXTEND
          
.NoXBit   
          ;calculate sprite positions (offset from border)
          txa
          asl
          tay
          
          lda PARAM1
          asl
          asl
          asl
          clc
          adc #( 24 - SPRITE_CENTER_OFFSET_X )
          sta SPRITE_POS_X,x
          sta VIC_SPRITE_X_POS,y
          
          lda PARAM2
          sta SPRITE_CHAR_POS_Y,x
          asl
          asl
          asl
          clc
          adc #( 50 - SPRITE_CENTER_OFFSET_Y )
          sta SPRITE_POS_Y,x
          sta VIC_SPRITE_Y_POS,y
          
          lda #0
          sta SPRITE_CHAR_POS_X_DELTA,x
          sta SPRITE_CHAR_POS_Y_DELTA,x
          rts


;------------------------------------------------------------
;copies the screen data to the back buffer area
;------------------------------------------------------------
!zone CopyLevelToBackBuffer
CopyLevelToBackBuffer

          ldx #$00
.ClearLoop          
          lda SCREEN_CHAR,x
          sta SCREEN_BACK_CHAR,x
          lda SCREEN_CHAR + 230,x
          sta SCREEN_BACK_CHAR + 230,x
          lda SCREEN_CHAR + 460,x
          sta SCREEN_BACK_CHAR + 460,x
          lda SCREEN_CHAR + 690,x
          sta SCREEN_BACK_CHAR + 690,x
          inx
          cpx #230
          bne .ClearLoop

          ldx #$00
.ColorLoop          
          lda SCREEN_COLOR,x
          sta SCREEN_BACK_COLOR,x
          lda SCREEN_COLOR + 230,x
          sta SCREEN_BACK_COLOR + 230,x
          lda SCREEN_COLOR + 460,x
          sta SCREEN_BACK_COLOR + 460,x
          lda SCREEN_COLOR + 690,x
          sta SCREEN_BACK_COLOR + 690,x
          inx
          cpx #230
          bne .ColorLoop
          
          rts


;--------------------------------------------------
;load high scores
;returns 1 if ok, 0 otherwise
;--------------------------------------------------
!zone LoadScores
LoadScores
          ;disable kernal messages (don't want to see load error etc.)
          lda #$00
          jsr KERNAL_SETMSG
          
          ;set logical file parameters
          lda #15 
          ldx DRIVE_NUMBER
          ldy #0
          jsr KERNAL_SETLFS
          
          ;set filename
          lda #9
          ldx #<HIGHSCORE_FILENAME
          ldy #>HIGHSCORE_FILENAME
          jsr KERNAL_SETNAM
          
          ;load to address
          lda #$00                             ; 0 = load
          ldx #<HIGHSCORE_SCORE
          ldy #>HIGHSCORE_SCORE
          jsr KERNAL_LOAD
          bcs .LoadError                        ; Flag ob ok oder nicht steht im Carry
          lda #1
          rts

.LoadError
          lda #0
          rts

          
;--------------------------------------------------
;save high scores
;--------------------------------------------------
!zone SaveScores
SaveScores
          lda #$0b
          sta VIC_CONTROL_MODE
          lda #0
          sta UPDATE_MUSIC

          ;delete old save file first
          lda #HIGHSCORE_DELETE_FILENAME_END - HIGHSCORE_DELETE_FILENAME
          ldx #<HIGHSCORE_DELETE_FILENAME 
          ldy #>HIGHSCORE_DELETE_FILENAME

          jsr KERNAL_SETNAM
          
          lda #$0F      ; file number 15
          ldx DRIVE_NUMBER
          ldy #$0F      ; secondary address 15
          jsr KERNAL_SETLFS

          jsr $FFC0     ; call OPEN
          ; if carry set, the file could not be opened
          bcs .ErrorDelete

          ldx #$0F      ; filenumber 15
          jsr $FFC9     ; call CHKOUT (file 15 now used as output)

.close
          lda #$0F      ; filenumber 15
          jsr $FFC3     ; call CLOSE

          ldx #$00      ; filenumber 0
          jsr $FFC9     ; call CHKOUT (reset output device)

          jmp .SaveNow

.ErrorDelete
          ;Akkumulator contains BASIC error code

          ;most likely errors:
          ;A = $05 (DEVICE NOT PRESENT)

          ;... error handling for open errors ...
          lda #65
          sta $cc00
          jmp .close    ; even if OPEN failed, the file has to be closed

.SaveNow
          lda #9
          ldx #<HIGHSCORE_FILENAME
          ldy #>HIGHSCORE_FILENAME
          jsr KERNAL_SETNAM
          
          lda #$00
          ldx DRIVE_NUMBER
          ldy #$00
          jsr KERNAL_SETLFS

          lda #<HIGHSCORE_SCORE
          sta $C1
          lda #>HIGHSCORE_SCORE
          sta $C2

          ldx #<HIGHSCORE_DATA_END
          ldy #>HIGHSCORE_DATA_END
          lda #$C1      ; start address located in $C1/$C2
          jsr $FFD8     ; call SAVE
          
          ;if carry set, a save error has happened
          ;bcs .SaveError    
          
          lda #1
          sta UPDATE_MUSIC
          lda #$1b
          sta VIC_CONTROL_MODE
          rts


;------------------------------------------------------------
;game variables
;------------------------------------------------------------

LEVEL_NR  
          !byte 0
BUTTON_PRESSED
          !byte 0
BUTTON_RELEASED
          !byte 0
UP_RELEASED
          !byte 0
DOWN_RELEASED
          !byte 0
LEFT_RELEASED
          !byte 0
RIGHT_RELEASED
          !byte 0
          
JUMP_TABLE
          !byte 8,8,7,5,3,2,1,1,1,0
FALL_SPEED_TABLE
          !byte 1,1,2,2,3,3,3,3,3,3
          
TOAD_JUMP_TABLE
          !byte 12,11,10,8,6,4,3,2,1,1,1,0


PLAYER_SHOT_PAUSE
          !byte 0,0
PLAYER_FIRE_PRESSED_TIME
          !byte 0,0
PLAYER_FIRE_RELEASED
          !byte 0,0
PLAYER_LIVES
          !byte 0,0
PLAYER_SHELLS
          !byte 2
PLAYER_SHELLS_MAX
          !byte 2
PLAYER_STAND_STILL_TIME
          !byte 0,0
PLAYER_RELOAD_SPEED
          !byte 0
PLAYER_RELOAD_FLASH_POS
          !byte 0
RELOAD_SPEED
          !byte 1,1,1,1,1
RELOAD_SPEED_MAX
          !byte 40,35,30,25,20
PLAYER_INVINCIBLE          
          !byte 0,0
PLAYER_JOYSTICK_PORT
          !byte 0,1
PLAYER_FORCE_RANGE
          !byte 5

COLOR_FADE_IN_TABLE
          !byte 11,1,10,1,10,13,14,1,7,8,1,12,15,1,1,1
COLOR_FADE_OUT_TABLE
          !byte 0,15,9,14,6,6,11,10,9,11,2,0,11,5,6,12

SPRITE_HP
          !byte 0,0,0,0,0,0,0,0
          
SPRITE_POS_X
          !byte 0,0,0,0,0,0,0,0
SPRITE_POS_X_EXTEND
          !byte 0
SPRITE_ENABLED
          !byte 0
SPRITE_MULTICOLOR
          !byte 0
SPRITE_COLOR
          !byte 0,0,0,0,0,0,0,0
SPRITE_CHAR_POS_X
          !byte 0,0,0,0,0,0,0,0
SPRITE_CHAR_POS_X_DELTA
          !byte 0,0,0,0,0,0,0,0
SPRITE_CHAR_POS_Y
          !byte 0,0,0,0,0,0,0,0
SPRITE_CHAR_POS_Y_DELTA
          !byte 0,0,0,0,0,0,0,0
SPRITE_POS_Y
          !byte 0,0,0,0,0,0,0,0
SPRITE_ACTIVE
          !byte 0,0,0,0,0,0,0,0
SPRITE_DIRECTION
          !byte 0,0,0,0,0,0,0,0
SPRITE_DIRECTION_Y
          !byte 0,0,0,0,0,0,0,0
SPRITE_JUMP_POS
          !byte 0,0,0,0,0,0,0,0
SPRITE_FALL_POS
          !byte 0,0,0,0,0,0,0,0
SPRITE_FALLING
          !byte 0,0,0,0,0,0,0,0
SPRITE_ANIM_POS
          !byte 0,0,0,0,0,0,0,0
SPRITE_ANIM_DELAY
          !byte 0,0,0,0,0,0,0,0
SPRITE_MOVE_POS
          !byte 0,0,0,0,0,0,0,0
SPRITE_MOVE_POS_Y
          !byte 0,0,0,0,0,0,0,0
SPRITE_STATE
          !byte 0,0,0,0,0,0,0,0
SPRITE_VALUE
          !byte 0,0,0,0,0,0,0,0
SPRITE_MODE_POS
          !byte 0,0,0,0,0,0,0,0
SPRITE_ANNOYED
          !byte 0,0,0,0,0,0,0,0
SPRITE_HITBACK
          !byte 0,0,0,0,0,0,0,0
SPRITE_HITBACK_DIRECTION
          !byte 0,0,0,0,0,0,0,0
SPRITE_HELD
          !byte 0
BOSS_HELD
          !byte 0

SPAWN_SPOT_X
          !fill SPAWN_SPOT_COUNT,0
SPAWN_SPOT_Y
          !fill SPAWN_SPOT_COUNT,0
SPAWN_SPOT_ACTIVE
          !fill SPAWN_SPOT_COUNT,0
SPAWN_SPOT_TYPE
          !fill SPAWN_SPOT_COUNT,0
SPAWN_SPOT_SPAWN_COUNT
          !fill SPAWN_SPOT_COUNT,0
SPAWN_SPOT_DELAY
          !fill SPAWN_SPOT_COUNT,0

          
ITEM_ACTIVE
          !fill ITEM_COUNT,ITEM_NONE
ITEM_POS_X
          !fill ITEM_COUNT,0
ITEM_POS_Y
          !fill ITEM_COUNT,0
ITEM_TIME
          !fill ITEM_COUNT,0
          
ENEMY_BEHAVIOUR_TABLE_LO          
          !byte <PlayerControl
          !byte <BehaviourBatDiagonal
          !byte <BehaviourBatUD
          !byte <BehaviourBatAttacking
          !byte <BehaviourMummy
          !byte <BehaviourZombie
          !byte <BehaviourBatVanishing
          !byte <BehaviourSpider
          !byte <BehaviourExplosion
          !byte <PlayerControl
          !byte <BehaviourWolf
          !byte <BehaviourGhostSkeleton
          !byte <BehaviourJumpingToad
          !byte <BehaviourEye
          !byte <BehaviourFloatingGhost
          !byte <BehaviourFly
          !byte <BehaviourSlime
          !byte <BehaviourFrankenstein
          !byte <BehaviourHand
          !byte <BehaviourDevil
          !byte <BehaviourImpala      ;impala 1
          !byte <BehaviourImpala      ;impala 2
          !byte <BehaviourImpala      ;impala 3
          !byte <BehaviourImpala      ;impala driver
          !byte <BehaviourImpalaDebris;impala debris
          !byte <BehaviourSpawn
          !byte <BehaviourBoss
          !byte <BehaviourBoss2
          !byte <BehaviourBoss3
          !byte <BehaviourNone        ;Get Ready
          !byte <BehaviourBoss4
          !byte <BehaviourBoss5
          !byte <BehaviourBoss6
          !byte <BehaviourBoss7
          !byte <BehaviourBossHelper
          
ENEMY_BEHAVIOUR_TABLE_HI
          !byte >PlayerControl
          !byte >BehaviourBatDiagonal
          !byte >BehaviourBatUD
          !byte >BehaviourBatAttacking
          !byte >BehaviourMummy
          !byte >BehaviourZombie
          !byte >BehaviourBatVanishing
          !byte >BehaviourSpider
          !byte >BehaviourExplosion
          !byte >PlayerControl
          !byte >BehaviourWolf
          !byte >BehaviourGhostSkeleton
          !byte >BehaviourJumpingToad
          !byte >BehaviourEye
          !byte >BehaviourFloatingGhost
          !byte >BehaviourFly
          !byte >BehaviourSlime
          !byte >BehaviourFrankenstein
          !byte >BehaviourHand
          !byte >BehaviourDevil
          !byte >BehaviourImpala      ;impala 1
          !byte >BehaviourImpala      ;impala 2
          !byte >BehaviourImpala      ;impala 3
          !byte >BehaviourImpala      ;impala driver
          !byte >BehaviourImpalaDebris;impala debris
          !byte >BehaviourSpawn
          !byte >BehaviourBoss
          !byte >BehaviourBoss2
          !byte >BehaviourBoss3
          !byte >BehaviourNone        ;Get Ready
          !byte >BehaviourBoss4
          !byte >BehaviourBoss5
          !byte >BehaviourBoss6
          !byte >BehaviourBoss7
          !byte >BehaviourBossHelper
          
;behaviour for an enemy being hit          
ENEMY_HIT_BEHAVIOUR_TABLE_LO          
          !byte <HitBehaviourHurt     ;bat diagonal
          !byte <HitBehaviourHurt     ;bat UD
          !byte <HitBehaviourHurt     ;bat8
          !byte <HitBehaviourHurtTurn ;mummy
          !byte <HitBehaviourCrumble  ;zombie
          !byte <HitBehaviourVanish   ;bat vanish
          !byte <HitBehaviourHurt     ;spider
          !byte <HitBehaviourHurt     ;explosion
          !byte <HitBehaviourHurt     ;dummy entry sam
          !byte <HitBehaviourHurt     ;wolf
          !byte <HitBehaviourHurt     ;ghost skeleton
          !byte <HitBehaviourHurt     ;jumping toad
          !byte <HitBehaviourHurt     ;eye
          !byte <HitBehaviourHurt     ;floating ghost
          !byte <HitBehaviourHurt     ;fly
          !byte <HitBehaviourHurt     ;slime
          !byte <HitBehaviourHurt     ;frankenstein
          !byte <HitBehaviourHurt     ;hand
          !byte <HitBehaviourHurt     ;devil
          !byte <BehaviourNone        ;impala 1
          !byte <BehaviourNone        ;impala 2
          !byte <BehaviourNone        ;impala 3
          !byte <BehaviourNone        ;impala driver
          !byte <BehaviourNone        ;impala debris
          !byte <BehaviourNone        ;spawn
          !byte <HitBehaviourBoss     ;boss
          !byte <HitBehaviourBoss     ;boss
          !byte <HitBehaviourBoss3    ;boss
          !byte <BehaviourNone        ;Get Ready
          !byte <HitBehaviourHurt     ;boss 4
          !byte <HitBehaviourHurt     ;boss 5
          !byte <HitBehaviourHurt     ;boss 6
          !byte <HitBehaviourBoss7    ;boss 7
          !byte <HitBehaviourBossHelper
          ;!byte <BehaviourNone        ;impala 1
          
          
ENEMY_HIT_BEHAVIOUR_TABLE_HI
          !byte >HitBehaviourHurt     ;bat diagonal
          !byte >HitBehaviourHurt     ;bat UD
          !byte >HitBehaviourHurt     ;bat8
          !byte >HitBehaviourHurtTurn ;mummy
          !byte >HitBehaviourCrumble  ;zombie
          !byte >HitBehaviourVanish   ;bat vanish
          !byte >HitBehaviourHurt     ;spider
          !byte >HitBehaviourHurt     ;explosion
          !byte >HitBehaviourHurt     ;dummy entry sam
          !byte >HitBehaviourHurt     ;wolf
          !byte >HitBehaviourHurt     ;ghost skeleton
          !byte >HitBehaviourHurt     ;jumping toad
          !byte >HitBehaviourHurt     ;eye
          !byte >HitBehaviourHurt     ;floating ghost
          !byte >HitBehaviourHurt     ;fly
          !byte >HitBehaviourHurt     ;slime
          !byte >HitBehaviourHurt     ;frankenstein
          !byte >HitBehaviourHurt     ;hand
          !byte >HitBehaviourHurt     ;devil
          !byte >BehaviourNone        ;impala 1
          !byte >BehaviourNone        ;impala 2
          !byte >BehaviourNone        ;impala 3
          !byte >BehaviourNone        ;impala driver
          !byte >BehaviourNone        ;impala debris
          !byte >BehaviourNone        ;spawn
          !byte >HitBehaviourBoss     ;boss
          !byte >HitBehaviourBoss     ;boss
          !byte >HitBehaviourBoss3    ;boss
          !byte >BehaviourNone        ;Get Ready
          !byte >HitBehaviourHurt     ;boss 4
          !byte >HitBehaviourHurt     ;boss 5
          !byte >HitBehaviourHurt     ;boss 6
          !byte >HitBehaviourHurt     ;boss 7
          !byte >HitBehaviourBossHelper
          ;!byte >BehaviourNone        ;impala 1
          
;0 = no enemy
;1 = normal enemy
;2 = 2 player enemy (shouldn't all enemies be in 2p mode?)
;3 = boss
IS_TYPE_ENEMY
          !byte 0     ;dummy entry for inactive object
          !byte 0     ;player dean
          !byte 1     ;bat_diagonal
          !byte 1     ;bat_ud
          !byte 1     ;bat 8
          !byte 1     ;mummy
          !byte 1     ;zombie
          !byte 1     ;bat vanish
          !byte 1     ;spider
          !byte 0     ;explosion
          !byte 0     ;player sam
          !byte 2     ;wolf
          !byte 1     ;ghost skeleton
          !byte 1     ;jumping toad
          !byte 1     ;eye
          !byte 1     ;floating ghost
          !byte 1     ;fly
          !byte 1     ;slime
          !byte 1     ;frankenstein
          !byte 1     ;hand
          !byte 1     ;devil
          !byte 0     ;impala 1
          !byte 0     ;impala 2
          !byte 0     ;impala 3
          !byte 0     ;impala driver
          !byte 0     ;impala debris
          !byte 0     ;spawn
          !byte 3     ;boss
          !byte 3     ;boss2
          !byte 3     ;boss3
          !byte 0     ;get ready
          !byte 3     ;boss4
          !byte 3     ;boss5
          !byte 3     ;boss6
          !byte 3     ;boss7
          !byte 3     ;boss helper
          ;!byte 0     ;impala 1
          
TYPE_START_SPRITE
          !byte 0     ;dummy entry for inactive object
          !byte SPRITE_PLAYER_STAND_R
          !byte SPRITE_BAT_1
          !byte SPRITE_BAT_1
          !byte SPRITE_BAT_2
          !byte SPRITE_MUMMY_R_1
          !byte SPRITE_INVISIBLE        ;zombie
          !byte SPRITE_BAT_1
          !byte SPRITE_SPIDER_STAND
          !byte SPRITE_EXPLOSION_1
          !byte SPRITE_PLAYER_SAM_STAND_R
          !byte SPRITE_WOLF_WALK_R_1
          !byte SPRITE_GHOST_SKELETON_1
          !byte SPRITE_JUMPING_TOAD_1
          !byte SPRITE_EYE_1
          !byte SPRITE_INVISIBLE
          !byte SPRITE_FLY_1
          !byte SPRITE_SLIME_R_1
          !byte SPRITE_INVISIBLE        ;frankie
          !byte SPRITE_INVISIBLE        ;hand
          !byte SPRITE_DEVIL_WALK_R_1   ;devil
          !byte SPRITE_IMPALA_1
          !byte SPRITE_IMPALA_2
          !byte SPRITE_IMPALA_3
          !byte SPRITE_DRIVERS
          !byte SPRITE_DEBRIS_1
          !byte SPRITE_SPAWN_1
          !byte SPRITE_BOSS_FOOT_L
          !byte SPRITE_BOSS_FOOT_R
          !byte SPRITE_BOSS_ARM_L
          !byte SPRITE_G
          !byte SPRITE_BOSS_ARM_R
          !byte SPRITE_BOSS_TORSO_L
          !byte SPRITE_BOSS_TORSO_R
          !byte SPRITE_BOSS_HEAD
          !byte SPRITE_BOSS_HEAD
          ;!byte SPRITE_IMPALA_BACK_1
          
TYPE_START_COLOR
          !byte 0
          !byte 10
          !byte 3
          !byte 3
          !byte 8
          !byte 1
          !byte 5
          !byte 3
          !byte 7
          !byte 7     ;explosion
          !byte 10    ;player sam
          !byte 3     ;wolf
          !byte 3     ;ghost skeleton
          !byte 5     ;jumping toad
          !byte 1     ;eye
          !byte 13    ;floating ghost
          !byte 3     ;fly
          !byte 5     ;slime
          !byte 10    ;frankenstein
          !byte 7     ;hand
          !byte 7     ;devil
          !byte 9     ;impala 1
          !byte 9     ;impala 2
          !byte 9     ;impala 3
          !byte 9     ;impala driver
          !byte 9     ;impala debris
          !byte 12    ;spawn
          !byte 0     ;boss
          !byte 0     ;boss2
          !byte 0     ;boss3
          !byte 2     ;get ready
          !byte 0     ;boss4
          !byte 1     ;boss5
          !byte 1     ;boss6
          !byte 2     ;boss7
          !byte 2     ;boss helper
          ;!byte 2     ;impala back
          
TYPE_START_MULTICOLOR
          !byte 0     ;dummy
          !byte 1     ;player dean
          !byte 1     ;bat 1
          !byte 1     ;bat 1
          !byte 1     ;bat 2
          !byte 0     ;mummy
          !byte 1     ;zombie
          !byte 1     ;nasty bat
          !byte 1     ;spider
          !byte 1     ;explosion
          !byte 1     ;player sam
          !byte 1     ;wolf
          !byte 1     ;ghost skeleton
          !byte 1     ;jumping toad
          !byte 1     ;eye
          !byte 1     ;floating ghost
          !byte 1     ;fly
          !byte 1     ;slime
          !byte 1     ;frankenstein
          !byte 1     ;hand
          !byte 0     ;devil
          !byte 1     ;impala 1
          !byte 1     ;impala 2
          !byte 1     ;impala 3
          !byte 1     ;impala driver
          !byte 0     ;impala debris
          !byte 0     ;spawn
          !byte 0     ;boss
          !byte 0     ;boss2
          !byte 0     ;boss3
          !byte 0     ;get ready
          !byte 0     ;boss4
          !byte 0     ;boss5
          !byte 0     ;boss6
          !byte 0     ;boss7
          !byte 0     ;boss helper
          ;!byte 1     ;impala 1
          
TYPE_START_HP
          !byte 0     ;dummy
          !byte 1     ;player dean
          !byte 3     ;bat 1
          !byte 3     ;bat 1
          !byte 1     ;bat 2
          !byte 5     ;mummy
          !byte 4     ;zombie
          !byte 3     ;nasty bat
          !byte 2     ;spider
          !byte 0     ;explosion
          !byte 1     ;player sam
          !byte 3     ;wolf
          !byte 3     ;ghost skeleton
          !byte 3     ;jumping toad
          !byte 2     ;eye
          !byte 5     ;floating ghost
          !byte 1     ;fly
          !byte 3     ;slime
          !byte 7     ;frankenstein
          !byte 1     ;hand
          !byte 2     ;devil
          !byte 0     ;impala 1
          !byte 0     ;impala 2
          !byte 0     ;impala 3
          !byte 0     ;impala driver
          !byte 0     ;impala debris
          !byte 0     ;spawn
          !byte 10    ;boss
          !byte 10    ;boss2
          !byte 10    ;boss3
          !byte 0     ;get ready
          !byte 10    ;boss4
          !byte 10    ;boss5
          !byte 10    ;boss6
          !byte 25    ;boss7
          !byte 5     ;boss helper
          ;!byte 0     ;impala 1
          
TYPE_ANNOYED_COLOR
          !byte 0     ;dummy
          !byte 10    ;player
          !byte 2     ;bat diagonal
          !byte 2     ;bat up down
          !byte 4     ;bat 8
          !byte 2     ;mummy
          !byte 13    ;zombie
          !byte 2     ;bat vanish
          !byte 2     ;spider
          !byte 0     ;explosion
          !byte 10    ;player sam
          !byte 10    ;wolf
          !byte 3     ;ghost skeleton
          !byte 5     ;jumping toad
          !byte 5     ;eye
          !byte 13    ;floating ghost
          !byte 3     ;fly
          !byte 13    ;slime
          !byte 13    ;frankenstein
          !byte 13    ;hand
          !byte 8     ;devil
          !byte 0     ;impala 1
          !byte 0     ;impala 2
          !byte 0     ;impala 3
          !byte 0     ;impala driver
          !byte 0     ;impala debris
          !byte 7     ;spawn
          !byte 0     ;boss
          !byte 0     ;boss2
          !byte 0     ;boss3
          !byte 0     ;get ready
          !byte 0     ;boss4
          !byte 1     ;boss5
          !byte 1     ;boss6
          !byte 2     ;boss7
          !byte 2     ;boss helper
          ;!byte 0     ;impala 1
          
          
;enemy start direction, 2 bits per dir.
;        NNNmyyxx
;              xx : start direction in x
;              00 : move right
;              01 : move left
;              02 : random left or right
;              03 : random left, right or nothing
;            yy   : start direction in y
;            00   : move down
;            01   : move up
;            02   : random up or down
;            03   : random up, down or nothing
;           m     : init movepos
;           0     :   with 0
;           1     :   with random
TYPE_START_DIRECTION
          !byte 0             ;dummy
          !byte 0             ;player
          !byte %00001010     ;bat diag.
          !byte %00001010     ;bat up/ down
          !byte 2             ;bat 8
          !byte 2             ;mummy
          !byte 2             ;zombie
          !byte 2             ;bat vanish
          !byte 2             ;spider
          !byte 0             ;explosion
          !byte 0             ;player sam
          !byte %00000010     ;wolf
          !byte 0             ;ghost skeleton
          !byte %00000010     ;jumping toad
          !byte %00001010     ;eye
          !byte %00011010     ;floating ghost
          !byte %00011111     ;fly
          !byte %00000010     ;fsline
          !byte %00010010     ;frankenstein
          !byte %00010000     ;hand
          !byte %00010010     ;devil
          !byte 0             ;impala 1
          !byte 0             ;impala 2
          !byte 0             ;impala 3
          !byte 0             ;impala driver
          !byte 0             ;impala debris
          !byte 0             ;spawn
          !byte %00001010     ;boss
          !byte %00001010     ;boss2
          !byte %00001010     ;boss3
          !byte 0             ;get ready
          !byte %00001010     ;boss4
          !byte %00001010     ;boss5
          !byte %00001010     ;boss6
          !byte %00001010     ;boss7
          !byte %00001010     ;boss helper
          ;!byte 0             ;impala 1
          
TYPE_START_STATE
          !byte 0             ;dummy
          !byte 0             ;player
          !byte 0             ;bat diag.
          !byte 0             ;bat up/ down
          !byte 0             ;bat 8
          !byte 0             ;mummy
          !byte 0             ;zombie
          !byte 0             ;bat vanish
          !byte 0             ;spider
          !byte 0             ;explosion
          !byte 0             ;player sam
          !byte 0             ;wolf
          !byte 0             ;ghost skeleton
          !byte 0             ;jumping toad
          !byte 0             ;eye
          !byte 129           ;floating ghost
          !byte 0             ;fly
          !byte 0             ;slime
          !byte 128           ;frankenstein
          !byte 128           ;hand
          !byte 0             ;devil
          !byte 0             ;impala 1
          !byte 0             ;impala 2
          !byte 0             ;impala 3
          !byte 0             ;impala driver
          !byte 0             ;impala debris
          !byte 128           ;spawn
          !byte 0             ;boss
          !byte 0             ;boss2
          !byte 128           ;boss3
          !byte 0             ;get ready
          !byte 0             ;boss4
          !byte 0             ;boss5
          !byte 128           ;boss6
          !byte 128           ;boss7
          !byte 0             ;boss helper
          ;!byte 0             ;impala 1
          
TYPE_START_DELTA_Y
          !byte 0     ;dummy
          !byte 0     ;player dean
          !byte 0     ;bat 1
          !byte 0     ;bat 1
          !byte 0     ;bat 2
          !byte 0     ;mummy
          !byte 0     ;zombie
          !byte 0     ;nasty bat
          !byte 0     ;spider
          !byte 0     ;explosion
          !byte 0     ;player sam
          !byte 2     ;wolf
          !byte 0     ;ghost skeleton
          !byte 2     ;jumping toad
          !byte 0     ;eye
          !byte 0     ;floating ghost
          !byte 0     ;fly
          !byte 2     ;slime
          !byte 2     ;frankenstein
          !byte 2     ;hand
          !byte 2     ;devil
          !byte 0     ;impala 1
          !byte 0     ;impala 2
          !byte 0     ;impala 3
          !byte 0     ;impala driver
          !byte 0     ;impala debris
          !byte 0     ;spawn
          !byte 0     ;boss
          !byte 0     ;boss2
          !byte 0     ;boss3
          !byte 0     ;get ready
          !byte 0     ;boss4
          !byte 0     ;boss5
          !byte 0     ;boss6
          !byte 0     ;boss7
          !byte 0             ;boss helper
          ;!byte 0     ;impala 1
          
BAT_ANIMATION
          !byte SPRITE_BAT_1
          !byte SPRITE_BAT_2
          !byte SPRITE_BAT_3
          !byte SPRITE_BAT_2

SPIDER_ANIMATION_TABLE
          !byte SPRITE_SPIDER_STAND
          !byte SPRITE_SPIDER_WALK_1
          !byte SPRITE_SPIDER_STAND
          !byte SPRITE_SPIDER_WALK_2
          
WOLF_ANIMATION_TABLE
          !byte SPRITE_WOLF_WALK_L_1
          !byte SPRITE_WOLF_WALK_L_2
          !byte SPRITE_WOLF_WALK_L_3
          !byte SPRITE_WOLF_WALK_L_2

GHOST_SKELETON_ANIMATION_TABLE
          !byte SPRITE_GHOST_SKELETON_1
          !byte SPRITE_GHOST_SKELETON_2
          !byte SPRITE_GHOST_SKELETON_3
          !byte SPRITE_GHOST_SKELETON_2
          
TOAD_JUMP_ANIMATION_TABLE
          !byte SPRITE_JUMPING_TOAD_3
          !byte SPRITE_JUMPING_TOAD_4
          !byte SPRITE_JUMPING_TOAD_3
          !byte SPRITE_JUMPING_TOAD_2
          !byte SPRITE_JUMPING_TOAD_1
          
SLIME_DUCK_ANIMATION_TABLE
          !byte SPRITE_SLIME_R_2
          !byte SPRITE_SLIME_R_3
          !byte SPRITE_SLIME_R_4
SLIME_UNDUCK_ANIMATION_TABLE
          !byte SPRITE_SLIME_R_4
          !byte SPRITE_SLIME_R_3
          !byte SPRITE_SLIME_R_2

EYE_COLOR_TABLE
          !byte 1
          !byte 7
          !byte 13
          !byte 5

FLOATING_GHOST_ANIMATION_TABLE
          !byte SPRITE_FLOATING_GHOST_1
          !byte SPRITE_FLOATING_GHOST_2
          !byte SPRITE_FLOATING_GHOST_3
          !byte SPRITE_FLOATING_GHOST_2
          
HAND_ANIM_TABLE
          !byte SPRITE_HAND_1
          !byte SPRITE_HAND_2
          !byte SPRITE_HAND_3
          !byte SPRITE_HAND_4
          !byte SPRITE_HAND_5
          !byte SPRITE_HAND_6
HAND_COLOR_TABLE
          !byte 7,13,13,5,5,5
          
BOSS_FLASH_TABLE
          !byte 0,11,12,15,1,15,12,11

PATH_CURVE
          !byte 0
          !byte 0
          !byte 1
          !byte 0
          !byte 0
          !byte 1
          !byte 0
          !byte 1
          !byte 0
          !byte 1
          !byte 1
          !byte 1
          !byte 1
          !byte 1
          !byte 1
          !byte 1
PATH_CURVE_R
          !byte 1
          !byte 1
          !byte 1
          !byte 1
          !byte 1
          !byte 1
          !byte 1
          !byte 0
          !byte 1
          !byte 0
          !byte 1
          !byte 0
          !byte 0
          !byte 1
          !byte 0
          !byte 0

PATH_8_DY
          !byte 0
          !byte 1
          !byte 2
          !byte 3
          !byte 4
          !byte 5
          !byte 6
          !byte 6

          !byte 6
          !byte 6
          !byte 5
          !byte 4
          !byte 3
          !byte 2
          !byte 1
          !byte 0
          
          !byte 0
          !byte $81
          !byte $82
          !byte $83
          !byte $84
          !byte $85
          !byte $86
          !byte $86
          
          !byte $86
          !byte $86
          !byte $85
          !byte $84
          !byte $83
          !byte $82
          !byte $81
          !byte 0
          
PATH_DY
          !byte 0
          !byte 1
          !byte 2
          !byte 3
          !byte 4
          !byte 3
          !byte 2
          !byte 1

          !byte 0
          !byte $81
          !byte $82
          !byte $83
          !byte $84
          !byte $83
          !byte $82
          !byte $81

NUMBER_ENEMIES_ALIVE
          !byte 0
NUMBER_SPAWN_SPOTS_ALIVE
          !byte 0
NUMBER_DELAYED_SPAWN_SPOTS_ALIVE
          !byte 0
NUMBER_SPAWNS_ALIVE
          !byte 0
SPAWN_SPOT_LEVEL
          !byte 0
          
LEVEL_DONE_DELAY
          !byte 0
LEVEL_CONFIG
          !byte 0
DELAYED_GENERIC_COUNTER
          !byte 0
DELAYED_GENERIC_COUNTER_WO_WATER
          !byte 0
          
ITEM_CHAR_UL
          !byte 4,8,16,20,106,4,144
ITEM_COLOR_UL
          !byte 7,2,1,1,2,1,1
ITEM_CHAR_UR
          !byte 5,9,17,21,107,5,145
ITEM_COLOR_UR
          !byte 4,2,2,7,1,3,7
ITEM_CHAR_LL
          !byte 6,10,18,22,108,6,146
ITEM_COLOR_LL
          !byte 7,2,2,7,2,3,2
ITEM_CHAR_LR
          !byte 7,11,19,23,109,7,147
ITEM_COLOR_LR
          !byte 4,2,2,4,1,6,4
          
SUPER_BULLET
          !byte 0
DEMON_BLOOD
          !byte 0
          
PLAYER_START_POS_X
          !byte 0,0
PLAYER_START_POS_Y
          !byte 0,0
PLAYER_SPRITE_BASE
          !byte 0,49

LEVEL_START_DELAY
          !byte 0
          
BIT_TABLE
          !byte 1,2,4,8,16,32,64,128
          
TEXT_DISPLAY_DEAN_ONLY
          !text " SCORE",60," 00000000   ",224,224,"         LEVEL",60," 00                    ",225,225,"         LIVES",60," 03 *"
TEXT_DISPLAY_SAM_ONLY
          !text " SCORE",60," 00000000              LEVEL",60," 00  LIVES",60," 03                              *"
TEXT_DISPLAY_DEAN_AND_SAM
          !text " SCORE",60," 00000000   ",224,224,"         LEVEL",60," 00  LIVES",60," 03         ",225,225,"         LIVES",60," 03 *"

TEXT_GAME_MODE_LO
          !byte <TEXT_GAME_MODE_SINGLE_DEAN, <TEXT_GAME_MODE_SINGLE_SAM, <TEXT_GAME_MODE_COOP
TEXT_GAME_MODE_HI
          !byte >TEXT_GAME_MODE_SINGLE_DEAN, >TEXT_GAME_MODE_SINGLE_SAM, >TEXT_GAME_MODE_COOP
          
TEXT_GAME_MODE_SINGLE_DEAN
          !text "SINGLE PLAYER DEAN*"
TEXT_GAME_MODE_SINGLE_SAM
          !text "SINGLE PLAYER SAM *"
TEXT_GAME_MODE_COOP
          !text " COOPERATIVE PLAY *"
          
TEXT_MUSIC
          !text "MUSIC*"
TEXT_SFX
          !text " SFX *"
          
TEXT_FIRE_TO_START
          !text "PRESS FIRE TO PLAY*"
TEXT_ENTER_NAME
          !text "ENTER YOUR NAME*"
          
CHAPTER
          !byte 0

          
CHAPTER_PAGES_LO
          !byte <TEXT_STORY_1
          !byte <TEXT_STORY_2
          !byte <TEXT_STORY_3
          !byte <TEXT_STORY_4
          !byte <TEXT_STORY_5
          !byte <TEXT_STORY_6
          !byte <TEXT_STORY_7
CHAPTER_PAGES_HI
          !byte >TEXT_STORY_1
          !byte >TEXT_STORY_2
          !byte >TEXT_STORY_3
          !byte >TEXT_STORY_4
          !byte >TEXT_STORY_5
          !byte >TEXT_STORY_6
          !byte >TEXT_STORY_7
CHAPTER_END_PAGES_LO
          !byte <TEXT_CHAPTER_1_END
          !byte <TEXT_CHAPTER_2_END
          !byte <TEXT_CHAPTER_3_END
          !byte <TEXT_CHAPTER_4_END
          !byte <TEXT_CHAPTER_5_END
          !byte <TEXT_CHAPTER_6_END
CHAPTER_END_PAGES_HI
          !byte >TEXT_CHAPTER_1_END
          !byte >TEXT_CHAPTER_2_END
          !byte >TEXT_CHAPTER_3_END
          !byte >TEXT_CHAPTER_4_END
          !byte >TEXT_CHAPTER_5_END
          !byte >TEXT_CHAPTER_6_END
          
          
!ct '.',91,'?',31,',',59
          
TEXT_STORY_1
          !text "GREENFIELD, OHIO.-"
          !text "A LOCAL NEWSPAPER MENTIONS SEVERAL-"
          !text "MISSING PEOPLE. THERE SEEMS TO BE A-"
          !text "RECURRING PATTERN EVERY 44 YEARS.-"
          !text "WE SHOULD INVESTIGATE THE TOWN-"
          !text "CEMETERY.*"
          
TEXT_CHAPTER_1_END
          !text "WHAT THE HELL WAS THAT SHADOW?--"
          !text "WHATEVER IT WAS. IT IS GONE FOR-"
          !text "GOOD*"

TEXT_STORY_2
          !text "ULYSSES, KANSAS.-"
          !text "A STUDENT HAS BEEN FOUND DEAD IN-"
          !text "AN ABANDONED HOUSE IN THE WOODS.-"
          !text "SOMEONE OR SOMETHING HUNG HER AND-"
          !text "DEMONIC MARKS WERE ALL ABOUT.*"

TEXT_CHAPTER_2_END
          !text "ANOTHER SHADOW!--"
          !text "SOMETHING IS BREWING, AND I DO NOT LIKE-"
          !text "IT*"

TEXT_STORY_3
          !text "SALEM, UTAH.-"
          !text "SEVERAL WORKERS WERE FOUND DEAD IN-"
          !text "THE SEWERS. THEIR BLOOD WAS-"
          !text "COMPLETELY GONE.*"

TEXT_CHAPTER_3_END
          !text "THAT WAS DIFFERENT.-"
          !text "DID NOT MAKE IT ALIVE AS WELL THOUGH*"

TEXT_STORY_4
          !text "WILBURTON, OKLAHOMA.-"
          !text "A GROUP OF TOURISTS WENT MISSING-"
          !text "IN ROBBERS CAVE.*"

TEXT_CHAPTER_4_END
          !text "THERE WERE THIS DEMON MARKS AGAIN.-"
          !text "WE ARE ON TO SOMETHING BIG*"

TEXT_STORY_5
          !text "BORREGO, SPRINGS.-"
          !text "SEVERAL CITIZENS HAVE BEEN KILLED BY-"
          !text "SLIMEY BEASTS. POLICE SUSPECT THE-"
          !text "SOURCE SOMEWHERE IN THE DESERT.*"

TEXT_CHAPTER_5_END
          !text "THERE WERE THIS DEMON MARKS AGAIN.-"
          !text "WE ARE ON TO SOMETHING BIG.-"
          !text "THEY FORM A PATTERN WITH A FEW-"
          !text "SPOTS STILL MISSING. THE NEXT-"
          !text "SPOT IS TARGETTING VIRGINIA!*"

TEXT_STORY_6
          !text "LURAY, VIRGINIA.-"
          !text "THEY SAY A CHINESE JUNK HAS SUNK-"
          !text "IN AN UNDERGROUND LAKE HERE. THE-"
          !text "SAILORS STILL HAUNT THE CAVE.*"

TEXT_CHAPTER_6_END
          !text "THE DEMON MARK PATTERN IS COMPLETE!-"
          !text "IT POINTS TO AN ABANDONED GOLD-"
          !text "MINER TOWN, ELKHORN, MONTANA.*"

TEXT_STORY_7
          !text "ELKHORN, MONTANA.-"
          !text "THE WHOLE TOWN IS A GIANT CAGE-"
          !text "PROTECTING A WELL IN THE CENTRE-"
          !text "WE WILL HAVE TO GO DOWN THERE.*"

TEXT_EXTRO
          !text "THAT WAS A CLOSE CALL,-"
          !text "WE STILL KICKED ITS ASS THOUGH.-"
          !text "-"
          !text "I NEED A REAL BIG BURGER NOW...--"
          !text "YUP, ME TOO.-"
          !text "-"
          !text "-"
          !text "-"
          !text "WELL DONE, THANK YOU FOR PLAYING!*"
          

COLOR_FADE_POS
          !byte 0
          
DRIVE_NUMBER
          !byte 8
          
HIGHSCORE_FILENAME
          !text "HIGHSCORE"
          
HIGHSCORE_DELETE_FILENAME          
          !text "S0:HIGHSCORE"
HIGHSCORE_DELETE_FILENAME_END
          
          
HIGHSCORE_SCORE
          !text "00050000-"
          !text "00040000-"
          !text "00030000-"
          !text "00020000-"
          !text "00010000-"
          !text "00001000-"
          !text "00000300-"
          !text "00000100*"
          
HIGHSCORE_NAME
          !text "SUPERNATURAL-"
          !text "SUPERNATURAL-"
          !text "SUPERNATURAL-"
          !text "SUPERNATURAL-"
          !text "SUPERNATURAL-"
          !text "SUPERNATURAL-"
          !text "SUPERNATURAL-"
          !text "SUPERNATURAL*"
HIGHSCORE_DATA_END          

COLOR_FADE_LENGTH = 16

COLOR_FADE_1
          !byte 0,0,6,6,3,3,1,1,1,1,1,1,3,3,6,6

GAME_MODE
          !byte GT_SINGLE_PLAYER_DEAN

BEAM_CHAR_H
          !byte 239
          !byte 241
          !byte 243
          !byte 243

BEAM_CHAR_V
          !byte 240
          !byte 242
          !byte 244
          !byte 244

BEAM_COLOR
          !byte 6
          !byte 4
          !byte 3
          !byte 1

BEAM_CHAR_NWSE
          !byte 245
          !byte 247
          !byte 249
          !byte 249

BEAM_CHAR_NESW
          !byte 246
          !byte 248
          !byte 250
          !byte 250


;------------------------------------------------------------
;tile data
;include from editor generated file
;------------------------------------------------------------

!source "tiles.asm"


GETREADY_SPRITE_X_POS
          !byte 32,67,102,147,182,217,252,48 - 16
          
GETREADY_SPRITE_COLOR
          !byte 2,3,4,5,6,7,8,9

PREVIOUS_ELEMENT
          !byte 255
          
SAM_FORCE_START_X
          !byte 0
SAM_FORCE_START_Y
          !byte 0
SAM_FORCE_LENGTH
          !byte 0
SPAWN_NO_ITEM
          !byte 0
LEVEL_BORDER_DATA
          !byte LD_LINE_H_ALT,0,0,40,192,9
          !byte LD_LINE_H_ALT,1,22,38,192,9
          !byte LD_LINE_V_ALT,0,1,22,192,9
          !byte LD_LINE_V_ALT,39,1,22,192,9
          !byte LD_END
          
ANIM_TILE_BYTES
          !byte 0,0,0,0,0,0,0,0
          !byte 0,0,0,0,0,0,0,0
ANIM_TILE2_BYTES
          !byte 0,0,0,0,0,0,0,0
          !byte 0,0,0,0,0,0,0,0
ANIM_POS
          !byte 0
          
FINAL_INTRO_TIMER
          !byte 0
FINAL_INTRO_TIMER_DELAY
          !byte 0
FINAL_INTRO_FLASH
          !byte 0
MOVE_STONES
          !byte 0
MOVE_STONE_POS_BACK
          !byte 0
MOVE_STONE_POS_FRONT
          !byte 0
CURRENT_INDEX
          !byte 0
CURRENT_SUB_INDEX
          !byte 0
  
MOVE_BORDER_LEFT
          !byte 0
MOVE_BORDER_RIGHT
          !byte 39
MOVE_BORDER_TOP
          !byte 0
MOVE_BORDER_BOTTOM
          !byte 23
BOSS_PARTS_KILLED
          !byte 0
          
BOSS_DELTA_TABLE_X
          !byte 0, 1, 0, 1, 1, 0, 1, 0
BOSS_DELTA_TABLE_Y          
          !byte 0, $ff, 0, $ff, $ff, 0, $ff, 0
          !byte 0, 1, 0, 1, 1, 0, 1, 0
PLAYER_SCORE
          !byte 0,0,0,0,0,0,0,0
          
TWO_PLAYER_MODE_ACTIVE
          !byte 0
SFX_MODE
          !byte 0
;for vanishing bats to make sure they stay inside the level          
SPAWN_LEFT_BORDER
          !byte 10
SPAWN_RIGHT_BORDER
          !byte 30
UPDATE_MUSIC
          !byte 1
          
!source "level_data.asm"


!ifndef CRUNCHED {
CHARSET
          !binary "j.chr"
CHARSET_2          
          !binary "j2.chr"
          
SPRITES
          !binary "j.spr"
END_OF_FILE
} 