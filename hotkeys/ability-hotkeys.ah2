
5:: {
    __gameActions.abilities.first.silentCrouchJumpCast()
}
6:: {
    __gameActions.abilities.first.directionalSilentJumpCast(__gameActions.movements.forward)
}
7:: {
    __gameActions.abilities.first.directionalJumpCast(__gameActions.movements.forward,400)
}

~q::{
    if(__gameActions.abilities.shouldJumpCast) {
        __gameActions.movements.jump.jump()
    }
}
+q::{
    __gameActions.abilities.toggleShouldJumpCast()
}
y:: {
    __gameActions.abilities.castThirdSecond()
}
t:: {
    __gameActions.abilities.castFirstThirdSecond(0,200,200)
}
z:: {
    __gameActions.abilities.third.directionalCast(__gameActions.movements.left)
}
x:: {
    __gameActions.abilities.third.directionalCast(__gameActions.movements.backward)
}
c:: {
    __gameActions.abilities.third.directionalCast(__gameActions.movements.right)
}
