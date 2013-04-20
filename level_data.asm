EL_SN_TOMBSTONE = 0
EL_SN_FENCE_1 = 1
EL_SN_CROSS = 2
EL_SN_TREE_1 = 3
EL_SN_MOON = 4
EL_SN_SMALL_TREE = 5
EL_SN_TOMB_DOOR = 6
EL_SN_ROCK = 7
EL_SN_BROWN_ROCK = 8
EL_SN_ROCK_SMALL = 9
EL_SN_BROWN_ROCK_SMALL = 10

SNELEMENT_WIDTH_TABLE
!byte 2,3,2,4,2,2,2,3,3,3,3
SNELEMENT_HEIGHT_TABLE
!byte 2,2,2,5,2,2,3,4,4,2,2
SNELEMENT_TABLE_LO
!byte <DATA_EL_SN_TOMBSTONE
!byte <DATA_EL_SN_FENCE_1
!byte <DATA_EL_SN_CROSS
!byte <DATA_EL_SN_TREE_1
!byte <DATA_EL_SN_MOON
!byte <DATA_EL_SN_SMALL_TREE
!byte <DATA_EL_SN_TOMB_DOOR
!byte <DATA_EL_SN_BROWN_ROCK+0
!byte <DATA_EL_SN_BROWN_ROCK
!byte <DATA_EL_SN_BROWN_ROCK+0
!byte <DATA_EL_SN_BROWN_ROCK+0

SNELEMENT_TABLE_HI
!byte >DATA_EL_SN_TOMBSTONE
!byte >DATA_EL_SN_FENCE_1
!byte >DATA_EL_SN_CROSS
!byte >DATA_EL_SN_TREE_1
!byte >DATA_EL_SN_MOON
!byte >DATA_EL_SN_SMALL_TREE
!byte >DATA_EL_SN_TOMB_DOOR
!byte >DATA_EL_SN_BROWN_ROCK+0
!byte >DATA_EL_SN_BROWN_ROCK
!byte >DATA_EL_SN_BROWN_ROCK+0
!byte >DATA_EL_SN_BROWN_ROCK+0

SNELEMENT_COLOR_TABLE_LO
!byte <COLOR_EL_SN_TREE_1+0
!byte <COLOR_EL_SN_TREE_1+0
!byte <COLOR_EL_SN_TREE_1+0
!byte <COLOR_EL_SN_TREE_1
!byte <COLOR_EL_SN_MOON
!byte <COLOR_EL_SN_TREE_1+0
!byte <COLOR_EL_SN_TOMB_DOOR
!byte <COLOR_EL_SN_ROCK
!byte <COLOR_EL_SN_BROWN_ROCK
!byte <COLOR_EL_SN_ROCK+0
!byte <COLOR_EL_SN_BROWN_ROCK+0

SNELEMENT_COLOR_TABLE_HI
!byte >COLOR_EL_SN_TREE_1+0
!byte >COLOR_EL_SN_TREE_1+0
!byte >COLOR_EL_SN_TREE_1+0
!byte >COLOR_EL_SN_TREE_1
!byte >COLOR_EL_SN_MOON
!byte >COLOR_EL_SN_TREE_1+0
!byte >COLOR_EL_SN_TOMB_DOOR
!byte >COLOR_EL_SN_ROCK
!byte >COLOR_EL_SN_BROWN_ROCK
!byte >COLOR_EL_SN_ROCK+0
!byte >COLOR_EL_SN_BROWN_ROCK+0


DATA_EL_SN_TOMBSTONE
!byte 12,13,14,15
DATA_EL_SN_FENCE_1
!byte 96,97,98,99,100,101
DATA_EL_SN_CROSS
!byte 102,103,104,105
DATA_EL_SN_TREE_1
!byte 32,34,35,36,37,38,39,40,32,42,43,44,32,45,46,32,32,47,58,32
DATA_EL_SN_MOON
!byte 24,25,26,27
DATA_EL_SN_SMALL_TREE
!byte 61,62,63,64
DATA_EL_SN_TOMB_DOOR
!byte 112,113,114,115,116,117
DATA_EL_SN_BROWN_ROCK
!byte 198,199,200,201,202,203,204,205,206,207,208,209
COLOR_EL_SN_TREE_1
!byte 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
COLOR_EL_SN_MOON
!byte 1,1,1,1
COLOR_EL_SN_TOMB_DOOR
!byte 2,2,2,2,2,2
COLOR_EL_SN_ROCK
!byte 15,15,15,15,15,15,15,15,15,15,15,15
COLOR_EL_SN_BROWN_ROCK
!byte 13,13,13,13,13,13,13,13,13,13,13,13


SN_SCREEN_DATA_TABLE
          !word SN_LEVEL_1
          !word SN_LEVEL_2
          !word SN_LEVEL_3
          !word SN_LEVEL_4
          !word SN_LEVEL_5
          !word SN_LEVEL_6
          !word SN_LEVEL_7
          !word SN_LEVEL_8
          !word SN_LEVEL_9
          !word SN_LEVEL_10
          !word SN_LEVEL_11
          !word SN_LEVEL_12
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
          !byte LD_ELEMENT,2,19,EL_SN_SMALL_TREE
          !byte LD_END
SN_LEVEL_2
          !byte LD_LINE_H_ALT,1,15,10,196,13
          !byte LD_LINE_H_ALT,27,15,12,196,13
          !byte LD_LINE_H_ALT,11,18,16,196,13
          !byte LD_AREA,1,16,10,3,195,10
          !byte LD_AREA,1,19,38,3,195,10
          !byte LD_SPAWN_SPOT,19,17,TYPE_ZOMBIE,8
          !byte LD_AREA,27,16,12,3,195,10
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
          !byte LD_LINE_H_ALT,4,12,4,160,13
          !byte LD_LINE_H_ALT,32,12,4,160,13
          !byte LD_END
SN_LEVEL_3
          !byte LD_LINE_H_ALT,1,13,8,196,13
          !byte LD_LINE_H_ALT,9,15,4,196,13
          !byte LD_LINE_H_ALT,13,19,14,196,13
          !byte LD_LINE_H_ALT,31,13,8,196,13
          !byte LD_LINE_H_ALT,27,15,4,196,13
          !byte LD_AREA,1,14,8,8,195,13
          !byte LD_AREA,31,14,8,8,195,13
          !byte LD_AREA,9,16,4,6,195,13
          !byte LD_AREA,27,16,4,6,195,13
          !byte LD_AREA,13,20,14,2,195,13
          !byte LD_ELEMENT,4,11,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,28,13,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,32,11,EL_SN_CROSS
          !byte LD_ELEMENT,18,17,EL_SN_CROSS
          !byte LD_ELEMENT,9,10,EL_SN_TREE_1
          !byte LD_ELEMENT,21,14,EL_SN_TREE_1
          !byte LD_ELEMENT,19,5,EL_SN_MOON
          !byte LD_OBJECT,15,18,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,24,18,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,4,12,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,34,12,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,29,14,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,10,14,TYPE_ZOMBIE,4
          !byte LD_ELEMENT,35,11,EL_SN_FENCE_1
          !byte LD_END
SN_LEVEL_4
          !byte LD_LINE_H_ALT,1,7,2,196,13
          !byte LD_LINE_H_ALT,7,10,5,160,13
          !byte LD_LINE_H_ALT,12,7,5,160,13
          !byte LD_LINE_H_ALT,17,4,6,160,13
          !byte LD_LINE_H_ALT,23,7,5,160,13
          !byte LD_LINE_H_ALT,28,10,5,160,13
          !byte LD_LINE_H_ALT,34,7,3,160,13
          !byte LD_LINE_H_ALT,12,13,5,160,13
          !byte LD_LINE_H_ALT,23,13,5,160,13
          !byte LD_LINE_H_ALT,17,16,6,160,13
          !byte LD_LINE_H_ALT,3,19,34,196,13
          !byte LD_AREA,1,8,2,14,195,13
          !byte LD_AREA,37,8,2,14,195,13
          !byte LD_AREA,3,20,34,2,195,13
          !byte LD_LINE_H_ALT,3,7,3,160,13
          !byte LD_LINE_H_ALT,37,7,2,196,13
          !byte LD_OBJECT,9,9,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,30,9,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,19,11,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,34,17,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,36,4,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,3,4,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,19,3,TYPE_ZOMBIE,3
          !byte LD_ELEMENT,13,11,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,35,5,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,26,14,EL_SN_TREE_1
          !byte LD_ELEMENT,2,5,EL_SN_CROSS
          !byte LD_ELEMENT,19,2,EL_SN_CROSS
          !byte LD_ELEMENT,25,17,EL_SN_CROSS
          !byte LD_ELEMENT,11,17,EL_SN_FENCE_1
          !byte LD_ELEMENT,15,17,EL_SN_FENCE_1
          !byte LD_ELEMENT,30,17,EL_SN_FENCE_1
          !byte LD_ELEMENT,18,11,EL_SN_TREE_1
          !byte LD_ELEMENT,14,5,EL_SN_SMALL_TREE
          !byte LD_LINE_H,5,15,6,92,2
          !byte LD_AREA,5,16,6,3,93,2
          !byte LD_LINE_V,4,15,4,95,2
          !byte LD_LINE_V,11,15,4,95,2
          !byte LD_SPAWN_SPOT,5,17,TYPE_BAT_DIAG,3
          !byte LD_ELEMENT,7,16,EL_SN_TOMB_DOOR
          !byte LD_LINE_H,4,14,8,110,2
          !byte LD_END
SN_LEVEL_5
          !byte LD_AREA,5,14,6,5,93,2
          !byte LD_AREA,29,10,6,5,93,2
          !byte LD_LINE_H_ALT,1,19,14,210,13
          !byte LD_LINE_H_ALT,24,15,15,210,13
          !byte LD_LINE_H_ALT,15,13,9,210,13
          !byte LD_ELEMENT_AREA,15,14,3,2,EL_SN_BROWN_ROCK
          !byte LD_LINE_H,28,9,8,110,2
          !byte LD_LINE_H,4,13,8,110,2
          !byte LD_LINE_H,5,14,6,92,2
          !byte LD_LINE_H,29,10,6,92,2
          !byte LD_LINE_V,4,14,5,95,2
          !byte LD_LINE_V,11,14,5,95,2
          !byte LD_LINE_V,35,10,5,95,2
          !byte LD_LINE_V,28,10,5,95,2
          !byte LD_LINE_H_ALT,10,16,5,160,13
          !byte LD_ELEMENT,7,16,EL_SN_TOMB_DOOR
          !byte LD_ELEMENT,31,12,EL_SN_TOMB_DOOR
          !byte LD_ELEMENT,37,13,EL_SN_SMALL_TREE
          !byte LD_ELEMENT,18,8,EL_SN_TREE_1
          !byte LD_ELEMENT,10,5,EL_SN_MOON
          !byte LD_OBJECT,16,12,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,22,12,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,7,16,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,8,7,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,19,6,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,32,11,TYPE_BAT_DIAG,3
          !byte LD_SPAWN_SPOT,28,6,TYPE_BAT_DIAG,3
          !byte LD_ELEMENT_AREA,24,16,5,1,EL_SN_BROWN_ROCK
          !byte LD_ELEMENT_AREA,0,20,13,1,EL_SN_BROWN_ROCK_SMALL
          !byte LD_END
SN_LEVEL_6
          !byte LD_ELEMENT,5,15,EL_SN_TREE_1
          !byte LD_LINE_H_ALT,1,20,38,160,13
          !byte LD_LINE_H_ALT,3,17,8,160,13
          !byte LD_LINE_H_ALT,3,14,8,160,13
          !byte LD_LINE_H_ALT,3,11,8,160,13
          !byte LD_LINE_H_ALT,29,17,8,160,13
          !byte LD_LINE_H_ALT,29,14,8,160,13
          !byte LD_LINE_H_ALT,29,11,8,160,13
          !byte LD_LINE_H_ALT,29,8,8,160,13
          !byte LD_LINE_H_ALT,3,8,8,160,13
          !byte LD_LINE_H_ALT,3,5,34,160,13
          !byte LD_OBJECT,25,19,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,6,16,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,33,16,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,33,10,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,6,10,TYPE_ZOMBIE,4
          !byte LD_ELEMENT,5,3,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,20,18,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,31,12,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,8,6,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,12,3,EL_SN_FENCE_1
          !byte LD_ELEMENT_LINE_H,17,3,4,EL_SN_FENCE_1
          !byte LD_ELEMENT,31,3,EL_SN_FENCE_1
          !byte LD_ELEMENT,24,18,EL_SN_FENCE_1
          !byte LD_ELEMENT,13,15,EL_SN_TREE_1
          !byte LD_OBJECT,14,19,TYPE_PLAYER_DEAN
          !byte LD_ELEMENT,8,3,EL_SN_SMALL_TREE
          !byte LD_ELEMENT,36,18,EL_SN_SMALL_TREE
          !byte LD_ELEMENT,4,12,EL_SN_CROSS
          !byte LD_ELEMENT,30,6,EL_SN_CROSS
          !byte LD_ELEMENT,4,6,EL_SN_CROSS
          !byte LD_ELEMENT,10,18,EL_SN_CROSS
          !byte LD_END
SN_LEVEL_7
          !byte LD_LINE_H_ALT,1,7,6,160,13
          !byte LD_LINE_H_ALT,17,13,6,160,13
          !byte LD_LINE_H_ALT,9,10,6,160,13
          !byte LD_LINE_H_ALT,19,13,2,196,13
          !byte LD_LINE_H_ALT,25,10,6,160,13
          !byte LD_LINE_H_ALT,33,7,6,160,13
          !byte LD_LINE_H_ALT,9,16,6,160,13
          !byte LD_LINE_H_ALT,1,19,18,196,13
          !byte LD_LINE_H_ALT,21,19,18,196,13
          !byte LD_AREA,19,14,2,6,195,13
          !byte LD_LINE_H_ALT,25,16,6,160,13
          !byte LD_AREA,1,20,38,2,195,13
          !byte LD_OBJECT,36,18,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,19,12,TYPE_MUMMY,4
          !byte LD_SPAWN_SPOT,3,5,TYPE_BAT_UD,4
          !byte LD_SPAWN_SPOT,36,5,TYPE_BAT_UD,4
          !byte LD_ELEMENT,11,8,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,27,14,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,32,17,EL_SN_FENCE_1
          !byte LD_ELEMENT,14,17,EL_SN_FENCE_1
          !byte LD_ELEMENT,20,11,EL_SN_CROSS
          !byte LD_ELEMENT,23,17,EL_SN_CROSS
          !byte LD_ELEMENT,3,14,EL_SN_TREE_1
          !byte LD_ELEMENT,26,5,EL_SN_TREE_1
          !byte LD_ELEMENT,19,4,EL_SN_MOON
          !byte LD_OBJECT,3,18,TYPE_PLAYER_DEAN
          !byte LD_ELEMENT,3,5,EL_SN_SMALL_TREE
          !byte LD_ELEMENT,10,14,EL_SN_SMALL_TREE
          !byte LD_ELEMENT,8,17,EL_SN_SMALL_TREE
          !byte LD_SPAWN_SPOT,12,9,TYPE_MUMMY,4
          !byte LD_SPAWN_SPOT,28,9,TYPE_MUMMY,4
          !byte LD_END
SN_LEVEL_8
          !byte LD_LINE_H_ALT,1,21,6,196,13
          !byte LD_LINE_H_ALT,33,21,6,196,13
          !byte LD_LINE_H_ALT,7,19,6,196,13
          !byte LD_LINE_H_ALT,27,19,6,196,13
          !byte LD_LINE_H_ALT,13,17,14,196,13
          !byte LD_LINE_H_ALT,17,9,6,160,13
          !byte LD_AREA,13,18,14,2,195,13
          !byte LD_AREA,7,20,26,2,195,13
          !byte LD_OBJECT,3,20,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,36,20,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,18,8,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,21,8,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,21,16,TYPE_ZOMBIE,4
          !byte LD_SPAWN_SPOT,18,16,TYPE_MUMMY,4
          !byte LD_ELEMENT,18,7,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,29,17,EL_SN_TOMBSTONE
          !byte LD_ELEMENT,9,17,EL_SN_CROSS
          !byte LD_ELEMENT,13,12,EL_SN_TREE_1
          !byte LD_ELEMENT,34,16,EL_SN_TREE_1
          !byte LD_ELEMENT,2,19,EL_SN_FENCE_1
          !byte LD_ELEMENT,22,12,EL_SN_TREE_1
          !byte LD_ELEMENT,6,5,EL_SN_MOON
          !byte LD_END
SN_LEVEL_9
          !byte LD_ELEMENT_AREA,1,19,3,1,EL_SN_FENCE_1
          !byte LD_LINE_H_ALT,1,21,38,196,13
          !byte LD_AREA,13,10,26,11,93,2
          !byte LD_LINE_H,13,9,26,92,2
          !byte LD_LINE_H,12,8,27,110,2
          !byte LD_LINE_H,12,7,27,110,2
          !byte LD_LINE_H_ALT,7,18,6,160,13
          !byte LD_LINE_H_ALT,12,15,6,160,13
          !byte LD_LINE_H_ALT,17,12,6,160,13
          !byte LD_LINE_H_ALT,22,15,6,160,13
          !byte LD_LINE_H_ALT,27,18,6,160,13
          !byte LD_LINE_H,22,16,6,92,2
          !byte LD_LINE_H,27,19,6,92,2
          !byte LD_LINE_H,17,13,6,92,2
          !byte LD_LINE_H,13,16,5,92,2
          !byte LD_LINE_H_ALT,2,8,6,160,13
          !byte LD_LINE_H_ALT,32,8,6,160,13
          !byte LD_LINE_H_ALT,7,10,11,160,13
          !byte LD_LINE_H_ALT,22,10,11,160,13
          !byte LD_LINE_H,22,11,11,92,2
          !byte LD_LINE_H,13,11,5,92,2
          !byte LD_ELEMENT,34,3,EL_SN_MOON
          !byte LD_OBJECT,3,20,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,36,20,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,19,20,TYPE_MUMMY,4
          !byte LD_SPAWN_SPOT,12,9,TYPE_ZOMBIE,3
          !byte LD_SPAWN_SPOT,27,9,TYPE_ZOMBIE,3
          !byte LD_SPAWN_SPOT,19,11,TYPE_FRANKENSTEIN,4
          !byte LD_END
SN_LEVEL_10
          !byte LD_AREA,6,3,28,12,93,2
          !byte LD_ELEMENT,18,10,EL_SN_TOMB_DOOR
          !byte LD_ELEMENT,20,10,EL_SN_TOMB_DOOR
          !byte LD_LINE_H,6,3,28,92,2
          !byte LD_LINE_H,17,13,6,92,2
          !byte LD_LINE_H,16,14,8,92,2
          !byte LD_LINE_V,8,3,12,95,2
          !byte LD_LINE_V,7,3,12,95,2
          !byte LD_AREA,1,15,38,6,3,13
          !byte LD_LINE_V,31,3,12,95,2
          !byte LD_LINE_V,32,3,12,95,2
          !byte LD_LINE_H,5,2,30,110,2
          !byte LD_LINE_H,6,1,28,110,2
          !byte LD_LINE_H_ALT,1,5,8,160,13
          !byte LD_LINE_H_ALT,31,5,8,160,13
          !byte LD_LINE_H_ALT,4,8,8,160,13
          !byte LD_LINE_H_ALT,28,8,8,160,13
          !byte LD_LINE_H_ALT,8,11,8,160,13
          !byte LD_LINE_H_ALT,24,11,8,160,13
          !byte LD_LINE_H_ALT,5,14,6,160,13
          !byte LD_LINE_H_ALT,29,14,6,160,13
          !byte LD_LINE_H_ALT,2,17,6,160,13
          !byte LD_LINE_H_ALT,32,17,6,160,13
          !byte LD_LINE_H_ALT,15,15,10,160,13
          !byte LD_LINE_H_ALT,7,19,8,160,13
          !byte LD_LINE_H_ALT,25,19,8,160,13
          !byte LD_LINE_H_ALT,1,21,38,196,13
          !byte LD_OBJECT,10,18,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,29,18,TYPE_PLAYER_SAM
          !byte LD_SPAWN_SPOT,3,20,TYPE_FRANKENSTEIN,4
          !byte LD_SPAWN_SPOT,36,20,TYPE_FRANKENSTEIN,4
          !byte LD_SPAWN_SPOT,27,10,TYPE_FRANKENSTEIN,4
          !byte LD_SPAWN_SPOT,12,10,TYPE_FRANKENSTEIN,4
          !byte LD_LINE_H_ALT,13,6,14,160,13
          !byte LD_LINE_H,13,7,14,92,2
          !byte LD_LINE_H,6,6,3,92,2
          !byte LD_LINE_H,31,6,3,92,2
          !byte LD_LINE_H,6,9,6,92,2
          !byte LD_LINE_H,28,9,6,92,2
          !byte LD_LINE_H,8,12,8,92,2
          !byte LD_LINE_H,24,12,8,92,2
          !byte LD_LINE_H,29,15,6,32,2
          !byte LD_LINE_H,5,15,6,32,2
          !byte LD_LINE_H,15,16,10,32,2
          !byte LD_LINE_H,2,18,6,32,2
          !byte LD_LINE_H,32,18,6,32,2
          !byte LD_LINE_H,25,20,8,32,2
          !byte LD_LINE_H,7,20,8,32,2
          !byte LD_END
SN_LEVEL_11
          !byte LD_AREA,1,1,38,21,93,6
          !byte LD_LINE_H_ALT,2,19,8,160,13
          !byte LD_LINE_H_ALT,30,19,8,160,13
          !byte LD_LINE_H_ALT,2,16,4,160,13
          !byte LD_LINE_H_ALT,34,16,4,160,13
          !byte LD_LINE_H_ALT,30,13,4,160,13
          !byte LD_LINE_H_ALT,6,13,4,160,13
          !byte LD_LINE_H_ALT,2,10,4,160,13
          !byte LD_LINE_H_ALT,6,7,4,160,13
          !byte LD_LINE_H_ALT,34,10,4,160,13
          !byte LD_LINE_H_ALT,30,7,4,160,13
          !byte LD_LINE_H_ALT,10,10,4,160,13
          !byte LD_LINE_H_ALT,26,10,4,160,13
          !byte LD_LINE_H_ALT,18,7,4,160,13
          !byte LD_LINE_H_ALT,18,13,4,160,13
          !byte LD_OBJECT,7,18,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,32,18,TYPE_PLAYER_SAM
          !byte LD_OBJECT,19,20,TYPE_BOSS
          !byte LD_END
SN_LEVEL_12
          !byte LD_LINE_H_ALT,1,20,38,160,13
          !byte LD_LINE_H_ALT,1,11,4,160,13
          !byte LD_LINE_H_ALT,1,14,4,160,13
          !byte LD_LINE_H_ALT,1,17,4,160,13
          !byte LD_LINE_H_ALT,1,8,4,160,13
          !byte LD_LINE_H_ALT,35,8,4,160,13
          !byte LD_LINE_H_ALT,35,11,4,160,13
          !byte LD_LINE_H_ALT,35,14,4,160,13
          !byte LD_LINE_H_ALT,35,17,4,160,13
          !byte LD_OBJECT,6,19,TYPE_PLAYER_DEAN
          !byte LD_OBJECT,33,19,TYPE_PLAYER_SAM
          !byte LD_OBJECT,2,4,TYPE_WOLFMAN
          !byte LD_LINE_H_ALT,1,5,4,160,13
          !byte LD_LINE_H_ALT,35,5,4,160,13
          !byte LD_END

