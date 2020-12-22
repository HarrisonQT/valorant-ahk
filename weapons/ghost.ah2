#Include "..\mechanics\weapon\weapon.ah2"

Class Ghost extends Weapon {
    WEAPON_NAME := "Ghost"
    INVENTORY_TYPE := "Secondary"
    WEAPON_TYPE := "Pistol"
    WALL_PENETRATION := "Medium"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 6.75
    RUN_SPEED := 5.73
    EQUIP_SPEED := 0.75
    FIRST_SHOT_SPREAD := 0.3
    RELOAD_SPEED := 1.5
    MAGAZINE_SIZE := 15.0
    CUSTOM_ALT_SHOT := "shots"
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 30,
    ;     "HEAD": 105,
    ;     "BODY": 30,
    ;     "LEGS": 25
    ; },
    ; {
    ;     "RANGE_MIN": 30,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 87,
    ;     "BODY": 25,
    ;     "LEGS": 21
    ; }
    ; ]
}