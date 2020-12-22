#Include "..\mechanics\weapon\weapon.ah2"

Class Phantom extends Weapon {
    WEAPON_NAME := "Phantom"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Rifle"
    WALL_PENETRATION := "Medium"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 11.0
    RUN_SPEED := 5.4
    FIRST_SHOT_SPREAD := 0.2
    SCOPE_FIRE_TYPE := "Auto"
    SCOPE_FIRE_RATE := 9.9
    SCOPE_FIRST_SHOT_SPREAD := 0.11
    SCOPE_RUN_SPEED := 4.104
    EQUIP_SPEED := 1.0
    RELOAD_SPEED := 2.5
    MAGAZINE_SIZE := 30.0
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 15,
    ;     "HEAD": 156,
    ;     "BODY": 39,
    ;     "LEGS": 33
    ; },
    ; {
    ;     "RANGE_MIN": 15,
    ;     "RANGE_MAX": 30,
    ;     "HEAD": 140,
    ;     "BODY": 35,
    ;     "LEGS": 29
    ; },
    ; {
    ;     "RANGE_MIN": 30,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 124,
    ;     "BODY": 31,
    ;     "LEGS": 26
    ; }
    ; ]
}