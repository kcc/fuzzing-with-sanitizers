

@a = external global i96, align 4
@b = external global i64, align 8

define void @c() nounwind {

  %srcval1 = load i96, i96* @a, align 4
  %sroa.store.elt2 = lshr i96 %srcval1, 64
  %tmp = trunc i96 %sroa.store.elt2 to i64


  store i64 %tmp, i64* @b, align 8
  ret void
}
