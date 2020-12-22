#Include "..\mechanics\weapon\weapon.ah2"

Class Shorty extends Weapon {
    WEAPON_NAME := "Shorty"
    INVENTORY_TYPE := "Secondary"
    WEAPON_TYPE := "Shotgun"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 3.33
    RUN_SPEED := 5.4
    EQUIP_SPEED := 0.75
    FIRST_SHOT_SPREAD := 4.0
    RELOAD_SPEED := 1.75
    MAGAZINE_SIZE := 2.0
    CUSTOM_ALT_SHOT := "shots"
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 7,
    ;     "HEAD": 24,
    ;     "BODY": 12,
    ;     "LEGS": 10
    ; },
    ; {
    ;     "RANGE_MIN": 7,
    ;     "RANGE_MAX": 15,
    ;     "HEAD": 16,
    ;     "BODY": 22,
    ;     "LEGS": 6
    ; },
    ; {
    ;     "RANGE_MIN": 15,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 6,
    ;     "BODY": 3,
    ;     "LEGS": 2
    ; }
    ; ]
}