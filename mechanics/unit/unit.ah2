#Include "base-stats.ah2"
#Include "inventory\inventory.ah2"

Class Unit {
    UNIT_NAME := unset

    name[] {
        get => this.UNIT_NAME
    }

    inventory := Inventory.new()
    showInventory() {
        this.inventory.showInventory()
    }
}
