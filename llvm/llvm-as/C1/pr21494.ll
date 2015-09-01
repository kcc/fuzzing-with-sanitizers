

@g1 = private global i8 0


@g2 = linkonce_odr global i8 0


@a1 = private alias i8* @g1


@a2 = linkonce_odr alias i8* @g2


define private void @f1() {
  ret void
}


define linkonce_odr void @f2() {
  ret void
}

