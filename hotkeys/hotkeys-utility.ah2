global hotKeysActive := True
toggleHotKeysState() {
    if(isFullDebug) {
        OutputDebug("toggleHotKeysState" . "`n")
    }
    hotKeysActive := !hotKeysActive
}