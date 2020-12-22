#Include "..\mechanics\weapon\weapon.ah2"

Class Judge extends Weapon {
    WEAPON_NAME := "Judge"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Shotgun"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 3.5
    RUN_SPEED := 5.06
    FIRST_SHOT_SPREAD := 2.25
    EQUIP_SPEED := 1.0
    RELOAD_SPEED := 2.25
    MAGAZINE_SIZE := 7.0
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 10,
    ;     "HEAD": 34,
    ;     "BODY": 17,
    ;     "LEGS": 14
    ; },
    ; {
    ;     "RANGE_MIN": 10,
    ;     "RANGE_MAX": 15,
    ;     "HEAD": 26,
    ;     "BODY": 13,
    ;     "LEGS": 11
    ; },
    ; {
    ;     "RANGE_MIN": 15,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 28,
    ;     "BODY": 14,
    ;     "LEGS": 1
    ; },
    ; {
    ;     "RANGE_MIN": 15,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 20,
    ;     "BODY": 10,
    ;     "LEGS": 8
    ; }
    ; ]
}