







@X = global i32 0

@Y = global i32 1

@Z = global [2 x i32*] [i32* @X, i32* @Y]


define void @SimpleConstants(i32 %x) {
entry:


  store i32 %x, i32* null
 


  %res1 = fcmp true float 1.0, 1.0

  %res2 = fcmp false float 1.0, 1.0



  %res3 = add i32 0, 0



  %res4 = fadd float 0.0, 0.0

  ret void
}

define void @ComplexConstants(<2 x i32> %x){
entry:


  %res1 = extractvalue {i32, float} {i32 1, float 2.0}, 0
  


  %res2 = extractvalue [2 x i32] [i32 1, i32 2], 0
  


  %res3 = add <2 x i32> <i32 1, i32 1>, <i32 1, i32 1>
  


  %res4 = add <2 x i32> %x, zeroinitializer
  
  ret void
}

define void @OtherConstants(i32 %x, i8* %Addr){
entry:
  
  
  %res1 = add i32 %x, undef
  
  
  
  %poison = sub nuw i32 0, 1
  
  
  
  %res2 = icmp eq i8* blockaddress(@OtherConstants, %Next), null
  br label %Next
  Next: 
  ret void
}

define void @OtherConstants2(){
entry:
  
  trunc i32 1 to i8
  
  zext i8 1 to i32
  
  sext i8 1 to i32
  
  fptrunc double 1.0 to float
  
  fpext float 1.0 to double
  
  fptosi float 1.0 to i32
  
  uitofp i32 1 to float
  
  sitofp i32 -1 to float
  
  ptrtoint i32* @X to i32
  
  inttoptr i8 1 to i8*
  
  bitcast i32 1 to <2 x i16>
  
  getelementptr i32, i32* @X, i32 0
  
  getelementptr inbounds i32, i32* @X, i32 0
  
  select i1 true ,i32 1, i32 0
  
  icmp eq i32 1, 0
  
  fcmp oeq float 1.0, 0.0
  
  extractelement <2 x i32> <i32 1, i32 1>, i32 1
  
  insertelement <2 x i32> <i32 1, i32 1>, i32 0, i32 1
  
  shufflevector <2 x i32> <i32 1, i32 1>, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  
  extractvalue { i32, float } { i32 1, float 2.0 }, 0
  
  insertvalue { i32, float } { i32 1, float 2.0 }, i32 0, 0
  
  ret void
}