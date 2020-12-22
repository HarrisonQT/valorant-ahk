#Include "..\mechanics\weapon\weapon.ah2"

Class Aries extends Weapon {
    WEAPON_NAME := "Aries"
    INVENTORY_TYPE := "Primary"
    WEAPON_TYPE := "Machine Gun"
    WALL_PENETRATION := "High"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 10.0
    RUN_SPEED := 5.13
    FIRST_SHOT_SPREAD := 0.8
    SCOPE_FIRE_TYPE := "Auto"
    SCOPE_FIRE_RATE := 10.0
    SCOPE_FIRST_SHOT_SPREAD := 0.67
    SCOPE_RUN_SPEED := 3.899
    EQUIP_SPEED := 1.25
    RELOAD_SPEED := 3.25
    MAGAZINE_SIZE := 50.0

    CUSTOM_ALT_SHOT := "shootScopeSpray"
    SPRAY_UNSCOPE_TIME := 40
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 30,
    ;     "HEAD": 72,
    ;     "BODY": 30,
    ;     "LEGS": 25
    ; },
    ; {
    ;     "RANGE_MIN": 30,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 67,
    ;     "BODY": 28,
    ;     "LEGS": 23
    ; }
    ; ]
}