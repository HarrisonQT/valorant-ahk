#Include "game-hotkey.ah2"
Class GameHotkeys {
    w := unset
    a := unset
    d := unset
    s := unset
    one := unset
    two := unset
    three := unset
    space := unset
    v := unset
    q := unset
    e := unset
    g := unset
    p := unset
    period := unset
    lshift := unset
    rshift := unset
    rctrl := unset
    lbutton := unset
    rbutton := unset
    __New() {
        this.w := GameHotkey.new("w")
        this.a := GameHotkey.new("a")
        this.d := GameHotkey.new("d")
        this.s := GameHotkey.new("s")
        this.one := GameHotkey.new("1")
        this.two := GameHotkey.new("2")
        this.three := GameHotkey.new("3")
        this.space := GameHotkey.new("Space")
        this.v := GameHotkey.new("v")
        this.q := GameHotkey.new("q")
        this.e := GameHotkey.new("e")
        this.g := GameHotkey.new("g")
        this.p := GameHotkey.new("p")
        this.period := GameHotkey.new(".")
        this.lshift := GameHotkey.new("LShift")
        this.rshift := GameHotkey.new("RShift")
        this.rctrl := GameHotkey.new("RCtrl")
        this.lbutton := GameHotkey.new("LButton")
        this.rbutton := GameHotkey.new("RButton")
    }
}