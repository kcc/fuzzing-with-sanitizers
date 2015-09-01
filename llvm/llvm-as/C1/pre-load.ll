
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

define i32 @test1(i32* %p, i1 %C) {

block1:
	br i1 %C, label %block2, label %block3

block2:
 br label %block4



block3:
  store i32 0, i32* %p
  br label %block4

block4:
  %PRE = load i32, i32* %p
  ret i32 %PRE



}


define i32 @test2(i32* %p, i32* %q, i1 %C) {

block1:
	br i1 %C, label %block2, label %block3

block2:
 br label %block4



block3:
  store i32 0, i32* %p
  br label %block4

block4:
  %P2 = phi i32* [%p, %block3], [%q, %block2]
  %PRE = load i32, i32* %P2
  ret i32 %PRE




}


define i32 @test3(i32* %p, i32* %q, i32** %Hack, i1 %C) {

block1:
  %B = getelementptr i32, i32* %q, i32 1
  store i32* %B, i32** %Hack
	br i1 %C, label %block2, label %block3

block2:
 br label %block4



block3:
  %A = getelementptr i32, i32* %p, i32 1
  store i32 0, i32* %A
  br label %block4

block4:
  %P2 = phi i32* [%p, %block3], [%q, %block2]
  %P3 = getelementptr i32, i32* %P2, i32 1
  %PRE = load i32, i32* %P3
  ret i32 %PRE




}



define i32 @test4(i32* %p, i32* %q, i32** %Hack, i1 %C) {

block1:
	br i1 %C, label %block2, label %block3

block2:
 br label %block4




block3:
  %B = getelementptr i32, i32* %q, i32 1
  store i32* %B, i32** %Hack

  %A = getelementptr i32, i32* %p, i32 1
  store i32 0, i32* %A
  br label %block4

block4:
  %P2 = phi i32* [%p, %block3], [%q, %block2]
  %P3 = getelementptr i32, i32* %P2, i32 1
  %PRE = load i32, i32* %P3
  ret i32 %PRE




}







define void @test5(i32 %N, double* nocapture %G) nounwind ssp {

entry:
  %0 = add i32 %N, -1           
  %1 = icmp sgt i32 %0, 0       
  br i1 %1, label %bb.nph, label %return

bb.nph:                         
  %tmp = zext i32 %0 to i64     
  br label %bb





bb:             
  %indvar = phi i64 [ 0, %bb.nph ], [ %tmp6, %bb ]
  %tmp6 = add i64 %indvar, 1                    
  %scevgep = getelementptr double, double* %G, i64 %tmp6
  %scevgep7 = getelementptr double, double* %G, i64 %indvar
  %2 = load double, double* %scevgep7, align 8
  %3 = load double, double* %scevgep, align 8 
  %4 = fadd double %2, %3             
  store double %4, double* %scevgep7, align 8
  %exitcond = icmp eq i64 %tmp6, %tmp 
  br i1 %exitcond, label %return, label %bb







return:                               
  ret void
}







define void @test6(i32 %N, double* nocapture %G) nounwind ssp {

entry:
  %0 = add i32 %N, -1           
  %1 = icmp sgt i32 %0, 0       
  br i1 %1, label %bb.nph, label %return

bb.nph:                         
  %tmp = zext i32 %0 to i64     
  br label %bb





bb:             
  %indvar = phi i64 [ 0, %bb.nph ], [ %tmp6, %bb ]
  %tmp6 = add i64 %indvar, 1                    
  %scevgep = getelementptr double, double* %G, i64 %tmp6
  %scevgep7 = getelementptr double, double* %G, i64 %indvar
  %2 = load double, double* %scevgep7, align 8
  %3 = load double, double* %scevgep, align 8 
  %4 = fadd double %2, %3             
  store double %4, double* %scevgep, align 8
  %exitcond = icmp eq i64 %tmp6, %tmp 
  br i1 %exitcond, label %return, label %bb







return:                               
  ret void
}









define void @test7(i32 %N, double* nocapture %G) nounwind ssp {
entry:
  %0 = getelementptr inbounds double, double* %G, i64 1   
  store double 1.000000e+00, double* %0, align 8
  %1 = add i32 %N, -1                             
  %2 = icmp sgt i32 %1, 1                         
  br i1 %2, label %bb.nph, label %return

bb.nph:                                           
  %tmp = sext i32 %1 to i64                       
  %tmp7 = add i64 %tmp, -1                        
  br label %bb

bb:                                               
  %indvar = phi i64 [ 0, %bb.nph ], [ %tmp9, %bb ] 
  %tmp8 = add i64 %indvar, 2                      
  %scevgep = getelementptr double, double* %G, i64 %tmp8  
  %tmp9 = add i64 %indvar, 1                      
  %scevgep10 = getelementptr double, double* %G, i64 %tmp9 
  %3 = load double, double* %scevgep10, align 8           
  %4 = load double, double* %scevgep, align 8             
  %5 = fadd double %3, %4                         
  store double %5, double* %scevgep, align 8
  %exitcond = icmp eq i64 %tmp9, %tmp7            
  br i1 %exitcond, label %return, label %bb







return:                                           
  ret void
}



define i32 @test8(i32* %p, i32* %q, i32** %Hack, i1 %C) {

block1:
	br i1 %C, label %block2, label %block3

block2:
 br label %block4




block3:
  %A = getelementptr i32, i32* %p, i32 1
  store i32 0, i32* %A
  br label %block4

block4:
  %P2 = phi i32* [%p, %block3], [%q, %block2]
  %P3 = getelementptr i32, i32* %P2, i32 1
  %PRE = load i32, i32* %P3
  ret i32 %PRE




}








define void @test9(i32 %N, double* nocapture %G) nounwind ssp {
entry:
  add i32 0, 0
  %1 = add i32 %N, -1                             
  %2 = icmp sgt i32 %1, 1                         
  br i1 %2, label %bb.nph, label %return

bb.nph:                                           
  %tmp = sext i32 %1 to i64                       
  %tmp7 = add i64 %tmp, -1                        
  br label %bb





bb:                                               
  %indvar = phi i64 [ 0, %bb.nph ], [ %tmp9, %bb ] 
  %tmp8 = add i64 %indvar, 2                      
  %scevgep = getelementptr double, double* %G, i64 %tmp8  
  %tmp9 = add i64 %indvar, 1                      
  %scevgep10 = getelementptr double, double* %G, i64 %tmp9 
  %3 = load double, double* %scevgep10, align 8           
  %4 = load double, double* %scevgep, align 8             
  %5 = fadd double %3, %4                         
  store double %5, double* %scevgep, align 8
  %exitcond = icmp eq i64 %tmp9, %tmp7            
  br i1 %exitcond, label %return, label %bb







return:                                           
  ret void
}








define void @test10(i32 %N, double* nocapture %G) nounwind ssp {
entry:
  %0 = add i32 %N, -1
  %1 = icmp sgt i32 %0, 1
  br i1 %1, label %bb.nph, label %return

bb.nph:
  %tmp = sext i32 %0 to i64
  %tmp8 = add i64 %tmp, -1
  br label %bb






bb:
  %indvar = phi i64 [ 0, %bb.nph ], [ %tmp11, %bb ]
  %scevgep = getelementptr double, double* %G, i64 %indvar
  %tmp9 = add i64 %indvar, 2
  %scevgep10 = getelementptr double, double* %G, i64 %tmp9
  %tmp11 = add i64 %indvar, 1
  %scevgep12 = getelementptr double, double* %G, i64 %tmp11
  %2 = load double, double* %scevgep12, align 8
  %3 = load double, double* %scevgep10, align 8
  %4 = fadd double %2, %3
  %5 = load double, double* %scevgep, align 8
  %6 = fadd double %4, %5
  store double %6, double* %scevgep12, align 8
  %exitcond = icmp eq i64 %tmp11, %tmp8
  br i1 %exitcond, label %return, label %bb







return:
  ret void
}


define i32 @test11(i32* %p, i1 %C, i32 %N) {

block1:
        br i1 %C, label %block2, label %block3

block2:
 %cond = icmp sgt i32 %N, 1
 br i1 %cond, label %block4, label %block5



block3:
  store i32 0, i32* %p
  br label %block4

block4:
  %PRE = load i32, i32* %p
  br label %block5

block5:
  %ret = phi i32 [ 0, %block2 ], [ %PRE, %block4 ]
  ret i32 %ret


}
