#Include "..\mechanics\weapon\weapon.ah2"

Class Odin extends Weapon {
    WEAPON_NAME := "Odin"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Machine Gun"
    WALL_PENETRATION := "High"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 12
    RUN_SPEED := 5.13
    FIRST_SHOT_SPREAD := 0.8
    SCOPE_FIRE_TYPE := "Auto"
    SCOPE_FIRE_RATE := 15.6
    SCOPE_FIRST_SHOT_SPREAD := 0.79
    SCOPE_RUN_SPEED := 3.899
    EQUIP_SPEED := 1.25
    RELOAD_SPEED := 5.0
    MAGAZINE_SIZE := 100.0
    SPRAY_SCOPE_DELAY := 250.0
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 30,
    ;     "HEAD": 95,
    ;     "BODY": 38,
    ;     "LEGS": 32
    ; },
    ; {
    ;     "RANGE_MIN": 30,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 77,
    ;     "BODY": 31,
    ;     "LEGS": 26
    ; }
    ; ]
}