






































































target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


define i32 @_Z3foov() #0 {
entry:
  %arr = alloca [10 x i32], align 16
  %sum = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [10 x i32]* %arr, metadata !14), !dbg !18
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %arr, i32 0, i64 0, !dbg !19
  store i32 5, i32* %arrayidx, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !20), !dbg !21
  store i32 4, i32* %sum, align 4, !dbg !21
  %0 = load i32, i32* %sum, align 4, !dbg !22
  ret i32 %0, !dbg !22
}


declare void @llvm.dbg.declare(metadata, metadata) #1


define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  call void @_Z3barv(), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24), !dbg !25
  %call = call i32 @_Z3foov(), !dbg !25
  store i32 %call, i32* %i, align 4, !dbg !25
  %0 = load i32, i32* %i, align 4, !dbg !26
  ret i32 %0, !dbg !26
}

declare void @_Z3barv() #3

attributes #0 = { alwaysinline nounwind sspstrong "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind sspstrong "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = !{i32 786449, !1, i32 4, !"clang version 3.6.0 (217844)", i1 false, !"", i32 0, !2, !2, !3, !2, !2, !"", i32 1} 
!1 = !{!"<stdin>", !"/home/user/test"}
!2 = !{}
!3 = !{!4, !10}
!4 = !{i32 786478, !5, !6, !"foo", !"foo", !"_Z3foov", i32 1, !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @_Z3foov, null, null, !2, i32 2} 
!5 = !{!"test.cpp", !"/home/user/test"}
!6 = !{i32 786473, !5}          
!7 = !{i32 786453, i32 0, null, !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, !8, i32 0, null, null, null} 
!8 = !{!9}
!9 = !{i32 786468, null, null, !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} 
!10 = !{i32 786478, !5, !6, !"main", !"main", !"", i32 11, !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, !2, i32 12} 
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 1}
!13 = !{!"clang version 3.6.0 (217844)"}
!14 = !{i32 786688, !4, !"arr", !6, i32 3, !15, i32 0, i32 0} 
!15 = !{i32 786433, null, null, !"", i32 0, i64 320, i64 32, i32 0, i32 0, !9, !16, i32 0, null, null, null} 
!16 = !{!17}
!17 = !{i32 786465, i64 0, i64 10}       
!18 = !DILocation(line: 3, scope: !4)
!19 = !DILocation(line: 4, scope: !4)
!20 = !{i32 786688, !4, !"sum", !6, i32 5, !9, i32 0, i32 0} 
!21 = !DILocation(line: 5, scope: !4)
!22 = !DILocation(line: 6, scope: !4)
!23 = !DILocation(line: 13, scope: !10)
!24 = !{i32 786688, !10, !"i", !6, i32 14, !9, i32 0, i32 0} 
!25 = !DILocation(line: 14, scope: !10)
!26 = !DILocation(line: 15, scope: !10)
