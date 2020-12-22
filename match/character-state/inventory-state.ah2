#Include "..\..\weapons\weapons.ah2"

Class InventoryState {
    __weapons := unset
    agent := unset
    currentEquip := unset
    __New(ByRef _agent) {
        this.agent := _agent
        this.__weapons := Weapons.new()
        this.setPrimary(this.__weapons.__phantom, False)
        this.setSidearm(this.__weapons.__classic, False)
        this.setUltimateAbility(this.__weapons.__bladeStorm, False)
        this.setKnife(this.__weapons.__knife)
        this.equip(this.agent.inventory.primary.inventoryWeapon)
    }
    setWeapon(ByRef _weapon, ByRef _inventorySlot) {
        if(this.currentEquip == _inventorySlot.inventoryWeapon) {
            this.currentEquip := _weapon
        }
        _inventorySlot.inventoryWeapon := _weapon
        this.equip(_inventorySlot.inventoryWeapon)
    }
    setPrimary(ByRef _weapon, displayState := True) {
        this.setWeapon(_weapon,this.agent.inventory.primary)
        if(displayState) {
            this.showState()
        }
    }
    setSidearm(ByRef _weapon, displayState := True) {
        this.setWeapon(_weapon,this.agent.inventory.sidearm)
        if(displayState) {
            this.showState()
        }
    }
    setKnife(ByRef _weapon) {
        this.agent.inventory.knife.inventoryWeapon := _weapon
    }
    setUltimateAbility(ByRef _weapon, displayState := True) {
        this.setWeapon(_weapon,this.agent.inventory.ultimateAbility)
        if(displayState) {
            this.showState()
        }
    }
    showEquipment() {
        OutputDebug("--- Equipped ------------------------------" . "`n")
        OutputDebug(this.currentEquip.name . "`n")
    }
    showState() {
        this.agent.inventory.showInventory()
        this.showEquipment()
        OutputDebug("`n")
    }
    equip(ByRef _equipment) {
        this.currentEquip := _equipment
        this.showState()
    }
    equipPrimary() {
        this.equip(this.agent.inventory.primary.inventoryWeapon)
    }
    equipSidearm() {
        this.equip(this.agent.inventory.sidearm.inventoryWeapon)
    }
    equipKnife() {
        this.equip(this.agent.inventory.knife.inventoryWeapon)
    }
    equipUltimateAbility() {
        this.equip(this.agent.inventory.ultimateAbility.inventoryWeapon)
    }
    setClassic() {
        this.setSidearm(this.__weapons.__classic)
    }
    setShorty() {
        this.setSidearm(this.__weapons.__shorty)
    }
    setFrenzy() {
        this.setSidearm(this.__weapons.__frenzy)
    }
    setGhost() {
        this.setSidearm(this.__weapons.__ghost)
    }
    setSheriff() {
        this.setSidearm(this.__weapons.__sheriff)
    }
    setStinger() {
        this.setPrimary(this.__weapons.__stinger)
    }
    setSpectre() {
        this.setPrimary(this.__weapons.__spectre)
    }
    setBucky() {
        this.setPrimary(this.__weapons.__bucky)
    }
    setJudge() {
        this.setPrimary(this.__weapons.__judge)
    }
    setBulldog() {
        this.setPrimary(this.__weapons.__bulldog)
    }
    setGuardian() {
        this.setPrimary(this.__weapons.__guardian)
    }
    setPhantom() {
        this.setPrimary(this.__weapons.__phantom)
    }
    setVandal() {
        this.setPrimary(this.__weapons.__vandal)
    }
    setMarshal() {
        this.setPrimary(this.__weapons.__marshal)
    }
    setOperator() {
        this.setPrimary(this.__weapons.__operator)
    }
    setAries() {
        this.setPrimary(this.__weapons.__aries)
    }
    setOdin() {
        this.setPrimary(this.__weapons.__odin)
    }
}