


@ub1 = common global i8 0, align 1
@ub2 = common global i8 0, align 1
@ub3 = common global i8 0, align 1
@uc1 = common global i8 0, align 1
@uc2 = common global i8 0, align 1
@uc3 = common global i8 0, align 1
@us1 = common global i16 0, align 2
@us2 = common global i16 0, align 2
@us3 = common global i16 0, align 2
@ub = common global i8 0, align 1
@uc = common global i8 0, align 1
@us = common global i16 0, align 2
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@ui = common global i32 0, align 4
@ui1 = common global i32 0, align 4
@ui2 = common global i32 0, align 4
@ui3 = common global i32 0, align 4


define void @andUb() #0 {
entry:
  %0 = load i8, i8* @ub1, align 1
  %1 = load i8, i8* @ub2, align 1
  %conv0 = trunc i8 %0 to i1
  %conv1 = trunc i8 %1 to i1
  %and0 = and i1 %conv1, %conv0
  %conv3 = zext i1 %and0 to i8
  store i8 %conv3, i8* @ub, align 1, !tbaa !2












  ret void
}


define void @andUb0() #0 {
entry:
  %0 = load i8, i8* @ub1, align 1, !tbaa !2
  %conv = trunc i8 %0 to i1
  %and = and i1 %conv, 0
  %conv1 = zext i1 %and to i8
  store i8 %conv1, i8* @ub, align 1, !tbaa !2











  ret void
}


define void @andUb1() #0 {

entry:
  %x = load i8, i8* @ub1, align 1, !tbaa !2
  %and = and i8 %x, 1
  %conv = trunc i8 %and to i1
  %conv1 = zext i1 %conv to i8
  store i8 %conv1, i8* @ub, align 1, !tbaa !2












  ret void
}


define void @orUb() #0 {
entry:
  %0 = load i8, i8* @ub1, align 1
  %1 = load i8, i8* @ub2, align 1
  %conv0 = trunc i8 %0 to i1
  %conv1 = trunc i8 %1 to i1
  %or0 = or i1 %conv1, %conv0
  %conv3 = zext i1 %or0 to i8
  store i8 %conv3, i8* @ub, align 1, !tbaa !2












  ret void
}


define void @orUb0() #0 {
entry:
  %0 = load i8, i8* @ub1, align 1, !tbaa !2
  %conv = trunc i8 %0 to i1
  %or = or i1 %conv, 0
  %conv1 = zext i1 %or to i8
  store i8 %conv1, i8* @ub, align 1, !tbaa !2










  ret void
}


define void @orUb1() #0 {
entry:
  %x = load i8, i8* @ub1, align 1, !tbaa !2
  %or = or i8 %x, 1
  %conv = trunc i8 %or to i1
  %conv1 = zext i1 %conv to i8
  store i8 %conv1, i8* @ub, align 1, !tbaa !2












  ret void
}


define void @xorUb() #0 {
entry:
  %0 = load i8, i8* @ub1, align 1
  %1 = load i8, i8* @ub2, align 1
  %conv0 = trunc i8 %0 to i1
  %conv1 = trunc i8 %1 to i1
  %xor0 = xor i1 %conv1, %conv0
  %conv3 = zext i1 %xor0 to i8
  store i8 %conv3, i8* @ub, align 1, !tbaa !2












  ret void
}


define void @xorUb0() #0 {
entry:
  %0 = load i8, i8* @ub1, align 1, !tbaa !2
  %conv = trunc i8 %0 to i1
  %xor = xor i1 %conv, 0
  %conv1 = zext i1 %xor to i8
  store i8 %conv1, i8* @ub, align 1, !tbaa !2











  ret void
}


define void @xorUb1() #0 {
entry:
  %x = load i8, i8* @ub1, align 1, !tbaa !2
  %xor = xor i8 1, %x
  %conv = trunc i8 %xor to i1
  %conv1 = zext i1 %conv to i8
  store i8 %conv1, i8* @ub, align 1, !tbaa !2












  ret void
}


define void @andUc() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %1 = load i8, i8* @uc2, align 1, !tbaa !2
  %and3 = and i8 %1, %0
  store i8 %and3, i8* @uc, align 1, !tbaa !2











  ret void
}


define void @andUc0() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %and = and i8 %0, 67
  store i8 %and, i8* @uc, align 1, !tbaa !2











  ret void
}


define void @andUc1() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %and = and i8 %0, 167
  store i8 %and, i8* @uc, align 1, !tbaa !2











  ret void
}


define void @orUc() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %1 = load i8, i8* @uc2, align 1, !tbaa !2
  %or3 = or i8 %1, %0
  store i8 %or3, i8* @uc, align 1, !tbaa !2












  ret void
}


define void @orUc0() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
   %or = or i8 %0, 69
  store i8 %or, i8* @uc, align 1, !tbaa !2











  ret void
}


define void @orUc1() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %or = or i8 %0, 238
  store i8 %or, i8* @uc, align 1, !tbaa !2











  ret void
}


define void @xorUc() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %1 = load i8, i8* @uc2, align 1, !tbaa !2
  %xor3 = xor i8 %1, %0
  store i8 %xor3, i8* @uc, align 1, !tbaa !2












  ret void
}


define void @xorUc0() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %xor = xor i8 %0, 23
  store i8 %xor, i8* @uc, align 1, !tbaa !2











  ret void
}


define void @xorUc1() #0 {
entry:
  %0 = load i8, i8* @uc1, align 1, !tbaa !2
  %xor = xor i8 %0, 120
  store i8 %xor, i8* @uc, align 1, !tbaa !2











  ret void
}


define void @andUs() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %1 = load i16, i16* @us2, align 2, !tbaa !5
  %and3 = and i16 %1, %0
  store i16 %and3, i16* @us, align 2, !tbaa !5












  ret void
}


define void @andUs0() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %and = and i16 %0, 4660
  store i16 %and, i16* @us, align 2, !tbaa !5











  ret void
}


define void @andUs1() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %and = and i16 %0, 61351
  store i16 %and, i16* @us, align 2, !tbaa !5











  ret void
}


define void @orUs() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %1 = load i16, i16* @us2, align 2, !tbaa !5
  %or3 = or i16 %1, %0
  store i16 %or3, i16* @us, align 2, !tbaa !5












  ret void
}


define void @orUs0() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %or = or i16 %0, 17666
  store i16 %or, i16* @us, align 2, !tbaa !5
  ret void
}


define void @orUs1() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %or = or i16 %0, 60945
  store i16 %or, i16* @us, align 2, !tbaa !5











  ret void
}


define void @xorUs() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %1 = load i16, i16* @us2, align 2, !tbaa !5
  %xor3 = xor i16 %1, %0
  store i16 %xor3, i16* @us, align 2, !tbaa !5












  ret void
}


define void @xorUs0() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %xor = xor i16 %0, 6062
  store i16 %xor, i16* @us, align 2, !tbaa !5












  ret void
}


define void @xorUs1() #0 {
entry:
  %0 = load i16, i16* @us1, align 2, !tbaa !5
  %xor = xor i16 %0, 60024
  store i16 %xor, i16* @us, align 2, !tbaa !5











  ret void
}

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (trunk)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !3, i64 0}
