#Include "..\actions\ability-action.ah2"

Class CustomAbilityAction extends AbilityAction {

    directionalCastAndHold(ByRef direction, movementDuration := 1) {
        __gameActions.movements.forceMoveAndHold(direction)
        Sleep movementDuration
    }
    directionalCastRelease(ByRef direction) {
        __gameActions.movements.forceMoveRelease(direction)
    }
    directionalCast(ByRef direction, movementDuration := 1) {
        this.directionalCastAndHold(direction, movementDuration)
        this.cast()
        this.directionalCastRelease(direction)
    }
    silentJumpAppexCast() {
        __gameActions.movements.jump.silentJumpWaitTilAppex()
        this.cast()
    }
    silentJumpCast() {
        __gameActions.movements.jump.silentJump()
        this.cast()
    }
    jumpAppexCast() {
        __gameActions.movements.jump.jumpWaitTilAppex()
        this.cast()
    }
    jumpCast() {
        __gameActions.movements.jump.jump()
        this.cast()
        ; __gameActions.movements.jump.forceReleaseAndResume()
    }
    silentCrouchJumpCast() {
        __gameActions.movements.jump.silentCrouchJumpWaitTilAppex()
        this.cast()
        __gameActions.movements.jump.silentCrouchJumpUncrouch()
    }
    directionalSilentJumpCast(ByRef direction, movementDuration := 1) {
        this.directionalCastAndHold(direction, movementDuration)
        this.silentJumpAppexCast()
        this.directionalCastRelease(direction)
    }
    directionalJumpCast(ByRef direction, movementDuration := 1) {
        this.directionalCastAndHold(direction, movementDuration)
        this.jumpAppexCast()
        this.directionalCastRelease(direction)
    }
}