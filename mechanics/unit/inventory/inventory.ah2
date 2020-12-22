#Include "inventory-slot.ah2"
#Include "..\..\..\weapons\knife.ah2"
Class Inventory {
    __New() {
        this.primary := InventorySlot.new()
        this.sidearm := InventorySlot.new()
        this.knife := InventorySlot.new()
        this.firstAbility := InventorySlot.new()
        this.secondAbility := InventorySlot.new()
        this.thirdAbility := InventorySlot.new()
        this.ultimateAbility := InventorySlot.new()
    }
    showPrimary() {
        OutputDebug("`t Primary" . "`n")
        OutputDebug(this.primary.inventoryWeapon.name . "`n")
    }
    showSidearm() {
        OutputDebug("`t Sidearm" . "`n")
        OutputDebug(this.sidearm.inventoryWeapon.name . "`n")
    }
    showInventory() {
        OutputDebug("--- Weapon Inventory ----------------------" . "`n")
        this.showPrimary()
        this.showSidearm()
    }
}