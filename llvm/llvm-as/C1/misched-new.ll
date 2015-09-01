












declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind







define fastcc void @_preextrapolate_helper() nounwind uwtable ssp {
entry:
  br i1 undef, label %for.cond.preheader, label %if.end

for.cond.preheader:                               
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* undef, i8* null, i64 128, i32 4, i1 false) nounwind
  unreachable

if.end:                                           
  ret void
}








define void @foo(i32 %b) nounwind uwtable ssp {
entry:
  %tobool = icmp ne i32 %b, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          
  br label %if.end

if.end:                                           
  %v1 = phi i32 [1, %entry], [2, %if.then]
  %v2 = phi i32 [3, %entry], [4, %if.then]
  call void @bar(i32 %v1, i32 %v2)
  ret void
}

declare void @bar(i32,i32)





%t0 = type { i32, i32, i8 }
%t6 = type { i32 (...)**, %t7* }
%t7 = type { i32 (...)** }

define void @hasundef() unnamed_addr uwtable ssp align 2 {
  %1 = alloca %t0, align 8
  br i1 undef, label %3, label %2


  unreachable


  br i1 undef, label %4, label %5


  call void undef(%t6* undef, %t0* %1)
  unreachable


  ret void
}









define void @testSubregTracking() nounwind uwtable ssp align 2 {
  %tmp = load i8, i8* undef, align 1
  %tmp6 = sub i8 0, %tmp
  %tmp7 = load i8, i8* undef, align 1
  %tmp8 = udiv i8 %tmp6, %tmp7
  %tmp9 = zext i8 %tmp8 to i64
  %tmp10 = load i8, i8* undef, align 1
  %tmp11 = zext i8 %tmp10 to i64
  %tmp12 = mul i64 %tmp11, %tmp9
  %tmp13 = urem i8 %tmp6, %tmp7
  %tmp14 = zext i8 %tmp13 to i32
  %tmp15 = add nsw i32 %tmp14, 0
  %tmp16 = add i32 %tmp15, 0
  store i32 %tmp16, i32* undef, align 4
  %tmp17 = add i64 0, %tmp12
  store i64 %tmp17, i64* undef, align 8
  ret void
}
