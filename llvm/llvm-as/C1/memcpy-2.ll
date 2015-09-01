
















@.str = internal constant [25 x i8] c"image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
@.str2 = internal constant [30 x i8] c"xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\00", align 4

define void @t1(i32 %argc, i8** %argv) nounwind  {
entry:



































  %tmp1 = alloca [25 x i8]
  %tmp2 = bitcast [25 x i8]* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %tmp2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 25, i32 1, i1 false)
  unreachable
}


%struct.s0 = type { [2 x double] }

define void @t2(%struct.s0* nocapture %a, %struct.s0* nocapture %b) nounwind ssp {
entry:



























  %tmp2 = bitcast %struct.s0* %a to i8*           
  %tmp3 = bitcast %struct.s0* %b to i8*           
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %tmp2, i8* %tmp3, i32 16, i32 16, i1 false)
  ret void
}

define void @t3(%struct.s0* nocapture %a, %struct.s0* nocapture %b) nounwind ssp {
entry:









































  %tmp2 = bitcast %struct.s0* %a to i8*           
  %tmp3 = bitcast %struct.s0* %b to i8*           
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %tmp2, i8* %tmp3, i32 16, i32 8, i1 false)
  ret void
}

define void @t4() nounwind {
entry:






















































  %tmp1 = alloca [30 x i8]
  %tmp2 = bitcast [30 x i8]* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %tmp2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str2, i32 0, i32 0), i32 30, i32 1, i1 false)
  unreachable
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
