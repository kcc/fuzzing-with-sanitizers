



@i = global i32 0, align 4
@j = common global i32 0, align 4
@k = common global i32 0, align 4


define i32 @bnez() #0 {
entry:
  %0 = load i32, i32* @i, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void asm sideeffect ".space 10000", ""() #1, !srcloc !5
  store i32 0, i32* @i, align 4, !tbaa !1
  br label %if.end

if.end:                                           
  ret i32 0
}








define i32 @beqz() #0 {
entry:
  %0 = load i32, i32* @i, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i32 10, i32* @j, align 4, !tbaa !1
  tail call void asm sideeffect ".space 10000", ""() #1, !srcloc !6
  br label %if.end

if.else:                                          
  store i32 55, i32* @j, align 4, !tbaa !1
  tail call void asm sideeffect ".space 10000", ""() #1, !srcloc !7
  br label %if.end

if.end:                                           
  ret i32 0
}










define void @bteqz() #0 {
entry:
  %0 = load i32, i32* @i, align 4, !tbaa !1
  %1 = load i32, i32* @j, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i32 1, i32* @k, align 4, !tbaa !1
  tail call void asm sideeffect ".space 1000", ""() #1, !srcloc !8
  br label %if.end

if.else:                                          
  tail call void asm sideeffect ".space 1000", ""() #1, !srcloc !9
  store i32 2, i32* @k, align 4, !tbaa !1
  br label %if.end

if.end:                                           
  ret void
}










define void @btz() #0 {
entry:
  %0 = load i32, i32* @i, align 4, !tbaa !1
  %1 = load i32, i32* @j, align 4, !tbaa !1
  %cmp1 = icmp sgt i32 %0, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          
  tail call void asm sideeffect ".space 60000", ""() #1, !srcloc !10
  %2 = load i32, i32* @i, align 4, !tbaa !1
  %3 = load i32, i32* @j, align 4, !tbaa !1
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.end:                                           
  ret void
}










attributes #0 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.5 (gitosis@dmz-portal.mips.com:clang.git ed197d08c90d82e1119774e10920e6f7a841c8ec) (gitosis@dmz-portal.mips.com:llvm.git b9235a363fa2dddb26ac01cbaed58efbc9eff392)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{i32 59}
!6 = !{i32 156}
!7 = !{i32 210}
!8 = !{i32 299}
!9 = !{i32 340}
!10 = !{i32 412}
