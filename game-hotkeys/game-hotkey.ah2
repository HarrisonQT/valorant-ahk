Class GameHotkey {
    keyLock := unset
    __New(_keyName) {
        this.keyName := _keyName
        this.keyLock := False
    }
    name[] {
        get => Chr(123) . this.keyName . Chr(125)
    }
    triggerKey[] {
        get => this.keyName
    }
    down[] {
        get => Chr(123) . this.keyName . " down" . Chr(125)
    }
    up[] {
        get => Chr(123) . this.keyName . " up" . Chr(125)
    }
}