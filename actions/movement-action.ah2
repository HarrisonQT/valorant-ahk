#Include "action.ah2"
Class MovementAction extends Action {
    KNIFE_JIGGLE_STRAFE_DURATION := 290
    KNIFE_JIGGLE_COUNTER_STRAFE_DURATION := 395
    DEFAULT_KNIFE_STRAFE := __player.inventoryState.__weapons.__knife.strafeDuration
    opposite := unset

    strafeAndHold() {
        this.pressAndHold()
    }
    strafe(strafeTime) {
        this.strafeAndHold()
        Sleep strafeTime
        this.forceReleaseAndResume()
    }
    knifeStrafeAndHold() {
        __gameActions.equips.knife.equip()
        this.strafeAndHold()
    }
    knifeStrafe(strafeTime) {
        this.knifeStrafeAndHold()
        Sleep strafeTime
        this.forceReleaseAndResume()
    }
    knifeStrafeRequip(strafeTime := 0) {
        if(strafeTime == 0) {
            strafeTime := this.DEFAULT_KNIFE_STRAFE
        }
        currentGun := __gameActions.equips.getCurrent()
        this.knifeStrafe(strafeTime)
        currentGun.equip()
    }
    knifeJiggle() {
        currentGun := __gameActions.equips.getCurrent()
        this.knifeStrafe(this.KNIFE_JIGGLE_STRAFE_DURATION)
        this.opposite.knifeStrafe(this.KNIFE_JIGGLE_COUNTER_STRAFE_DURATION)
        currentGun.equip()
    }
}