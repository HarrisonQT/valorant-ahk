#Include "movement-action.ah2"

Class JumpAction extends MovementAction {
    jump() {
        this.press()
    }
    isWalkHeldDown() {
        return __gameActions.movements.walk.isPhysicallyHeldDown()
    }
    silentJump() {
        __gameActions.movements.walk.pressAndHold()
        this.press()
        this.forceReleaseAndResume()
        Sleep 1
        __gameActions.movements.walk.forceReleaseAndResume()
    }
    silentJumpAndHold() {
        if(!this.isWalkHeldDown()) {
            __gameActions.movements.walk.pressAndHold()
        }
        this.pressAndHold()
        Sleep 1
        __gameActions.movements.walk.forceReleaseAndResume()
    }
}