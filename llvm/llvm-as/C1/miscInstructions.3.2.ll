





@X = global i8 1
@_ZTIi = global i8* @X 
@_ZTId = global i8* @X 

define i32 @__gxx_personality_v0(...){
entry:
  ret i32 0
}



define void @landingpadInstr1(i1 %cond1, <2 x i1> %cond2, <2 x i8> %x1, <2 x i8> %x2){
entry:

  %res = landingpad { i8*, i32 } personality i32 (...)* @__gxx_personality_v0 

  catch i8** @_ZTIi
  ret void
}



define void @landingpadInstr2(i1 %cond1, <2 x i1> %cond2, <2 x i8> %x1, <2 x i8> %x2){
entry:

  %res = landingpad { i8*, i32 } personality i32 (...)* @__gxx_personality_v0

  cleanup
  ret void
}



define void @landingpadInstr3(i1 %cond1, <2 x i1> %cond2, <2 x i8> %x1, <2 x i8> %x2){
entry:

  %res = landingpad { i8*, i32 } personality i32 (...)* @__gxx_personality_v0

  catch i8** @_ZTIi

  filter [1 x i8**] [i8** @_ZTId]
  ret void
}

define void @phiInstr(){
LoopHeader: 
  %x = add i32 0, 0
  br label %Loop
Loop:

  %indvar = phi i32 [ 0, %LoopHeader ], [ %nextindvar, %Loop ]
  %nextindvar = add i32 %indvar, 1
  br label %Loop
  ret void
}

define void @selectInstr(i1 %cond1, <2 x i1> %cond2, <2 x i8> %x1, <2 x i8> %x2){
entry:

  %res1 = select i1 %cond1, i8 1, i8 0

  %res2 = select <2 x i1> %cond2, <2 x i8> %x1, <2 x i8> %x2

  ret void
}

define void @icmp(i32 %x1, i32 %x2, i32* %ptr1, i32* %ptr2, <2 x i32> %vec1, <2 x i32> %vec2){
entry:

  %res1 = icmp eq i32 %x1, %x2
  

  %res2 = icmp ne i32 %x1, %x2
  

  %res3 = icmp ugt i32 %x1, %x2
  

  %res4 = icmp uge i32 %x1, %x2
  

  %res5 = icmp ult i32 %x1, %x2
  

  %res6 = icmp ule i32 %x1, %x2
  

  %res7 = icmp sgt i32 %x1, %x2
  

  %res8 = icmp sge i32 %x1, %x2
  

  %res9 = icmp slt i32 %x1, %x2
  

  %res10 = icmp sle i32 %x1, %x2
  

  %res11 = icmp eq i32* %ptr1, %ptr2
  

  %res12 = icmp eq <2 x i32> %vec1, %vec2
  
  ret void
}


define void @fcmp(float %x1, float %x2, <2 x float> %vec1, <2 x float> %vec2){
entry:

  %res1 = fcmp oeq float %x1, %x2
  

  %res2 = fcmp one float %x1, %x2
  

  %res3 = fcmp ugt float %x1, %x2
  

  %res4 = fcmp uge float %x1, %x2
  

  %res5 = fcmp ult float %x1, %x2
  

  %res6 = fcmp ule float %x1, %x2
  

  %res7 = fcmp ogt float %x1, %x2
  

  %res8 = fcmp oge float %x1, %x2
  

  %res9 = fcmp olt float %x1, %x2
  

  %res10 = fcmp ole float %x1, %x2
  

  %res11 = fcmp ord float %x1, %x2
  

  %res12 = fcmp ueq float %x1, %x2
  

  %res13 = fcmp une float %x1, %x2
  

  %res14 = fcmp uno float %x1, %x2
  

  %res15 = fcmp true float %x1, %x2
  

  %res16 = fcmp false float %x1, %x2
  

  %res17 = fcmp oeq <2 x float> %vec1, %vec2
  
  ret void
}

declare i32 @printf(i8* noalias nocapture, ...)

define void @call(i32 %x, i8* %msg ){
entry:


  %res1 = call i32 @test(i32 %x)
  

  %res2 = tail call i32 @test(i32 %x)
  

  %res3 = call i32 (i8*, ...) @printf(i8* %msg, i32 12, i8 42)
  
  ret void
}

define i32 @test(i32 %x){
entry:

  ret i32 %x
}
