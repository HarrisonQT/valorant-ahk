#Include "..\character-state\inventory-state.ah2"

Class Player {
    currentAgent := unset
    inventoryState := unset
    __New(ByRef _agent) {
        this.currentAgent := _Agent
        this.inventoryState := InventoryState.new(this.currentAgent)
    }
}