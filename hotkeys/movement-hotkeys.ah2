
+space:: {
    __gameActions.movements.jump.silentJumpAndHold()
}
space:: {
    __gameActions.movements.jump.silentJumpAndHold()
}
+space up:: {
    __gameActions.movements.jump.forceReleaseAndResume()
}
space up:: {
    __gameActions.movements.jump.forceReleaseAndResume()
}

<^a::{
    __gameActions.movements.left.knifeJiggle()
}
<^a up::{
}
<^d::{
    __gameActions.movements.right.knifeJiggle()
}
<^d up::{
}
<^w::{
    __gameActions.movements.forward.knifeJiggle()
}
<^w up::{
}
<^s::{
    __gameActions.movements.backward.knifeJiggle()
}
<^s up::{
}
~w:: {

}
~w up:: {
}

~a:: {

}
~a up:: {
}
~s:: {

}
~s up:: {
}
~d:: {

}
~d up:: {
}

; +0:: {
;     __gameActions.movements.left.knifeStrafeRequip(400)
; }
; 0:: {
;     __gameActions.movements.right.knifeStrafeRequip(400)
; }
8:: {
    __gameActions.movements.forward.moveUntilRunSound()
}
XButton1:: {
    __gameActions.movements.toggleShouldBHop()
    if(__gameActions.movements.shouldBHop) {
        __gameActions.movements.continousBHop()
    }
}