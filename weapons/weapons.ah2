#Include "classic.ah2"
#Include "shorty.ah2"
#Include "frenzy.ah2"
#Include "ghost.ah2"
#Include "sheriff.ah2"
#Include "stinger.ah2"
#Include "spectre.ah2"
#Include "bucky.ah2"
#Include "judge.ah2"
#Include "bulldog.ah2"
#Include "guardian.ah2"
#Include "phantom.ah2"
#Include "vandal.ah2"
#Include "marshal.ah2"
#Include "operator.ah2"
#Include "aries.ah2"
#Include "odin.ah2"
#Include "knife.ah2"
#Include "blade-storm.ah2"

Class Weapons {
    __classic := unset
    __shorty := unset
    __frenzy := unset
    __ghost := unset
    __sheriff := unset
    __stinger := unset
    __spectre := unset
    __bucky := unset
    __judge := unset
    __bulldog := unset
    __guardian := unset
    __phantom := unset
    __vandal := unset
    __marshal := unset
    __operator := unset
    __aries := unset
    __odin := unset
    __bladeStorm := unset
    __knife := unset
    __New() {
        this.__classic := Classic.new()
        this.__shorty := Shorty.new()
        this.__frenzy := Frenzy.new()
        this.__ghost := Ghost.new()
        this.__sheriff := Sheriff.new()
        this.__stinger := Stinger.new()
        this.__spectre := Spectre.new()
        this.__bucky := Bucky.new()
        this.__judge := Judge.new()
        this.__bulldog := Bulldog.new()
        this.__guardian := Guardian.new()
        this.__phantom := Phantom.new()
        this.__vandal := Vandal.new()
        this.__marshal := Marshal.new()
        this.__operator := Operator.new()
        this.__aries := Aries.new()
        this.__odin := Odin.new()
        this.__knife := Knife.new()
        this.__bladeStorm := BladeStorm.new()
    }
}