#Include "..\..\actions\equip-weapon-action.ah2"
Class GameEquips {
    __hotkeys := unset
    primary := unset
    secondary := unset
    knife := unset
    firstAbility := unset
    secondAbility := unset
    thirdAbility := unset
    ultimateAbility := unset
    __New() {
        this.primary := EquipWeaponAction.new(__hotkeys.one,"equip primary")
        this.secondary := EquipWeaponAction.new(__hotkeys.two,"equip secondary")
        this.knife := EquipWeaponAction.new(__hotkeys.three,"equip knife")
        this.firstAbility := EquipWeaponAction.new(__hotkeys.v,"equip first ability")
        this.secondAbility := EquipWeaponAction.new(__hotkeys.q,"equip second ability")
        this.thirdAbility := EquipWeaponAction.new(__hotkeys.e,"equip third ability")
        this.ultimateAbility := EquipWeaponAction.new(__hotkeys.g,"equip ultimate ultimateAbility")
    }
    getCurrent() {
        inventoryType := __player.inventoryState.currentEquip.inventoryType
        if(inventoryType == "Primary") {
            return this.primary
        } else if (inventoryType == "Secondary") {
            return this.secondary
        } else if (inventoryType == "Melee") {
            return this.knife
        } else if (inventoryType == "First Ability") {
            return this.secondary
        } else if (inventoryType == "Second Ability") {
            return this.secondary
        } else if (inventoryType == "Third Ability") {
            return this.secondary
        } else if (inventoryType == "Ultimate Ability") {
            return this.secondary
        }
    }
}