
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define i32 @test1() nounwind {
entry:



  %conv121 = and i32 undef, 65535
  br i1 undef, label %if.then152, label %if.end167

if.then152:

  %conv153 = and i32 undef, 65535
  br i1 undef, label %if.end167, label %end2

if.end167:

  %shl161 = shl nuw nsw i32 %conv121, 15
  %0 = load i8, i8* undef, align 1
  %conv169 = zext i8 %0 to i32
  %shl170 = shl nuw nsw i32 %conv169, 7
  %shl161.masked = and i32 %shl161, 32768
  %conv174 = or i32 %shl170, %shl161.masked
  %cmp178 = icmp ugt i32 %conv174, 32767
  br i1 %cmp178, label %end1, label %end2

end1:
  unreachable

end2:
  unreachable
}


define i32 @test2() nounwind {
entry:


  %conv121 = and i32 undef, 65531
  br i1 undef, label %if.then152, label %if.end167

if.then152:
  %conv153 = and i32 undef, 65531
  br i1 undef, label %if.end167, label %end2

if.end167:

  %shl161 = shl nuw nsw i32 %conv121, 15
  %0 = load i8, i8* undef, align 1
  %conv169 = zext i8 %0 to i32
  %shl170 = shl nuw nsw i32 %conv169, 7
  %shl161.masked = and i32 %shl161, 32773
  %conv174 = or i32 %shl170, %shl161.masked
  %cmp178 = icmp ugt i32 %conv174, 32767
  br i1 %cmp178, label %end1, label %end2

end1:
  unreachable

end2:
  unreachable
}

