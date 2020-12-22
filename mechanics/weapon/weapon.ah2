#Include "..\equipment\equipment.ah2"
#Include "..\..\custom-actions\custom-weapon-action.ah2"

Class Weapon extends Equipment {
    STRAFE_DISTANCE := 1700
    WEAPON_NAME := unset
    INVENTORY_TYPE := unset
    WEAPON_TYPE := unset
    WALL_PENETRATION := unset
    FIRE_TYPE := unset
    FIRE_RATE := unset
    RUN_SPEED := unset
    FIRST_SHOT_SPREAD := unset
    ALT_FIRE_TYPE := unset
    ALT_FIRE_RATE := unset
    ALT_FIRST_SHOT_SPREAD := unset
    ALT_RUN_SPEED := unset
    SCOPE_FIRE_TYPE := unset
    SCOPE_FIRE_RATE := unset
    SCOPE_FIRST_SHOT_SPREAD := unset
    MOVEMENT_DECELERATION := unset
    SCOPE_RUN_SPEED := unset
    EQUIP_SPEED := unset
    RELOAD_SPEED := unset
    MAGAZINE_SIZE := unset
    QUICK_SCOPE_TIME := unset
    CUSTOM_ALT_SHOT := unset
    CUSTOM_ALT_SHOT_DELAY := unset
    KNIFE_COUNTER_STRAFE_DELAY := unset
    BURST_UNSCOPE_TIME := unset
    SPRAY_UNSCOPE_TIME := unset
    SPRAY_SCOPE_DELAY := unset
    BURST_DURATION := unset
    BURST_COOLDOWN := unset
    CUSTOM_ALT_SHOT_COOLDDOWN := unset
    action := unset
    ; DAMAGES
    __New() {
        this.EQUIPMENT_NAME := this.WEAPON_NAME
        this.action := CustomWeaponAction.new(this)

    }
    weaponType[] {
        get => this.WEAPON_TYPE
    }
    rateOfFire[] {
        get => (this.FIRE_RATE) ? (1000 / this.FIRE_RATE) : -1
    }
    altRateOfFire[] {
        get => (this.ALT_FIRE_RATE) ? (1000 / this.ALT_FIRE_RATE) : -1
    }
    scopeRateOfFire[] {
        get => (this.SCOPE_FIRE_RATE) ? (1000 / this.SCOPE_FIRE_RATE) : -1
    }
    fireType[] {
        get => (this.FIRE_TYPE) ? this.FIRE_TYPE : unset
    }
    altFireType[] {
        get => (this.ALT_FIRE_TYPE) ? this.ALT_FIRE_TYPE : unset
    }
    scopeFireType[] {
        get => (this.SCOPE_FIRE_TYPE) ? this.SCOPE_FIRE_TYPE : unset
    }
    hasQuickScope[] {
        get => (this.QUICK_SCOPE_TIME) ? True : False
    }
    quickScopeTime[] {
        get => (this.hasQuickScope) ? this.QUICK_SCOPE_TIME : 0
    }
    runSpeed[] {
        get => this.RUN_SPEED
    }
    scopeRunSpeed[] {
        get => (this.SCOPE_RUN_SPEED) ? this.SCOPE_RUN_SPEED : 0
    }
    strafePostScopeDuration[] {
        get => this.scopeTime
    }
    strafePostScopeDistance[] {
        get => this.strafePostScopeDuration * this.scopeRunSpeed
    }
    strafePreScopeDistance[] {
        get => this.STRAFE_DISTANCE - this.strafePostScopeDistance
    }
    strafePreScopeDuration[] {
        get => (this.strafePreScopeDistance) / this.runSpeed
    }
    strafeDistance[] {
        get => this.strafePreScopeDistance + this.strafePostScopeDistance
    }
    strafeDuration[] {
        get => this.strafePreScopeDuration + this.strafePostScopeDuration
    }
    scopeTime[] {
        get {
            sT := this.quickScopeTime ? this.quickScopeTime : 0
            return sT
        }
    }
    knifeCounterStrafeDelay[] {
        get => (this.KNIFE_COUNTER_STRAFE_DELAY) ? this.KNIFE_COUNTER_STRAFE_DELAY : 0
    }
    counterStrafeBurstDuration[] {
        get => this.burstUnscopeTime
    }
    counterStrafeBurstDistance[] {
        get => this.counterStrafeBurstDuration * this.scopeRunSpeed
    }
    knifeCounterStrafeDelayDuration[] {
        get => this.knifeCounterStrafeDelay
    }
    knifeCounterStrafeDelayDistance[] {
        get => this.knifeCounterStrafeDelayDuration * this.runSpeed
    }
    counterStrafeDelayDuration[] {
        get => this.counterStrafeBurstDuration + this.knifeCounterStrafeDelayDuration
    }
    counterStrafeDelayDistance[] {
        get => this.counterStrafeBurstDistance + this.knifeCounterStrafeDelayDistance
    }
    counterStrafeDuration[] {
        get => ((this.STRAFE_DISTANCE - this.counterStrafeDelayDistance) / 6.69) + this.movementDecelerationDiff

    }
    movementDecelerationTime[] {
        get => (this.MOVEMENT_DECELERATION) ? this.MOVEMENT_DECELERATION : 90
    }
    movementDecelerationDiff[] {
        get => this.movementDecelerationTime - 90
    }
    hasCustomAltShot[] {
        get => (this.CUSTOM_ALT_SHOT) ? True : False
    }

    burstUnscopeTime[] {
        get => (this.BURST_UNSCOPE_TIME) ? (this.BURST_UNSCOPE_TIME) : 0
    }
    burstDuration[] {
        get => (this.BURST_DURATION) ? (this.BURST_DURATION) : 0
    }
    burstCooldown[] {
        get => (this.BURST_COOLDOWN) ? (this.BURST_COOLDOWN) : 0
    }
    customAltShotCooldown[] {
        get => (this.CUSTOM_ALT_SHOT_COOLDDOWN) ? (this.CUSTOM_ALT_SHOT_COOLDDOWN) : 0
    }
    sprayUnscopeTime[] {
        get => (this.SPRAY_UNSCOPE_TIME) ? (this.SPRAY_UNSCOPE_TIME) : 0
    }
    sprayScopeDelayTime[] {
        get => (this.SPRAY_SCOPE_DELAY) ? (this.SPRAY_SCOPE_DELAY) : 0
    }
    inventoryType[] {
        get => this.INVENTORY_TYPE
    }
    customAltShotDelay[] {
        get => (this.CUSTOM_ALT_SHOT_DELAY) ? this.CUSTOM_ALT_SHOT_DELAY : 0
    }
    customAltShot[] {
        get => (this.CUSTOM_ALT_SHOT) ? (this.CUSTOM_ALT_SHOT) : ""
        }
    }