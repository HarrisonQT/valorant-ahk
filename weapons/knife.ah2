#Include "..\mechanics\weapon\weapon.ah2"

Class Knife extends Weapon {
    WEAPON_NAME := "Knife"
    INVENTORY_TYPE := "Melee"
    WEAPON_TYPE := "Melee"
    FIRE_RATE := 1.0
    FIRE_TYPE := "Auto"
    RUN_SPEED := 6.69
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