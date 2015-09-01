













%0 = type { %0*, %0* }

@0 = private constant [13 x i8] c"Result: %lu\0A\00" 
@1 = internal constant [5 x i8] c"Huh?\00"        

define i32 @main(i32 %arg, i8** nocapture %arg1) nounwind {
bb:
  %tmp = alloca %0, align 8                       
  %tmp2 = bitcast %0* %tmp to i8*                 
  call void @llvm.memset.p0i8.i64(i8* %tmp2, i8 0, i64 16, i32 8, i1 false) nounwind
  %tmp3 = getelementptr inbounds %0, %0* %tmp, i64 0, i32 0 
  store %0* %tmp, %0** %tmp3
  %tmp4 = getelementptr inbounds %0, %0* %tmp, i64 0, i32 1 
  store %0* %tmp, %0** %tmp4
  %tmp5 = call noalias i8* @_Znwm(i64 24) nounwind 
  %tmp6 = getelementptr inbounds i8, i8* %tmp5, i64 16 
  %tmp7 = icmp eq i8* %tmp6, null                 
  br i1 %tmp7, label %bb10, label %bb8

bb8:                                              
  %tmp9 = bitcast i8* %tmp6 to i32*               
  store i32 1, i32* %tmp9
  br label %bb10

bb10:                                             
  %tmp11 = bitcast i8* %tmp5 to %0*               
  call void @_ZNSt15_List_node_base4hookEPS_(%0* %tmp11, %0* %tmp) nounwind
  %tmp12 = load %0*, %0** %tmp3                        
  %tmp13 = icmp eq %0* %tmp12, %tmp               
  br i1 %tmp13, label %bb14, label %bb16

bb14:                                             
  %tmp15 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i64 0, i64 0))
  br label %bb35

bb16:                                             
  %tmp17 = phi i64 [ %tmp22, %bb16 ], [ 0, %bb10 ] 
  %tmp18 = phi %0* [ %tmp20, %bb16 ], [ %tmp12, %bb10 ] 
  %tmp19 = getelementptr inbounds %0, %0* %tmp18, i64 0, i32 0 
  %tmp20 = load %0*, %0** %tmp19                       
  %tmp21 = icmp eq %0* %tmp20, %tmp               
  %tmp22 = add i64 %tmp17, 1                      
  br i1 %tmp21, label %bb23, label %bb16

bb23:                                             
  %tmp24 = udiv i64 100, %tmp22                   
  br label %bb25

bb25:                                             
  %tmp26 = phi i64 [ %tmp31, %bb25 ], [ 0, %bb23 ] 
  %tmp27 = phi %0* [ %tmp29, %bb25 ], [ %tmp12, %bb23 ] 
  %tmp28 = getelementptr inbounds %0, %0* %tmp27, i64 0, i32 0 
  %tmp29 = load %0*, %0** %tmp28                       
  %tmp30 = icmp eq %0* %tmp29, %tmp               
  %tmp31 = add i64 %tmp26, 1                      
  br i1 %tmp30, label %bb32, label %bb25

bb32:                                             
  %tmp33 = mul i64 %tmp31, %tmp24                 
  %tmp34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @0, i64 0, i64 0), i64 %tmp33) nounwind
  br label %bb35

bb35:                                             
  %tmp36 = load %0*, %0** %tmp3                        
  %tmp37 = icmp eq %0* %tmp36, %tmp               
  br i1 %tmp37, label %bb44, label %bb38

bb38:                                             
  %tmp39 = phi %0* [ %tmp41, %bb38 ], [ %tmp36, %bb35 ] 
  %tmp40 = getelementptr inbounds %0, %0* %tmp39, i64 0, i32 0 
  %tmp41 = load %0*, %0** %tmp40                       
  %tmp42 = bitcast %0* %tmp39 to i8*              
  call void @_ZdlPv(i8* %tmp42) nounwind
  %tmp43 = icmp eq %0* %tmp41, %tmp               
  br i1 %tmp43, label %bb44, label %bb38

bb44:                                             
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind

declare void @_ZNSt15_List_node_base4hookEPS_(%0*, %0*)

declare noalias i8* @_Znwm(i64)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @_ZdlPv(i8*) nounwind

declare i32 @puts(i8* nocapture) nounwind
