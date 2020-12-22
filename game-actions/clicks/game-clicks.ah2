#Include "..\..\actions\left-game-click-action.ah2"
#Include "..\..\actions\right-game-click-action.ah2"
Class GameClickActions {
    left := unset
    right := unset
    shouldKnifeStrafe := False
    knifeStrafeDirection := unset
    queueKnifeStrafe(ByRef direction) {
        if(knifeStrafeDirection != direction) {
            this.shouldKnifeStrafe := True
        } else if(this.shouldKnifeStrafe) {
            this.knifeStrafeDirection := direction
        } else {
            this.shouldKnifeStrafe := !this.shouldKnifeStrafe
        }
        if(this.shouldKnifeStrafe) {
            this.knifeStrafeDirection := direction
        }
        OutputDebug("shouldKnifeStrafe " . this.shouldKnifeStrafe . "`n")
        OutputDebug("knifeStrafeDirection " . this.knifeStrafeDirection.actionName . "`n")
    }
    unqueueKnifeStrafe() {
        this.shouldKnifeStrafe := False
        this.knifeStrafeDirection := unset
    }
    triggerKnifeStrafe() {
        if(this.shouldKnifeStrafe == True) {
            this.knifeStrafeDirection.knifeStrafeRequip()
            this.unqueueKnifeStrafe()
        }
    }
    shouldCustomLeft := True
    toggleShouldCustomLeft() {
        this.shouldCustomLeft := !this.shouldCustomLeft
        OutputDebug("toggleShouldCustomLeft " . this.shouldCustomLeft . "`n")
    }
    shouldCustomRight := True
    toggleShouldCustomRight() {
        this.shouldCustomRight := !this.shouldCustomRight
        OutputDebug("toggleShouldCustomRight " . this.shouldCustomRight . "`n")
    }
    __New() {
        this.left := LeftGameClickAction.new(__hotkeys.lbutton, "left click")
        this.right := RightGameClickAction.new(__hotkeys.rbutton, "right click")
    }
}