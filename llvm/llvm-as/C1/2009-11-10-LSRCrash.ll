

define void @_ZN4llvm20SelectionDAGLowering14visitInlineAsmENS_8CallSiteE() nounwind ssp align 2 {
entry:
  br i1 undef, label %bb3.i, label %bb4.i

bb3.i:                                            
  unreachable

bb4.i:                                            
  br i1 undef, label %bb.i.i, label %_ZNK4llvm8CallSite14getCalledValueEv.exit

bb.i.i:                                           
  unreachable

_ZNK4llvm8CallSite14getCalledValueEv.exit:        
  br i1 undef, label %_ZN4llvm4castINS_9InlineAsmEPNS_5ValueEEENS_10cast_rettyIT_T0_E8ret_typeERKS6_.exit, label %bb6.i

bb6.i:                                            
  unreachable

_ZN4llvm4castINS_9InlineAsmEPNS_5ValueEEENS_10cast_rettyIT_T0_E8ret_typeERKS6_.exit: 
  br i1 undef, label %_ZL25hasInlineAsmMemConstraintRSt6vectorIN4llvm9InlineAsm14ConstraintInfoESaIS2_EERKNS0_14TargetLoweringE.exit, label %bb.i

bb.i:                                             
  br label %_ZL25hasInlineAsmMemConstraintRSt6vectorIN4llvm9InlineAsm14ConstraintInfoESaIS2_EERKNS0_14TargetLoweringE.exit

_ZL25hasInlineAsmMemConstraintRSt6vectorIN4llvm9InlineAsm14ConstraintInfoESaIS2_EERKNS0_14TargetLoweringE.exit: 
  br i1 undef, label %bb50, label %bb27

bb27:                                             
  br i1 undef, label %bb1.i727, label %bb.i.i726

bb.i.i726:                                        
  unreachable

bb1.i727:                                         
  unreachable

bb50:                                             
  br label %bb107

bb51:                                             
  br i1 undef, label %bb105, label %bb106

bb105:                                            
  unreachable

bb106:                                            
  br label %bb107

bb107:                                            
  br i1 undef, label %bb108, label %bb51

bb108:                                            
  br i1 undef, label %bb242, label %bb114

bb114:                                            
  br i1 undef, label %bb141, label %bb116

bb116:                                            
  br i1 undef, label %bb120, label %bb121

bb120:                                            
  unreachable

bb121:                                            
  unreachable

bb141:                                            
  br i1 undef, label %bb182, label %bb143

bb143:                                            
  br label %bb157

bb144:                                            
  switch i32 undef, label %bb155 [
    i32 2, label %bb153
    i32 6, label %bb153
    i32 4, label %bb153
  ]

bb153:                                            
  %indvar.next = add i32 %indvar, 1               
  br label %bb157

bb155:                                            
  unreachable

bb157:                                            
  %indvar = phi i32 [ %indvar.next, %bb153 ], [ 0, %bb143 ] 
  %0 = icmp eq i32 undef, %indvar                 
  switch i16 undef, label %bb6.i841 [
    i16 9, label %_ZN4llvm4castINS_14ConstantSDNodeENS_7SDValueEEENS_10cast_rettyIT_T0_E8ret_typeERKS5_.exit
    i16 26, label %_ZN4llvm4castINS_14ConstantSDNodeENS_7SDValueEEENS_10cast_rettyIT_T0_E8ret_typeERKS5_.exit
  ]

bb6.i841:                                         
  unreachable

_ZN4llvm4castINS_14ConstantSDNodeENS_7SDValueEEENS_10cast_rettyIT_T0_E8ret_typeERKS5_.exit: 
  br i1 undef, label %bb.i.i.i843, label %bb1.i.i.i844

bb.i.i.i843:                                      
  br i1 %0, label %bb158, label %bb144

bb1.i.i.i844:                                     
  unreachable

bb158:                                            
  br i1 undef, label %bb177, label %bb176

bb176:                                            
  unreachable

bb177:                                            
  br i1 undef, label %bb179, label %bb178

bb178:                                            
  unreachable

bb179:                                            
  unreachable

bb182:                                            
  unreachable

bb242:                                            
  unreachable
}
