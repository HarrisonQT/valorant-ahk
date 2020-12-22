#Include "..\actions\movement-action.ah2"

Class CustomMovementAction extends MovementAction {
    TIME_TILL_MAX_SPEED := 400
    TIME_TILL_RUN_SOUND := 400
    timeTillRunSound[] {
        get => this.TIME_TILL_RUN_SOUND
    }
    moveUntilRunSoundAndHold() {
        this.pressAndHold()
        Sleep this.timeTillRunSound
    } 
    moveUntilRunSound() {
        this.pressAndHold()
        Sleep this.timeTillRunSound
        this.release()
    }
}