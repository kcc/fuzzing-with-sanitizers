







@G = external global i32                

declare void @ext(i32)

define i32 @t1(i32 %X, i32 %Y) nounwind {





        %Z = add i32 %X, %Y             
        store i32 %Z, i32* @G
        ret i32 %X
}

define i32 @t2(i32 %X, i32 %Y) nounwind {





        %Z = xor i32 %X, %Y             
        store i32 %Z, i32* @G
        ret i32 %X
}


%0 = type { i64, i32 }

define %0 @t3(i32 %lb, i8 zeroext %has_lb, i8 zeroext %lb_inclusive, i32 %ub, i8 zeroext %has_ub, i8 zeroext %ub_inclusive) nounwind {
entry:





  %tmp21 = zext i32 %lb to i64
  %tmp23 = zext i32 %ub to i64
  %tmp24 = shl i64 %tmp23, 32
  %ins26 = or i64 %tmp24, %tmp21
  %tmp28 = zext i8 %has_lb to i32
  %tmp33 = zext i8 %has_ub to i32
  %tmp34 = shl i32 %tmp33, 8
  %tmp38 = zext i8 %lb_inclusive to i32
  %tmp39 = shl i32 %tmp38, 16
  %tmp43 = zext i8 %ub_inclusive to i32
  %tmp44 = shl i32 %tmp43, 24
  %ins31 = or i32 %tmp39, %tmp28
  %ins36 = or i32 %ins31, %tmp34
  %ins46 = or i32 %ins36, %tmp44
  %tmp16 = insertvalue %0 undef, i64 %ins26, 0
  %tmp19 = insertvalue %0 %tmp16, i32 %ins46, 1
  ret %0 %tmp19
}
