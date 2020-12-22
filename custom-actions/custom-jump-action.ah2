#Include "..\actions\jump-action.ah2"

Class CustomJumpAction extends JumpAction {
    TIME_TIL_JUMP_APPEX := 325
    TIME_TIL_SILENT_CROUCH := 100
    TIME_TIL_CROUCH_SILENT_JUMP_APPEX := 225
    TIME_BEFORE_SILENT_UNCROUCH := 25

    timeTilJumpApex[] {
        get => this.TIME_TIL_JUMP_APPEX
    }
    timeTilSilentCrouch[] {
        get => this.TIME_TIL_SILENT_CROUCH
    }
    timeTilSilentCrouchJumpApex[] {
        get => this.TIME_TIL_CROUCH_SILENT_JUMP_APPEX
    }
    timeBeforeSilentUncrouch[] {
        get => this.TIME_BEFORE_SILENT_UNCROUCH
    }
    jumpWaitTilAppex() {
        this.jump()
        Sleep this.timeTilJumpApex
    }
    silentJumpWaitTilAppex() {
        this.silentJump()
        Sleep this.timeTilJumpApex
    }
    silentCrouchJumpWaitTilCrouch() {
        __gameActions.movements.crouch.pressAndHold()
        Sleep this.timeTilSilentCrouch
        this.silentJump()
    }
    silentCrouchJumpWaitTilAppex() {
        this.silentCrouchJumpWaitTilCrouch()
        Sleep this.timeTilSilentCrouchJumpApex
    }
    silentCrouchJumpUncrouch() {
        Sleep this.timeBeforeSilentUncrouch
        __gameActions.movements.crouch.forceReleaseAndResume()
    }
    silentCrouchJump() {
        this.silentCrouchJumpWaitTilAppex()
        this.silentCrouchJumpUncrouch()
    }
}