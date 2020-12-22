#Include "action.ah2"
Class GameClickAction extends Action {
    click() {
        this.press()
    }
    clickAndHold() {
        this.pressAndHold()
    }
}