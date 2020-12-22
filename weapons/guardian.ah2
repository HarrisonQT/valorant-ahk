#Include "..\mechanics\weapon\weapon.ah2"

Class Guardian extends Weapon {
    WEAPON_NAME := "Guardian"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Rifle"
    WALL_PENETRATION := "High"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 5.25
    RUN_SPEED := 5.4
    FIRST_SHOT_SPREAD := 0.1
    SCOPE_FIRE_TYPE := "Semi"
    SCOPE_FIRE_RATE := 4.275
    SCOPE_FIRST_SHOT_SPREAD := 0.0
    SCOPE_RUN_SPEED := 4.104
    EQUIP_SPEED := 1
    RELOAD_SPEED := 2.5
    MAGAZINE_SIZE := 12
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 195,
    ;     "BODY": 65,
    ;     "LEGS": 48
    ; }
    ; ]
}