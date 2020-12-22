#Include "..\..\weapon\weapon.ah2"

Class EmptyWeapon extends Weapon {
    WEAPON_NAME := "Empty Weapon"
}

Class InventorySlot {
    inventoryWeapon := unset
    __New(inventoryWeapon := unset) {
        this.inventoryWeapon := IsSet(inventoryWeapon) ? inventoryWeapon : EmptyWeapon.new()
    }

}