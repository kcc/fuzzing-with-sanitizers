






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"











define void @VerifyDiagnosticConsumerTest() unnamed_addr nounwind uwtable align 2 {
bb:
  %tmp3 = call i8* @getCharData() nounwind
  %tmp4 = call i8* @getCharData() nounwind
  %tmp5 = ptrtoint i8* %tmp4 to i64
  %tmp6 = ptrtoint i8* %tmp3 to i64
  %tmp7 = sub i64 %tmp5, %tmp6
  br i1 undef, label %bb87, label %.preheader

.preheader:                                       
  br i1 undef, label %_ZNK4llvm9StringRef4findEcm.exit42.thread, label %bb10

bb10:                                             
  br i1 undef, label %_ZNK4llvm9StringRef4findEcm.exit42, label %.preheader

_ZNK4llvm9StringRef4findEcm.exit42:               
  br i1 undef, label %_ZNK4llvm9StringRef4findEcm.exit42.thread, label %.lr.ph

_ZNK4llvm9StringRef4findEcm.exit42.thread:        
  unreachable

.lr.ph:                                           
  br label %bb36

_ZNK4llvm9StringRef4findEcm.exit.loopexit:        
  %tmp21 = icmp eq i64 %i.0.i, -1
  br i1 %tmp21, label %_ZNK4llvm9StringRef4findEcm.exit._crit_edge, label %bb36

_ZNK4llvm9StringRef4findEcm.exit._crit_edge:      
  unreachable

bb36:                                             
  %loc.063 = phi i64 [ undef, %.lr.ph ], [ %i.0.i, %_ZNK4llvm9StringRef4findEcm.exit.loopexit ]
  switch i8 undef, label %bb57 [
    i8 10, label %bb48
    i8 13, label %bb48
  ]

bb48:                                             
  br label %bb58

bb57:                                             
  br label %bb58

bb58:                                             
  %tmp59 = icmp ugt i64 %tmp7, undef
  %tmp60 = select i1 %tmp59, i64 undef, i64 %tmp7
  br label %bb61

bb61:                                             
  %i.0.i = phi i64 [ %tmp60, %bb58 ], [ %tmp67, %bb63 ]
  %tmp62 = icmp eq i64 %i.0.i, %tmp7
  br i1 %tmp62, label %_ZNK4llvm9StringRef4findEcm.exit._crit_edge, label %bb63

bb63:                                             
  %tmp64 = getelementptr inbounds i8, i8* %tmp3, i64 %i.0.i
  %tmp65 = load i8, i8* %tmp64, align 1
  %tmp67 = add i64 %i.0.i, 1
  br i1 undef, label %_ZNK4llvm9StringRef4findEcm.exit.loopexit, label %bb61

bb87:                                             
  ret void
}

declare i8* @getCharData()
