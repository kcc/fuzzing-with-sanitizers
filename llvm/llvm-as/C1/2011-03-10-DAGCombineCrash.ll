



%struct.mo = type { i32, %struct.mo_pops* }
%struct.mo_pops = type { void (%struct.mo*)*, void (%struct.mo*)*, i32 (%struct.mo*, i32*, i32)*, i32 (%struct.mo*)*, i32 (%struct.mo*, i64, i32, i32, i32*, i64, i32)*, i32 (%struct.mo*, i64, i32, i64*, i32*, i32, i32, i32)*, i32 (%struct.mo*, i64, i32)*, i32 (%struct.mo*, i64, i64, i32)*, i32 (%struct.mo*, i64, i64, i32)*, i32 (%struct.mo*, i32)*, i32 (%struct.mo*)*, i32 (%struct.mo*, i32)*, i8* }
%struct.ui = type { %struct.mo*, i32*, i32, i32*, i32*, i64, i32*, i32*, i32* }


define internal fastcc i32 @t(i32* %vp, i32 %withfsize, i64 %filesize) nounwind {
entry:
  br i1 undef, label %bb1, label %bb

bb:                                               
  unreachable

bb1:                                              
  %0 = call %struct.ui* @vn_pp_to_ui(i32* undef) nounwind
  call void @llvm.memset.p0i8.i32(i8* undef, i8 0, i32 40, i32 4, i1 false)
  %1 = getelementptr inbounds %struct.ui, %struct.ui* %0, i32 0, i32 0
  store %struct.mo* undef, %struct.mo** %1, align 4
  %2 = getelementptr inbounds %struct.ui, %struct.ui* %0, i32 0, i32 5
  %3 = load i64, i64* %2, align 4
  %4 = call i32 @mo_create_nnm(%struct.mo* undef, i64 %3, i32** undef) nounwind
  br i1 undef, label %bb3, label %bb2

bb2:                                              
  unreachable

bb3:                                              
  br i1 undef, label %bb4, label %bb6

bb4:                                              
  %5 = call i32 @vn_size(i32* %vp, i64* %2, i32* undef) nounwind
  unreachable

bb6:                                              
  ret i32 0
}

declare %struct.ui* @vn_pp_to_ui(i32*)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @mo_create_nnm(%struct.mo*, i64, i32**)

declare i32 @vn_size(i32*, i64*, i32*)
