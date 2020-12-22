#Include "action.ah2"
Class AbilityAction extends Action {
    cast() {
        this.press()
    }
    castAndHold() {
        this.pressAndHold()
    }
}