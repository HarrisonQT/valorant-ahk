#Include "..\mechanics\weapon\weapon.ah2"

Class Vandal extends Weapon {
    WEAPON_NAME := "Vandal"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Rifle"
    WALL_PENETRATION := "Medium"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 9.75
    RUN_SPEED := 5.4
    FIRST_SHOT_SPREAD := 0.25
    SCOPE_FIRE_TYPE := "Auto"
    SCOPE_FIRE_RATE := 8.775
    SCOPE_FIRST_SHOT_SPREAD := 0.157
    SCOPE_RUN_SPEED := 4.104
    EQUIP_SPEED := 1.0
    RELOAD_SPEED := 2.5
    MAGAZINE_SIZE := 25.0
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 160,
    ;     "BODY": 40,
    ;     "LEGS": 34
    ; }
    ; ]
}