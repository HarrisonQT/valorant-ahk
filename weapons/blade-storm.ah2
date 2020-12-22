#Include "..\mechanics\weapon\weapon.ah2"

Class BladeStorm extends Weapon {
    WEAPON_NAME := "Blade Storm"
    INVENTORY_TYPE := "Ultimate Ability"
    WEAPON_TYPE := "Pistol"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 8.6
    ALT_FIRE_TYPE := "Semi"
    ALT_FIRE_RATE := 7.5
    RUN_SPEED := 5.73
    EQUIP_SPEED := 0.75
    FIRST_SHOT_SPREAD := 0.4
    RELOAD_SPEED := 1.75
    MAGAZINE_SIZE := 12
    STRAFE_TIME := 290.0
    COUNTER_STRAFE_TIME := 195
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