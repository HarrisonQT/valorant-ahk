#Include "..\mechanics\weapon\weapon.ah2"

Class Sheriff extends Weapon {
    WEAPON_NAME := "Sheriff"
    INVENTORY_TYPE := "Secondary"
    WEAPON_TYPE := "Pistol"
    WALL_PENETRATION := "High"
    FIRE_TYPE := "Semi"
    FIRE_RATE := 4.0
    RUN_SPEED := 5.4
    EQUIP_SPEED := 1.0
    FIRST_SHOT_SPREAD := 0.25
    RELOAD_SPEED := 2.25
    MAGAZINE_SIZE := 6.0
    CUSTOM_ALT_SHOT := "shots"
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 30,
    ;     "HEAD": 159,
    ;     "BODY": 55,
    ;     "LEGS": 46
    ; },
    ; {
    ;     "RANGE_MIN": 30,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 145,
    ;     "BODY": 50,
    ;     "LEGS": 42
    ; }
    ; ]
}