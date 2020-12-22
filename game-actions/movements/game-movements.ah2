#Include "..\..\custom-actions\custom-movement-action.ah2"
#Include "..\..\custom-actions\custom-jump-action.ah2"
Class GameMovements {
    __hotkeys := unset
    forward := unset
    backward := unset
    left := unset
    right := unset
    shouldBHop := False
    toggleShouldBHop() {
        this.shouldBHop := !this.shouldBHop
    }
    __New() {
        this.forward := CustomMovementAction.new(__hotkeys.w,"forward move")
        this.backward := CustomMovementAction.new(__hotkeys.s,"backward move")
        this.left := CustomMovementAction.new(__hotkeys.a,"left move")
        this.right := CustomMovementAction.new(__hotkeys.d,"right move")
        this.forward.opposite := this.backward
        this.backward.opposite := this.forward
        this.left.opposite := this.right
        this.right.opposite := this.left
        this.crouch := Action.new(__hotkeys.rctrl, "crouch modifier")
        this.walk := Action.new(__hotkeys.lshift, "walk modifier")
        this.jump := CustomJumpAction.new(__hotkeys.space, "jump move")
        this.BHopTimer := ObjBindMethod(this, "continousBHop")
    }
    forceMoveAndHold(ByRef direction) {
        this.stopAllMovement(direction)
        direction.pressAndHold()
    }
    forceMoveRelease(ByRef direction) {
        direction.release()
        this.resumeAllMovement()
    }
    stopAllMovement(ByRef ignoreDirection := unset) {
        if(ignoreDirection != this.forward)
            this.forward.forceRelease()
        if(ignoreDirection != this.left)
            this.left.forceRelease()
        if(ignoreDirection != this.right)
            this.right.forceRelease()
        if(ignoreDirection != this.backward)
            this.backward.forceRelease()
    }
    resumeAllMovement() {
        this.forward.resume()
        this.left.resume()
        this.right.resume()
        this.backward.resume()
    }
    continousBHop() {
        if(this.shouldBHop) {
            this.jump.silentJump()
            SetTimer this.BHopTimer, 50
        }
    }
}