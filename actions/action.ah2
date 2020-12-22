#Include "..\time\time.ah2"

Class Action {
    lastPress := unset
    lastRelease := unset
    gameHotkey := unset
    actionName := unset
    __New(ByRef _gameHotkey, _actionName) {
        this.gameHotkey := _gameHotkey
        this.actionName := _actionName
    }
    press() {
        Send "{Blind}" . this.gameHotkey.name
        this.lastPress := time()
    }
    pressAndHold() {
        Send "{Blind}" . this.gameHotkey.down
        this.lastPress := time()
    }
    release() {
        if(!this.isPhysicallyHeldDown()) {
            Send "{Blind}" . this.gameHotkey.up
            this.lastRelease := time()
        }
    }
    forceRelease() {
        Send "{Blind}" . this.gameHotkey.up
        this.lastRelease := time()
    }
    isPhysicallyHeldDown() {
        return GetKeyState(this.gameHotkey.triggerKey, "p")
    }
    resume() {
        if(this.isPhysicallyHeldDown()) {
            this.pressAndHold()
        }
    }
    forceReleaseAndResume() {
        this.forceRelease()
        Sleep 1
        this.resume()
    }
}