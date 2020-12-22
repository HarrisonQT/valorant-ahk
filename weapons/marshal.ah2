#Include "..\mechanics\weapon\weapon.ah2"

Class Marshal extends Weapon {
    WEAPON_NAME := "Marshal"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Sniper"
    WALL_PENETRATION := "Medium"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 1.5
    RUN_SPEED := 5.4
    FIRST_SHOT_SPREAD := 1.0
    SCOPE_FIRE_TYPE := "Semi"
    SCOPE_FIRE_RATE := 1.2
    SCOPE_FIRST_SHOT_SPREAD := 0.0
    SCOPE_RUN_SPEED := 4.104
    EQUIP_SPEED := 1.25
    RELOAD_SPEED := 2.5
    MAGAZINE_SIZE := 5.0
    QUICK_SCOPE_TIME := 120.0
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 202,
    ;     "BODY": 101,
    ;     "LEGS": 85
    ; }
    ; ]
}