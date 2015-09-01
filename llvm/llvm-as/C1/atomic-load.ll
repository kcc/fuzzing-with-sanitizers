

define i8 @add() {

  %i = alloca i8
  %j = atomicrmw add i8* %i, i8 42 monotonic



  ret i8 %j

}

define i8 @nand() {

  %i = alloca i8
  %j = atomicrmw nand i8* %i, i8 42 monotonic




  ret i8 %j

}

define i8 @min() {

  %i = alloca i8
  %j = atomicrmw min i8* %i, i8 42 monotonic




  ret i8 %j

}
