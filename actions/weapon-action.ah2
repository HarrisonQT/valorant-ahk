Class WeaponAction {
    weapon := unset
    __New(ByRef _weapon) {
        this.weapon := _weapon
    }
    isAuto(fireType) {
        return fireType == "Auto"
    }
    isPrimaryAuto() {
        isPrimaryAutoTest := this.isAuto(this.weapon.FIRE_TYPE)
        ; OutputDebug("isPrimaryAutoTest " . isPrimaryAutoTest . "`n")
        return this.isAuto(this.weapon.FIRE_TYPE)
    }
    isSniper() {
        isSniperTest := this.weapon.weaponType == "Sniper"
        ; OutputDebug("isSniperTest " . isSniperTest . "`n")
        return isSniperTest
    }
    shouldLeftShoot() {
        return GetKeyState(__hotkeys.lbutton.triggerKey,"P") 
    }
    shouldRightShoot() {
        return GetKeyState(__hotkeys.rbutton.triggerKey,"P")
    }
    hasFastRateOfFire() {
        hasFastRateOfFireTest := this.weapon.rateOfFire <= (1000.0 / 3.33)
        ; OutputDebug("hasFastRateOfFireTest " . hasFastRateOfFireTest . "`n")
        return hasFastRateOfFireTest
    }
    shouldContinousLeftShoot() {
        shouldContinousLeftShootTest := this.hasFastRateOfFire() && !this.isPrimaryAuto() && !this.isSniper()
        ; OutputDebug("shouldContinousLeftShootTest " . shouldContinousLeftShootTest . "`n")
        return shouldContinousLeftShootTest
    }
    shoot(shots := 1) {
        Loop shots {
            __gameActions.clicks.left.click()
            if(A_index != shots) {
                Sleep this.weapon.rateOfFire
            }
        }
    }
    shootAndHold() {
        __gameActions.clicks.left.clickAndHold()
    }
    altShot() {
        __gameActions.clicks.right.click()
    }
    scope() {
        __gameActions.clicks.right.click()
    }
    sprayAndHold() {
        __gameActions.clicks.left.clickAndHold()
    }
    sprayRelease() {
        __gameActions.clicks.left.forceReleaseAndResume()
    }
    spray(sprayDuration) {
        this.sprayAndHold()
        Sleep sprayDuration
        this.sprayRelease()

    }
    scopeSpray(sprayDuration, scopeDelay := 0) {
        this.scope()
        Sleep scopeDelay
        this.spray(sprayDuration)
    }

}