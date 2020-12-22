#Include "..\mechanics\weapon\weapon.ah2"

Class Classic extends Weapon {
    WEAPON_NAME := "Classic"
    INVENTORY_TYPE := "Secondary"
    WEAPON_TYPE := "Pistol"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 6.75
    ALT_FIRE_TYPE := "Semi"
    ALT_FIRE_RATE := 2.22
    RUN_SPEED := 5.73
    EQUIP_SPEED := 0.75
    FIRST_SHOT_SPREAD := 0.4
    RELOAD_SPEED := 1.75
    MAGAZINE_SIZE := 12.0
    CUSTOM_ALT_SHOT := "leftShotAltShot"

    ; DAMAGES := [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 30,
    ;     "HEAD": 78,
    ;     "BODY": 26,
    ;     "LEGS": 22
    ; },
    ; {
    ;     "RANGE_MIN": 30,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 66,
    ;     "BODY": 22,
    ;     "LEGS": 18
    ; }
    ; ]
}