














@compl = linkonce global [20 x i64] zeroinitializer, align 64 

declare void @killcommon(i32* noalias)

define void @reset(<2 x float>* noalias %garbage1) {
"file complex.c, line 27, bb1":
  %changed = alloca i32, align 4                  
  br label %"file complex.c, line 27, bb13"

"file complex.c, line 27, bb13":                  
  store i32 0, i32* %changed, align 4
  %r2 = getelementptr float, float* bitcast ([20 x i64]* @compl to float*), i64 32 
  %r3 = bitcast float* %r2 to <2 x float>*        
  %r4 = load <2 x float>, <2 x float>* %r3, align 4            
  call void @killcommon(i32* %changed)
  br label %"file complex.c, line 34, bb4"

"file complex.c, line 34, bb4":                   
  %r5 = load i32, i32* %changed, align 4               
  %r6 = icmp eq i32 %r5, 0                        
  %r7 = zext i1 %r6 to i32                        
  %r8 = icmp ne i32 %r7, 0                        
  br i1 %r8, label %"file complex.c, line 34, bb7", label %"file complex.c, line 27, bb5"

"file complex.c, line 27, bb5":                   
  br label %"file complex.c, line 35, bb6"

"file complex.c, line 35, bb6":                   
  %r11 = ptrtoint <2 x float>* %garbage1 to i64   
  %r12 = inttoptr i64 %r11 to <2 x float>*        
  store <2 x float> %r4, <2 x float>* %r12, align 4
  br label %"file complex.c, line 34, bb7"

"file complex.c, line 34, bb7":                   
  ret void
}
