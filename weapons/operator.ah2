#Include "..\mechanics\weapon\weapon.ah2"

Class Operator extends Weapon {
    WEAPON_NAME := "Operator"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Sniper"
    WALL_PENETRATION := "High"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 0.6
    RUN_SPEED := 5.13
    FIRST_SHOT_SPREAD := 5.0
    SCOPE_FIRE_TYPE := "Semi"
    SCOPE_FIRE_RATE := 0.75
    SCOPE_FIRST_SHOT_SPREAD := 0.0
    SCOPE_RUN_SPEED := 3.899
    EQUIP_SPEED := 1.25
    RELOAD_SPEED := 2.5
    MAGAZINE_SIZE := 5.0
    QUICK_SCOPE_TIME := 210.0
    MOVEMENT_DECELERATION := 125.0
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 255,
    ;     "BODY": 150,
    ;     "LEGS": 120
    ; }
    ; ]
}