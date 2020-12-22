#Include "..\mechanics\weapon\weapon.ah2"

Class Frenzy extends Weapon {
    WEAPON_NAME := "Frenzy"
    INVENTORY_TYPE := "Secondary"
    WEAPON_TYPE := "Pistol"
    WALL_PENETRATION := "Low"
    FIRE_TYPE := "Auto"
    FIRE_RATE := 10.0
    RUN_SPEED := 5.73
    EQUIP_SPEED := 1.0
    FIRST_SHOT_SPREAD := 0.45
    RELOAD_SPEED := 1.5
    MAGAZINE_SIZE := 13.0
    CUSTOM_ALT_SHOT := "spray"
    ; "DAMAGES": [
    ; {
    ;     "RANGE_MIN": 0,
    ;     "RANGE_MAX": 20,
    ;     "HEAD": 78,
    ;     "BODY": 26,
    ;     "LEGS": 22
    ; },
    ; {
    ;     "RANGE_MIN": 20,
    ;     "RANGE_MAX": 50,
    ;     "HEAD": 63,
    ;     "BODY": 21,
    ;     "LEGS": 17
    ; }
    ; ]
}