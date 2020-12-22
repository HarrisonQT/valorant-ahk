
~1:: {
    __player.inventoryState.equipPrimary()
}
>+1::{
    __player.inventoryState.equipPrimary()
}
~2:: {
    __player.inventoryState.equipSidearm()
}
>+2:: {
    __player.inventoryState.equipSidearm()
}
~g:: {
    __player.inventoryState.equipUltimateAbility()
}
~WheelUp::{
    __player.inventoryState.equipKnife()
    __gameActions.clicks.unqueueKnifeStrafe()
}
~WheelDown:: {
    __player.inventoryState.equipPrimary()
}