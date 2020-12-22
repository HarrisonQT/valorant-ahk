>+MButton::{
    __gameActions.clicks.toggleShouldCustomLeft()
}
>+RButton::{
    __gameActions.clicks.toggleShouldCustomRight()
}

~LButton:: {
    if(__gameActions.clicks.shouldCustomLeft == True) {
        if(__player.inventoryState.currentEquip.action.shouldContinousLeftShoot()) {
            __player.inventoryState.currentEquip.action.continousLeftShoot()
        }
    }
    if(__gameActions.clicks.shouldKnifeStrafe == True) {
        __gameActions.clicks.triggerKnifeStrafe()
    }
}
~LButton up:: {
    if(__gameActions.clicks.shouldCustomLeft == True) {
        __player.inventoryState.currentEquip.action.unlockLeftClick()
    }
}
~+9:: {
    __gameActions.clicks.queueKnifeStrafe(__gameActions.movements.left)
}
~+0:: {
    __gameActions.clicks.queueKnifeStrafe(__gameActions.movements.right)
}
#HotIf
RShift & LButton::{
    __player.inventoryState.currentEquip.action.customShot()
}
RShift & LButton up::{
}

LCtrl & LButton::{
    __player.inventoryState.currentEquip.action.leftStrafeCustomShot()
}
LCtrl & RButton::{
    __player.inventoryState.currentEquip.action.rightStrafeCustomShot()
}

#HotIf (__player.inventoryState.currentEquip.hasCustomAltShot && !__player.inventoryState.currentEquip.action.isSniper() && __gameActions.clicks.shouldCustomRight == True) 
RButton:: {
    if(__player.inventoryState.currentEquip.hasCustomAltShot) { 
        __player.inventoryState.currentEquip.action.continousCustomAltShot()
    } else {
        __gameActions.clicks.right.click()
    }
}
RButton up:: {
    __player.inventoryState.currentEquip.action.unlockRightClick()
}
#HotIf