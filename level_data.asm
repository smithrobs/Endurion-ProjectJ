EL_SN_TOMBSTONE = 0
EL_SN_FENCE_1 = 1
EL_SN_CROSS = 2
EL_SN_TREE_1 = 3
EL_SN_MOON = 4

SNELEMENT_WIDTH_TABLE
!byte 2,3,2,4,2
SNELEMENT_HEIGHT_TABLE
!byte 2,2,2,5,2
SNELEMENT_TABLE_LO
!byte <DATA_EL_SN_TOMBSTONE
!byte <DATA_EL_SN_FENCE_1
!byte <DATA_EL_SN_CROSS
!byte <DATA_EL_SN_TREE_1
!byte <DATA_EL_SN_MOON

SNELEMENT_TABLE_HI
!byte >DATA_EL_SN_TOMBSTONE
!byte >DATA_EL_SN_FENCE_1
!byte >DATA_EL_SN_CROSS
!byte >DATA_EL_SN_TREE_1
!byte >DATA_EL_SN_MOON

SNELEMENT_COLOR_TABLE_LO
!byte <COLOR_EL_SN_TREE_1+0
!byte <COLOR_EL_SN_TREE_1+0
!byte <COLOR_EL_SN_TREE_1+0
!byte <COLOR_EL_SN_TREE_1
!byte <COLOR_EL_SN_MOON

SNELEMENT_COLOR_TABLE_HI
!byte >COLOR_EL_SN_TREE_1+0
!byte >COLOR_EL_SN_TREE_1+0
!byte >COLOR_EL_SN_TREE_1+0
!byte >COLOR_EL_SN_TREE_1
!byte >COLOR_EL_SN_MOON


DATA_EL_SN_TOMBSTONE
!byte 12,13,14,15
DATA_EL_SN_FENCE_1
!byte 96,97,98,99,100,101
DATA_EL_SN_CROSS
!byte 102,103,104,160
DATA_EL_SN_TREE_1
!byte 32,34,35,36,37,38,39,40,32,42,43,44,32,45,46,32,32,47,58,32
DATA_EL_SN_MOON
!byte 24,25,26,27
COLOR_EL_SN_TREE_1
!byte 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
COLOR_EL_SN_MOON
!byte 1,1,1,1


SN_SCREEN_DATA_TABLE
          !word SN_LEVEL_1
          !word SN_LEVEL_2
          !word 0


SN_LEVEL_1
          !byte LD_ELEMENT,34,16,EL_SN_TREE_1
          !byte LD_LINE_H_ALT,1,21,38,160,13
          !byte LD_LINE_H_ALT,4,18,8,160,13
          !byte LD_ELEMENT_LINE_H,24,19,3,EL_SN_FENCE_1
          !byte LD_LINE_H_ALT,11,15,8,160,13
          !byte LD_LINE_H_ALT,21,12,8,160,13
          !byte LD_LINE_H_ALT,30,9,8,160,13
          !byte LD_ELEMENT,14,13,EL_SN_FENCE_1
          !byte LD_ELEMENT,32,7,EL_SN_FENCE_1
          !byte LD_OBJECT,14,20,TYPE_PLAYER_DEAN
          !byte LD_SPAWN_SPOT,24,11,TYPE_ZOMBIE,3
          !byte LD_OBJECT,21,20,TYPE_PLAYER_SAM
          !byte LD_LINE_H_ALT,4,12,5,160,13
          !byte LD_ELEMENT,9,4,EL_SN_MOON
          !byte LD_SPAWN_SPOT,33,20,TYPE_ZOMBIE,3
          !byte LD_ELEMENT,17,19,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,5,10,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,7,16,EL_SN_CROSS
          !byte LD_SPAWN_SPOT,7,17,TYPE_ZOMBIE,3
          !byte LD_END
SN_LEVEL_2
          !byte LD_LINE_H_ALT,1,15,12,196,13
          !byte LD_LINE_H_ALT,25,15,14,196,13
          !byte LD_LINE_H_ALT,13,18,12,196,13
          !byte LD_AREA,1,16,12,3,195,10
          !byte LD_AREA,1,19,38,3,195,10
          !byte LD_SPAWN_SPOT,19,17,TYPE_ZOMBIE,8
          !byte LD_AREA,25,16,14,3,195,10
          !byte LD_ELEMENT,15,13,EL_SN_TREE_1
          !byte LD_ELEMENT,8,4,EL_SN_MOON
          !byte LD_ELEMENT_LINE_H,2,13,3,EL_SN_FENCE_1
          !byte LD_ELEMENT_LINE_H,29,13,3,EL_SN_FENCE_1
          !byte LD_OBJECT,5,14,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,32,14,TYPE_PLAYER_SAM
          !byte LD_LINE_H_ALT,13,15,12,160,13
          !byte LD_ELEMENT,22,16,EL_SN_CROSS
          !byte LD_ELEMENT,12,13,EL_SN_CROSS
          !byte LD_ELEMENT,14,16,EL_SN_TOMBSTONE
          !byte LD_SPAWN_SPOT,8,5,TYPE_BAT_DIAG,5
          !byte LD_END

