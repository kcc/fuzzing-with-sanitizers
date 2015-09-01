







%struct.SmallStruct = type { i32, [8 x i32], [37 x i8] }
%struct.LargeStruct = type { i32, [1001 x i8], [300 x i32] }

define i32 @f() nounwind ssp {
entry:








  %st = alloca %struct.SmallStruct, align 4
  %call = call i32 @e1(%struct.SmallStruct* byval %st)
  ret i32 0
}


define i32 @g() nounwind ssp {
entry:


















  %st = alloca %struct.LargeStruct, align 4
  %call = call i32 @e2(%struct.LargeStruct* byval %st)
  ret i32 0
}


define i32 @h() nounwind ssp {
entry:















  %st = alloca %struct.LargeStruct, align 16
  %call = call i32 @e3(%struct.LargeStruct* byval align 16 %st)
  ret i32 0
}

declare i32 @e1(%struct.SmallStruct* nocapture byval %in) nounwind
declare i32 @e2(%struct.LargeStruct* nocapture byval %in) nounwind
declare i32 @e3(%struct.LargeStruct* nocapture byval align 16 %in) nounwind




define void @f3(%struct.SmallStruct* nocapture byval %s) nounwind optsize {




entry:
  %0 = bitcast %struct.SmallStruct* %s to i8*
  tail call void @consumestruct(i8* %0, i32 80) optsize
  ret void
}

define void @f4(%struct.SmallStruct* nocapture byval %s) nounwind optsize {




entry:
  %addr = getelementptr inbounds %struct.SmallStruct, %struct.SmallStruct* %s, i32 0, i32 0
  %0 = bitcast i32* %addr to i8*
  tail call void @consumestruct(i8* %0, i32 80) optsize
  ret void
}


define void @f5(i32 %a, i32 %b, i32 %c, i32 %d, %struct.SmallStruct* nocapture byval %s) nounwind optsize {




entry:
  %0 = bitcast %struct.SmallStruct* %s to i8*
  tail call void @consumestruct(i8* %0, i32 80) optsize
  ret void
}

define void @f6(i32 %a, i32 %b, i32 %c, i32 %d, %struct.SmallStruct* nocapture byval %s) nounwind optsize {




entry:
  %addr = getelementptr inbounds %struct.SmallStruct, %struct.SmallStruct* %s, i32 0, i32 0
  %0 = bitcast i32* %addr to i8*
  tail call void @consumestruct(i8* %0, i32 80) optsize
  ret void
}

declare void @consumestruct(i8* nocapture %structp, i32 %structsize) nounwind


%struct.I.8 = type { [10 x i32], [3 x i8] }

declare void @use_I(%struct.I.8* byval)
define void @test_I_16() {






entry:
  call void @use_I(%struct.I.8* byval align 16 undef)
  ret void
}
