#Include "..\mechanics\weapon\weapon.ah2"

Class Spectre extends Weapon {
    WEAPON_NAME := "Spectre"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "SMG"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 13.33
    RUN_SPEED := 5.73
    FIRST_SHOT_SPREAD := 0.4
    SCOPE_FIRE_TYPE := "Auto"
    SCOPE_FIRE_RATE := 12.0
    SCOPE_FIRST_SHOT_SPREAD := 0.25
    SCOPE_RUN_SPEED := 4.361
    EQUIP_SPEED := 0.75
    RELOAD_SPEED := 2.25
    MAGAZINE_SIZE := 30.0
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 20,
    ;     "HEAD": 78,
    ;     "BODY": 26,
    ;     "LEGS": 22
    ; },
    ; {
    ;     "RANGE_MIN": 20,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 66,
    ;     "BODY": 22,
    ;     "LEGS": 18
    ; }
    ; ]
}