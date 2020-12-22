#Include "..\mechanics\weapon\weapon.ah2"

Class Bucky extends Weapon {
    WEAPON_NAME := "Bucky"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Shotgun"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 1.1
    RUN_SPEED := 5.06
    FIRST_SHOT_SPREAD := 3.4
    ALT_FIRE_TYPE := "Semi"
    ALT_FIRE_RATE := 1.1
    ALT_FIRST_SHOT_SPREAD := 3.4
    ALT_RUN_SPEED := 4.361
    EQUIP_SPEED := 0.75
    RELOAD_SPEED := 2.5
    MAGAZINE_SIZE := 5.0
    CUSTOM_ALT_SHOT := "altShot"
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 3,
    ;     "HEAD": 46,
    ;     "BODY": 23,
    ;     "LEGS": 19
    ; },
    ; {
    ;     "RANGE_MIN": 3,
    ;     "RANGE_MAX": 7,
    ;     "HEAD": 38,
    ;     "BODY": 19,
    ;     "LEGS": 16
    ; },
    ; {
    ;     "RANGE_MIN": 7,
    ;     "RANGE_MAX": 11,
    ;     "HEAD": 28,
    ;     "BODY": 14,
    ;     "LEGS": 1
    ; },
    ; {
    ;     "RANGE_MIN": 11,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 18,
    ;     "BODY": 9,
    ;     "LEGS": 7
    ; }
    ; ]
}