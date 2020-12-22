#Include "..\mechanics\weapon\weapon.ah2"

Class Bulldog extends Weapon {
    WEAPON_NAME := "Bulldog"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Rifle"
    WALL_PENETRATION := "Medium"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 9.14
    RUN_SPEED := 5.4
    FIRST_SHOT_SPREAD := 0.3
    SCOPE_FIRE_TYPE := "Burst"
    SCOPE_FIRE_RATE := 6.316
    SCOPE_FIRST_SHOT_SPREAD := 0.1
    SCOPE_RUN_SPEED := 4.104
    EQUIP_SPEED := 1.0
    RELOAD_SPEED := 2.5
    MAGAZINE_SIZE := 24
    CUSTOM_ALT_SHOT := "leftShotScopeBurst"
    BURST_UNSCOPE_TIME := 40
    BURST_DURATION := 150
    BURST_COOLDOWN := 235
    CUSTOM_ALT_SHOT_COOLDDOWN := 85

    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 34,
    ;     "BODY": 17,
    ;     "LEGS": 14
    ; }
    ; ]
}