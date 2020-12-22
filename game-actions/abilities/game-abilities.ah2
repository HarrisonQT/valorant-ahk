#Include "..\..\custom-actions\custom-ability-action.ah2"
Class GameAbilities {
    first := unset
    second := unset
    third := unset
    ultimate := unset
    shouldJumpCast := True
    toggleShouldJumpCast() {
        this.shouldJumpCast := !this.shouldJumpCast
    }
    __New() {
        this.first := CustomAbilityAction.new(__hotkeys.v, "first ability")
        this.second := CustomAbilityAction.new(__hotkeys.q, "second ability")
        this.third := CustomAbilityAction.new(__hotkeys.e, "third ability")
        this.ultimate := CustomAbilityAction.new(__hotkeys.g, "ultimate ability")
    }
    castThirdSecond(thirdDelay := 0, secondDelay := 0) {
        Sleep thirdDelay
        this.third.cast()
        Sleep secondDelay
        if(this.shouldJumpCast) {
            this.second.jumpCast()
        } else {
            this.second.cast()
        }
    }
    castFirstThirdSecond(firstDelay := 0, thirdDelay := 0, secondDelay := 0) {
        Sleep firstDelay
        this.first.cast()
        Sleep thirdDelay
        this.third.cast()
        Sleep secondDelay
        this.second.cast()
    }
}