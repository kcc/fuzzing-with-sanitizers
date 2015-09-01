


target datalayout = "e-p:64:64:64"
target triple = "x86_64-unknown-unknown"















define void @full_me_0(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  %t0 = icmp sgt i64 %n, 0
  br i1 %t0, label %loop, label %return

loop:
  %i = phi i64 [ %i.next, %loop ], [ 0, %entry ]
  %Ai = getelementptr inbounds double, double* %A, i64 %i
  %Bi = getelementptr inbounds double, double* %B, i64 %i
  %Ci = getelementptr inbounds double, double* %C, i64 %i
  %t1 = load double, double* %Bi
  %t2 = load double, double* %Ci
  %m = fmul double %t1, %t2
  store double %m, double* %Ai
  %i.next = add nsw i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  ret void
}
























define void @mostly_full_me_0(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  %t0 = icmp sgt i64 %n, 0
  br i1 %t0, label %loop, label %return

loop:
  %i = phi i64 [ %i.next, %loop ], [ 0, %entry ]
  %Ai = getelementptr inbounds double, double* %A, i64 %i
  %Bi = getelementptr inbounds double, double* %B, i64 %i
  %Ci = getelementptr inbounds double, double* %C, i64 %i
  %t1 = load double, double* %Bi
  %t2 = load double, double* %Ci
  %m = fmul double %t1, %t2
  store double %m, double* %Ai
  %j = add i64 %i, 256
  %Aj = getelementptr inbounds double, double* %A, i64 %j
  %Bj = getelementptr inbounds double, double* %B, i64 %j
  %Cj = getelementptr inbounds double, double* %C, i64 %j
  %t3 = load double, double* %Bj
  %t4 = load double, double* %Cj
  %o = fdiv double %t3, %t4
  store double %o, double* %Aj
  %i.next = add nsw i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  ret void
}

















define void @mostly_full_me_1(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  %t0 = icmp sgt i64 %n, 0
  br i1 %t0, label %loop, label %return

loop:
  %i = phi i64 [ %i.next, %loop ], [ 0, %entry ]
  %Ai = getelementptr inbounds double, double* %A, i64 %i
  %Bi = getelementptr inbounds double, double* %B, i64 %i
  %Ci = getelementptr inbounds double, double* %C, i64 %i
  %t1 = load double, double* %Bi
  %t2 = load double, double* %Ci
  %m = fmul double %t1, %t2
  store double %m, double* %Ai
  %j = sub i64 %i, 256
  %Aj = getelementptr inbounds double, double* %A, i64 %j
  %Bj = getelementptr inbounds double, double* %B, i64 %j
  %Cj = getelementptr inbounds double, double* %C, i64 %j
  %t3 = load double, double* %Bj
  %t4 = load double, double* %Cj
  %o = fdiv double %t3, %t4
  store double %o, double* %Aj
  %i.next = add nsw i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  ret void
}
















define void @mostly_full_me_2(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  %t0 = icmp sgt i64 %n, 0
  br i1 %t0, label %loop, label %return

loop:
  %i = phi i64 [ %i.next, %loop ], [ 0, %entry ]
  %k = add i64 %i, 256
  %Ak = getelementptr inbounds double, double* %A, i64 %k
  %Bk = getelementptr inbounds double, double* %B, i64 %k
  %Ck = getelementptr inbounds double, double* %C, i64 %k
  %t1 = load double, double* %Bk
  %t2 = load double, double* %Ck
  %m = fmul double %t1, %t2
  store double %m, double* %Ak
  %j = sub i64 %i, 256
  %Aj = getelementptr inbounds double, double* %A, i64 %j
  %Bj = getelementptr inbounds double, double* %B, i64 %j
  %Cj = getelementptr inbounds double, double* %C, i64 %j
  %t3 = load double, double* %Bj
  %t4 = load double, double* %Cj
  %o = fdiv double %t3, %t4
  store double %o, double* %Aj
  %i.next = add nsw i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  ret void
}














define i64 @count_me_0(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  %t0 = icmp sgt i64 %n, 0
  br i1 %t0, label %loop, label %return

loop:
  %i = phi i64 [ %i.next, %loop ], [ 0, %entry ]
  %Ai = getelementptr inbounds double, double* %A, i64 %i
  %Bi = getelementptr inbounds double, double* %B, i64 %i
  %Ci = getelementptr inbounds double, double* %C, i64 %i
  %t1 = load double, double* %Bi
  %t2 = load double, double* %Ci
  %m = fmul double %t1, %t2
  store double %m, double* %Ai
  %i.next = add nsw i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  %q = phi i64 [ 0, %entry ], [ %i.next, %loop ]
  ret i64 %q
}













define i64 @count_me_1(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  %t0 = icmp sgt i64 %n, 0
  br i1 %t0, label %loop, label %return

loop:
  %i = phi i64 [ %i.next, %loop ], [ 0, %entry ]
  %Ai = getelementptr inbounds double, double* %A, i64 %i
  %Bi = getelementptr inbounds double, double* %B, i64 %i
  %Ci = getelementptr inbounds double, double* %C, i64 %i
  %t1 = load double, double* %Bi
  %t2 = load double, double* %Ci
  %m = fmul double %t1, %t2
  store double %m, double* %Ai
  %i.next = add nsw i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  %q = phi i64 [ 0, %entry ], [ %n, %loop ]
  ret i64 %q
}


















define void @count_me_2(double* nocapture %A, double* nocapture %B, double* nocapture %C) nounwind {
entry:
  br label %loop

loop:
  %i = phi i64 [ 0, %entry ], [ %i.next, %loop ]
  %i5 = add i64 %i, 5
  %Ai = getelementptr double, double* %A, i64 %i5
  %t2 = load double, double* %Ai
  %Bi = getelementptr double, double* %B, i64 %i5
  %t4 = load double, double* %Bi
  %t5 = fadd double %t2, %t4
  %Ci = getelementptr double, double* %C, i64 %i5
  store double %t5, double* %Ci
  %i10 = add i64 %i, 10
  %Ai10 = getelementptr double, double* %A, i64 %i10
  %t9 = load double, double* %Ai10
  %Bi10 = getelementptr double, double* %B, i64 %i10
  %t11 = load double, double* %Bi10
  %t12 = fsub double %t9, %t11
  %Ci10 = getelementptr double, double* %C, i64 %i10
  store double %t12, double* %Ci10
  %i.next = add i64 %i, 1
  %exitcond = icmp eq i64 %i.next, 5000
  br i1 %exitcond, label %return, label %loop

return:
  ret void
}


















define void @full_me_1(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  br label %loop

loop:
  %i = phi i64 [ 0, %entry ], [ %i.next, %loop ]
  %i5 = add i64 %i, 5
  %Ai = getelementptr double, double* %A, i64 %i5
  %t2 = load double, double* %Ai
  %Bi = getelementptr double, double* %B, i64 %i5
  %t4 = load double, double* %Bi
  %t5 = fadd double %t2, %t4
  %Ci = getelementptr double, double* %C, i64 %i5
  store double %t5, double* %Ci
  %i10 = add i64 %i, 10
  %Ai10 = getelementptr double, double* %A, i64 %i10
  %t9 = load double, double* %Ai10
  %Bi10 = getelementptr double, double* %B, i64 %i10
  %t11 = load double, double* %Bi10
  %t12 = fsub double %t9, %t11
  %Ci10 = getelementptr double, double* %C, i64 %i10
  store double %t12, double* %Ci10
  %i.next = add i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  ret void
}













declare void @use(i64)

define void @count_me_3(double* nocapture %A, double* nocapture %B, double* nocapture %C, i64 %n) nounwind {
entry:
  %t0 = icmp sgt i64 %n, 0
  br i1 %t0, label %loop, label %return

loop:
  %i = phi i64 [ %i.next, %loop ], [ 0, %entry ]
  call void @use(i64 %i)
  %Ai = getelementptr inbounds double, double* %A, i64 %i
  %Bi = getelementptr inbounds double, double* %B, i64 %i
  %Ci = getelementptr inbounds double, double* %C, i64 %i
  %t1 = load double, double* %Bi
  %t2 = load double, double* %Ci
  %m = fmul double %t1, %t2
  store double %m, double* %Ai
  %i.next = add nsw i64 %i, 1
  %exitcond = icmp eq i64 %i.next, %n
  br i1 %exitcond, label %return, label %loop

return:
  ret void
}











%struct.anon = type { i32, [4200 x i32] }

@bars = common global [123123 x %struct.anon] zeroinitializer, align 32 

define i32 @asd(i32 %n) nounwind readonly {
entry:
  %0 = icmp sgt i32 %n, 0                         
  br i1 %0, label %bb.nph14, label %bb5

bb.nph14:                                         
  %tmp18 = zext i32 %n to i64                     
  br label %bb

bb:                                               
  %indvar16 = phi i64 [ 0, %bb.nph14 ], [ %indvar.next17, %bb3 ] 
  %s.113 = phi i32 [ 0, %bb.nph14 ], [ %s.0.lcssa, %bb3 ] 
  %scevgep2526 = getelementptr [123123 x %struct.anon], [123123 x %struct.anon]* @bars, i64 0, i64 %indvar16, i32 0 
  %1 = load i32, i32* %scevgep2526, align 4            
  %2 = icmp sgt i32 %1, 0                         
  br i1 %2, label %bb.nph, label %bb3

bb.nph:                                           
  %tmp23 = sext i32 %1 to i64                     
  br label %bb1

bb1:                                              
  %indvar = phi i64 [ 0, %bb.nph ], [ %tmp19, %bb1 ] 
  %s.07 = phi i32 [ %s.113, %bb.nph ], [ %4, %bb1 ] 
  %c.08 = getelementptr [123123 x %struct.anon], [123123 x %struct.anon]* @bars, i64 0, i64 %indvar16, i32 1, i64 %indvar 
  %3 = load i32, i32* %c.08, align 4                   
  %4 = add nsw i32 %3, %s.07                      
  %tmp19 = add i64 %indvar, 1                     
  %5 = icmp sgt i64 %tmp23, %tmp19                
  br i1 %5, label %bb1, label %bb3

bb3:                                              
  %s.0.lcssa = phi i32 [ %s.113, %bb ], [ %4, %bb1 ] 
  %indvar.next17 = add i64 %indvar16, 1           
  %exitcond = icmp eq i64 %indvar.next17, %tmp18  
  br i1 %exitcond, label %bb5, label %bb

bb5:                                              
  %s.1.lcssa = phi i32 [ 0, %entry ], [ %s.0.lcssa, %bb3 ] 
  ret i32 %s.1.lcssa
}















































define void @test(float* %arg, i64 %arg1, float* nocapture %arg2, float* nocapture %arg3, float* %arg4, i64 %arg5, i64 %arg6) nounwind {
bb:
  %t = alloca float, align 4                      
  %t7 = alloca float, align 4                     
  %t8 = load float, float* %arg3                         
  %t9 = ptrtoint float* %arg to i64               
  %t10 = ptrtoint float* %arg4 to i64             
  %t11 = xor i64 %t10, %t9                        
  %t12 = and i64 %t11, 15                         
  %t13 = icmp eq i64 %t12, 0                      
  %t14 = xor i64 %arg1, 1                         
  %t15 = xor i64 %arg5, 1                         
  %t16 = or i64 %t15, %t14                        
  %t17 = trunc i64 %t16 to i32                    
  %t18 = icmp eq i32 %t17, 0                      
  br i1 %t18, label %bb19, label %bb213

bb19:                                             
  %t20 = load float, float* %arg2                        
  br label %bb21

bb21:                                             
  %t22 = phi i64 [ %t36, %bb32 ], [ 0, %bb19 ]    
  %t23 = phi float [ %t35, %bb32 ], [ %t20, %bb19 ] 
  %t24 = sub i64 %arg6, %t22                      
  %t25 = getelementptr float, float* %arg4, i64 %t22     
  %t26 = getelementptr float, float* %arg, i64 %t22      
  %t27 = icmp sgt i64 %t24, 0                     
  br i1 %t27, label %bb28, label %bb37

bb28:                                             
  %t29 = ptrtoint float* %t25 to i64              
  %t30 = and i64 %t29, 15                         
  %t31 = icmp eq i64 %t30, 0                      
  br i1 %t31, label %bb37, label %bb32

bb32:                                             
  %t33 = load float, float* %t26                         
  %t34 = fmul float %t23, %t33                    
  store float %t34, float* %t25
  %t35 = fadd float %t23, %t8                     
  %t36 = add i64 %t22, 1                          
  br label %bb21

bb37:                                             
  %t38 = fmul float %t8, 4.000000e+00             
  store float %t38, float* %t
  %t39 = fmul float %t8, 1.600000e+01             
  store float %t39, float* %t7
  %t40 = fmul float %t8, 0.000000e+00             
  %t41 = fadd float %t23, %t40                    
  %t42 = insertelement <4 x float> undef, float %t41, i32 0 
  %t43 = fadd float %t23, %t8                     
  %t44 = insertelement <4 x float> %t42, float %t43, i32 1 
  %t45 = fmul float %t8, 2.000000e+00             
  %t46 = fadd float %t23, %t45                    
  %t47 = insertelement <4 x float> %t44, float %t46, i32 2 
  %t48 = fmul float %t8, 3.000000e+00             
  %t49 = fadd float %t23, %t48                    
  %t50 = insertelement <4 x float> %t47, float %t49, i32 3 
  %t51 = call <4 x float> asm "movss $1, $0\09\0Apshufd $$0, $0, $0", "=x,*m,~{dirflag},~{fpsr},~{flags}"(float* %t) nounwind 
  %t52 = fadd <4 x float> %t50, %t51              
  %t53 = fadd <4 x float> %t52, %t51              
  %t54 = fadd <4 x float> %t53, %t51              
  %t55 = call <4 x float> asm "movss $1, $0\09\0Apshufd $$0, $0, $0", "=x,*m,~{dirflag},~{fpsr},~{flags}"(float* %t7) nounwind 
  %t56 = icmp sgt i64 %t24, 15                    
  br i1 %t13, label %bb57, label %bb118

bb57:                                             
  br i1 %t56, label %bb61, label %bb112

bb58:                                             
  %t59 = getelementptr float, float* %arg, i64 %t78      
  %t60 = getelementptr float, float* %arg4, i64 %t78     
  br label %bb112

bb61:                                             
  %t62 = add i64 %t22, 16                         
  %t63 = add i64 %t22, 4                          
  %t64 = add i64 %t22, 8                          
  %t65 = add i64 %t22, 12                         
  %t66 = add i64 %arg6, -16                       
  %t67 = sub i64 %t66, %t22                       
  br label %bb68

bb68:                                             
  %t69 = phi i64 [ 0, %bb61 ], [ %t111, %bb68 ]   
  %t70 = phi <4 x float> [ %t54, %bb61 ], [ %t107, %bb68 ] 
  %t71 = phi <4 x float> [ %t50, %bb61 ], [ %t103, %bb68 ] 
  %t72 = phi <4 x float> [ %t53, %bb61 ], [ %t108, %bb68 ] 
  %t73 = phi <4 x float> [ %t52, %bb61 ], [ %t109, %bb68 ] 
  %t74 = shl i64 %t69, 4                          
  %t75 = add i64 %t22, %t74                       
  %t76 = getelementptr float, float* %arg, i64 %t75      
  %t77 = bitcast float* %t76 to <4 x float>*      
  %t78 = add i64 %t62, %t74                       
  %t79 = add i64 %t63, %t74                       
  %t80 = getelementptr float, float* %arg, i64 %t79      
  %t81 = bitcast float* %t80 to <4 x float>*      
  %t82 = add i64 %t64, %t74                       
  %t83 = getelementptr float, float* %arg, i64 %t82      
  %t84 = bitcast float* %t83 to <4 x float>*      
  %t85 = add i64 %t65, %t74                       
  %t86 = getelementptr float, float* %arg, i64 %t85      
  %t87 = bitcast float* %t86 to <4 x float>*      
  %t88 = getelementptr float, float* %arg4, i64 %t75     
  %t89 = bitcast float* %t88 to <4 x float>*      
  %t90 = getelementptr float, float* %arg4, i64 %t79     
  %t91 = bitcast float* %t90 to <4 x float>*      
  %t92 = getelementptr float, float* %arg4, i64 %t82     
  %t93 = bitcast float* %t92 to <4 x float>*      
  %t94 = getelementptr float, float* %arg4, i64 %t85     
  %t95 = bitcast float* %t94 to <4 x float>*      
  %t96 = mul i64 %t69, -16                        
  %t97 = add i64 %t67, %t96                       
  %t98 = load <4 x float>, <4 x float>* %t77                   
  %t99 = load <4 x float>, <4 x float>* %t81                   
  %t100 = load <4 x float>, <4 x float>* %t84                  
  %t101 = load <4 x float>, <4 x float>* %t87                  
  %t102 = fmul <4 x float> %t98, %t71             
  %t103 = fadd <4 x float> %t71, %t55             
  %t104 = fmul <4 x float> %t99, %t73             
  %t105 = fmul <4 x float> %t100, %t72            
  %t106 = fmul <4 x float> %t101, %t70            
  store <4 x float> %t102, <4 x float>* %t89
  store <4 x float> %t104, <4 x float>* %t91
  store <4 x float> %t105, <4 x float>* %t93
  store <4 x float> %t106, <4 x float>* %t95
  %t107 = fadd <4 x float> %t70, %t55             
  %t108 = fadd <4 x float> %t72, %t55             
  %t109 = fadd <4 x float> %t73, %t55             
  %t110 = icmp sgt i64 %t97, 15                   
  %t111 = add i64 %t69, 1                         
  br i1 %t110, label %bb68, label %bb58

bb112:                                            
  %t113 = phi float* [ %t59, %bb58 ], [ %t26, %bb57 ] 
  %t114 = phi float* [ %t60, %bb58 ], [ %t25, %bb57 ] 
  %t115 = phi <4 x float> [ %t103, %bb58 ], [ %t50, %bb57 ] 
  %t116 = phi i64 [ %t97, %bb58 ], [ %t24, %bb57 ] 
  %t117 = call <4 x float> asm "movss $1, $0\09\0Apshufd $$0, $0, $0", "=x,*m,~{dirflag},~{fpsr},~{flags}"(float* %t) nounwind 
  br label %bb194

bb118:                                            
  br i1 %t56, label %bb122, label %bb194

bb119:                                            
  %t120 = getelementptr float, float* %arg, i64 %t145    
  %t121 = getelementptr float, float* %arg4, i64 %t145   
  br label %bb194

bb122:                                            
  %t123 = add i64 %t22, -1                        
  %t124 = getelementptr inbounds float, float* %arg, i64 %t123 
  %t125 = bitcast float* %t124 to <4 x float>*    
  %t126 = load <4 x float>, <4 x float>* %t125                 
  %t127 = add i64 %t22, 16                        
  %t128 = add i64 %t22, 3                         
  %t129 = add i64 %t22, 7                         
  %t130 = add i64 %t22, 11                        
  %t131 = add i64 %t22, 15                        
  %t132 = add i64 %t22, 4                         
  %t133 = add i64 %t22, 8                         
  %t134 = add i64 %t22, 12                        
  %t135 = add i64 %arg6, -16                      
  %t136 = sub i64 %t135, %t22                     
  br label %bb137

bb137:                                            
  %t138 = phi i64 [ 0, %bb122 ], [ %t193, %bb137 ] 
  %t139 = phi <4 x float> [ %t54, %bb122 ], [ %t189, %bb137 ] 
  %t140 = phi <4 x float> [ %t50, %bb122 ], [ %t185, %bb137 ] 
  %t141 = phi <4 x float> [ %t53, %bb122 ], [ %t190, %bb137 ] 
  %t142 = phi <4 x float> [ %t52, %bb122 ], [ %t191, %bb137 ] 
  %t143 = phi <4 x float> [ %t126, %bb122 ], [ %t175, %bb137 ] 
  %t144 = shl i64 %t138, 4                        
  %t145 = add i64 %t127, %t144                    
  %t146 = add i64 %t128, %t144                    
  %t147 = getelementptr float, float* %arg, i64 %t146    
  %t148 = bitcast float* %t147 to <4 x float>*    
  %t149 = add i64 %t129, %t144                    
  %t150 = getelementptr float, float* %arg, i64 %t149    
  %t151 = bitcast float* %t150 to <4 x float>*    
  %t152 = add i64 %t130, %t144                    
  %t153 = getelementptr float, float* %arg, i64 %t152    
  %t154 = bitcast float* %t153 to <4 x float>*    
  %t155 = add i64 %t131, %t144                    
  %t156 = getelementptr float, float* %arg, i64 %t155    
  %t157 = bitcast float* %t156 to <4 x float>*    
  %t158 = add i64 %t22, %t144                     
  %t159 = getelementptr float, float* %arg4, i64 %t158   
  %t160 = bitcast float* %t159 to <4 x float>*    
  %t161 = add i64 %t132, %t144                    
  %t162 = getelementptr float, float* %arg4, i64 %t161   
  %t163 = bitcast float* %t162 to <4 x float>*    
  %t164 = add i64 %t133, %t144                    
  %t165 = getelementptr float, float* %arg4, i64 %t164   
  %t166 = bitcast float* %t165 to <4 x float>*    
  %t167 = add i64 %t134, %t144                    
  %t168 = getelementptr float, float* %arg4, i64 %t167   
  %t169 = bitcast float* %t168 to <4 x float>*    
  %t170 = mul i64 %t138, -16                      
  %t171 = add i64 %t136, %t170                    
  %t172 = load <4 x float>, <4 x float>* %t148                 
  %t173 = load <4 x float>, <4 x float>* %t151                 
  %t174 = load <4 x float>, <4 x float>* %t154                 
  %t175 = load <4 x float>, <4 x float>* %t157                 
  %t176 = shufflevector <4 x float> %t143, <4 x float> %t172, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %t177 = shufflevector <4 x float> %t176, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %t178 = shufflevector <4 x float> %t172, <4 x float> %t173, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %t179 = shufflevector <4 x float> %t178, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %t180 = shufflevector <4 x float> %t173, <4 x float> %t174, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %t181 = shufflevector <4 x float> %t180, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %t182 = shufflevector <4 x float> %t174, <4 x float> %t175, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %t183 = shufflevector <4 x float> %t182, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %t184 = fmul <4 x float> %t177, %t140           
  %t185 = fadd <4 x float> %t140, %t55            
  %t186 = fmul <4 x float> %t179, %t142           
  %t187 = fmul <4 x float> %t181, %t141           
  %t188 = fmul <4 x float> %t183, %t139           
  store <4 x float> %t184, <4 x float>* %t160
  store <4 x float> %t186, <4 x float>* %t163
  store <4 x float> %t187, <4 x float>* %t166
  store <4 x float> %t188, <4 x float>* %t169
  %t189 = fadd <4 x float> %t139, %t55            
  %t190 = fadd <4 x float> %t141, %t55            
  %t191 = fadd <4 x float> %t142, %t55            
  %t192 = icmp sgt i64 %t171, 15                  
  %t193 = add i64 %t138, 1                        
  br i1 %t192, label %bb137, label %bb119

bb194:                                            
  %t195 = phi i64 [ %t116, %bb112 ], [ %t171, %bb119 ], [ %t24, %bb118 ] 
  %t196 = phi <4 x float> [ %t115, %bb112 ], [ %t185, %bb119 ], [ %t50, %bb118 ] 
  %t197 = phi float* [ %t114, %bb112 ], [ %t121, %bb119 ], [ %t25, %bb118 ] 
  %t198 = phi float* [ %t113, %bb112 ], [ %t120, %bb119 ], [ %t26, %bb118 ] 
  %t199 = extractelement <4 x float> %t196, i32 0 
  %t200 = icmp sgt i64 %t195, 0                   
  br i1 %t200, label %bb201, label %bb211

bb201:                                            
  %t202 = phi i64 [ %t209, %bb201 ], [ 0, %bb194 ] 
  %t203 = phi float [ %t208, %bb201 ], [ %t199, %bb194 ] 
  %t204 = getelementptr float, float* %t198, i64 %t202   
  %t205 = getelementptr float, float* %t197, i64 %t202   
  %t206 = load float, float* %t204                       
  %t207 = fmul float %t203, %t206                 
  store float %t207, float* %t205
  %t208 = fadd float %t203, %t8                   
  %t209 = add i64 %t202, 1                        
  %t210 = icmp eq i64 %t209, %t195                
  br i1 %t210, label %bb211, label %bb201

bb211:                                            
  %t212 = phi float [ %t199, %bb194 ], [ %t208, %bb201 ] 
  store float %t212, float* %arg2
  ret void

bb213:                                            
  ret void
}
