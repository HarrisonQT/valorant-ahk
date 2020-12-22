#Include "..\actions\weapon-action.ah2"

Class CustomWeaponAction extends WeaponAction {

    PEAK_EXPOSURE_TIME := 350
    customShot() {
        if(this.weapon.hasQuickScope) {
            this.quickScope()
        } else {
            this.leftShotScopeBurst()
        }
    }
    quickScope() {
        if(this.weapon.hasQuickScope) {
            __gameActions.movements.stopAllMovement()
            __gameActions.clicks.right.press()
            Sleep this.weapon.quickScopeTime
            __gameActions.clicks.left.press()
            __gameActions.movements.resumeAllMovement()
        }
    }

    leftShotAltShot() {
        this.shoot()
        Sleep this.weapon.rateOfFire
        this.altShot()
    }
    leftShotScopeBurst() {
        this.shoot()
        Sleep this.weapon.rateOfFire - 1
        this.scope()
        Sleep 1
        this.shoot()
    }
    secondBurst() {
        static timeTest := 240
        static BURST_DURATION := 165
        OutputDebug("timeTest " . timeTest . "`n")
        timeTest += 1
        Sleep timeTest
        this.shoot()
        Sleep BURST_DURATION
    }
    burstTest() {
        this.leftShotScopeBurstUnscope()
        Sleep this.weapon.burstCooldown
        this.leftShotScopeBurstUnscope()
    }
    leftShotScopeBurstUnscope() {
        this.leftShotScopeBurst()
        Sleep (this.weapon.burstDuration + this.weapon.burstUnscopeTime)
        this.scope()
    }

    customAltShot() {
        if(this.weapon.customAltShot == "leftShotAltShot") {
            this.leftShotAltShot()
        } else if(this.weapon.customAltShot == "altShot") {
            this.altShot()
        } else if(this.weapon.customAltShot == "leftShotScopeBurst") {
            this.leftShotScopeBurstUnscope()
        } else if(this.weapon.customAltShot == "shootScopeSpray") {
            this.shootScopeSprayUnscope(this.calculatePeekShotsScopeSprayDuration())
        } else if(this.weapon.customAltShot == "shots") {
            this.shoot()
        } else if (this.weapon.scopeFireType == "Auto" && this.weapon.sprayScopeDelayTime <= 0) {
            this.scopeSpray(this.PEAK_EXPOSURE_TIME)
        } else if (this.weapon.fireType == "uAto" || this.weapon.customAltShot == "spray") {
            this.spray(this.PEAK_EXPOSURE_TIME)
        } else if (this.hasFastRateOfFire()) {
            this.shoot(this.calculatePeekShots())
        }
    } 
    strafeCustomAltShot() {
        if(this.weapon.customAltShot == "shootScopeSpray") {
            this.shootScopeSprayUnscope(this.calculatePeekShotsScopeSprayDuration())
        } else if(this.weapon.customAltShot == "leftShotScopeBurst") {
            this.leftShotScopeBurst()
            OutputDebug("this.weapon.burstDuration " . this.weapon.burstDuration . "`n")
            Sleep (this.weapon.burstDuration)
        } else {
            this.customAltShot()
        }
    }
    unlockLeftClick() {
        __hotkeys.lbutton.keyLock := False
        __gameActions.clicks.left.forceReleaseAndResume()
    }
    unlockRightClick() {
        __hotkeys.rbutton.keyLock := False
        this.unlockLeftClick()
        __gameActions.clicks.right.forceReleaseAndResume()
    }
    continousLeftShoot() {
        if(this.shouldLeftShoot()) {
            __hotkeys.lbutton.keyLock := True
        }
        While (this.shouldLeftShoot() && __hotkeys.lbutton.keyLock == True) {
            if(__hotkeys.lbutton.keyLock == True) {
                __gameActions.clicks.left.click()
                if(__hotkeys.lbutton.keyLock == True) {
                    Sleep this.weapon.rateOfFire
                } else {
                    this.unlockLeftClick()
                }
            } else {
                this.unlockLeftClick()
            }
        }
        this.unlockLeftClick()
    }
    continousCustomAltShot() {
        if(this.shouldRightShoot()) {
            __hotkeys.rbutton.keyLock := True
        }

        While (this.shouldRightShoot() && __hotkeys.rbutton.keyLock == True ) {
            if(__hotkeys.rbutton.keyLock == True) {
                this.customAltShot()
                if(__hotkeys.rbutton.keyLock == True) {
                    if(this.weapon.burstCooldown > 0) {
                        Sleep this.weapon.burstCooldown
                    } else if (this.weapon.altRateOfFire > 0) {
                        Sleep this.weapon.altRateOfFire
                    } else if (this.weapon.scopeRateOfFire > 0) {
                        Sleep this.weapon.scopeRateOfFire
                    } else {
                        Sleep this.weapon.rateOfFire
                    }
                } else {
                    this.unlockRightClick()
                }
            } else {
                this.unlockRightClick()
            }
        }
        this.unlockRightClick()
    }

    strafeScope(ByRef direction) {
        direction.strafeAndHold()
        Sleep this.weapon.strafePreScopeDuration 
        this.scope()
        Sleep this.weapon.strafePostScopeDuration
        direction.release()
    }
    calculatePeekShots() {
        return Floor(this.PEAK_EXPOSURE_TIME / this.weapon.rateOfFire)
    }
    calculatePeekShotsScopeSprayDuration() {
        return Floor((this.PEAK_EXPOSURE_TIME - this.weapon.rateOfFire))
    }
    strafeCustomShot(ByRef direction) {
        if(this.weapon.hasQuickScope) {
            this.strafeQuickScope(direction)
        } else {
            counterStrafeDuration := this.weapon.counterStrafeDuration
            direction.strafe(this.weapon.strafeDuration)
            Sleep this.weapon.movementDecelerationTime
            if(this.weapon.customAltShot == "leftShotScopeBurst") {
                this.leftShotScopeBurst()
                Sleep (this.weapon.burstDuration)
                direction.opposite.strafe(this.weapon.counterStrafeBurstDuration)
            } else {
                this.strafeCustomAltShot()
            }
            direction.opposite.knifeStrafeRequip(counterStrafeDuration)
        }
    }
    leftStrafeCustomShot() {
        this.strafeCustomShot(__gameActions.movements.left)
    }
    rightStrafeCustomShot() {
        this.strafeCustomShot(__gameActions.movements.right)
    }
    strafeQuickScope(ByRef direction) {
        this.strafeScope(direction)
        Sleep this.weapon.movementDecelerationTime
        __gameActions.clicks.left.click()
        direction.opposite.knifeStrafeRequip(this.weapon.counterStrafeDuration)
    }
    strafeLeftShotAltShot(ByRef direction) {
        this.shoot()
        Sleep this.weapon.rateOfFire
        this.altShot()
    }
    shootScopeSpray(sprayDuration, shots := 1) {
        this.shoot(shots)
        Sleep this.weapon.rateOfFire
        this.scopeSpray(sprayDuration)
    }
    shootScopeSprayUnscope(sprayDuration, shots := 1) {
        this.shootScopeSpray(sprayDuration, shots)
        Sleep this.weapon.sprayUnscopeTime
        this.scope()
    }
}