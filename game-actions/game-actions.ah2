#Include "movements\game-movements.ah2"
#Include "abilities\game-abilities.ah2"
#Include "clicks\game-clicks.ah2"
#Include "equips\game-equips.ah2"
Class GameActions {
    movements := unset
    __New() {
        this.movements := GameMovements.new()
        this.abilities := GameAbilities.new()
        this.clicks := GameClickActions.new()
        this.equips := GameEquips.new()
    }
}