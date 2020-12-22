#Include "..\mechanics\weapon\weapon.ah2"

Class Stinger extends Weapon {
    WEAPON_NAME := "Stinger"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "SMG"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 18.0
    FIRST_SHOT_SPREAD := 0.65
    RUN_SPEED := 5.73
    SCOPE_FIRE_TYPE := "Burst"
    SCOPE_FIRE_RATE := 8.471
    SCOPE_FIRST_SHOT_SPREAD := 0.65
    SCOPE_RUN_SPEED := 4.361
    EQUIP_SPEED := 0.75
    RELOAD_SPEED := 2.25
    MAGAZINE_SIZE := 20.0
    CUSTOM_ALT_SHOT := "leftShotScopeBurst"
    BURST_UNSCOPE_TIME := 10
    BURST_DURATION := 165
    BURST_COOLDOWN := 245
    CUSTOM_ALT_SHOT_COOLDDOWN := 120
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 20,
    ;     "HEAD": 67,
    ;     "BODY": 27,
    ;     "LEGS": 22
    ; },
    ; {
    ;     "RANGE_MIN": 20,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 62,
    ;     "BODY": 25,
    ;     "LEGS": 21
    ; }
    ; ]
}