





define i32 @condbr(i1 %cond){
entry:

  br i1 %cond, label %TrueLabel, label %FalseLabel
  
  TrueLabel:
  ret i32 1
  
  FalseLabel:
  ret i32 0
}

define i32 @uncondbr(){
entry:

  br label %uncondLabel
  
  uncondLabel:
  ret i32 1
}

define i32 @indirectbr(i8* %Addr){
entry:

  indirectbr i8* %Addr, [ label %bb1, label %bb2 ]
  
  bb1:
  ret i32 1
  
  bb2:
  ret i32 0
}

define void @unreachable(){
entry:

  unreachable
  
  ret void
}

define i32 @retInstr(){
entry:

  ret i32 1 
}

define void @retInstr2(){
entry:

  ret void
}

define i32 @switchInstr(i32 %x){
entry:

  switch i32 %x, label %label3 [

  i32 1, label %label1

  i32 2, label %label2
  ]
label1:
  ret i32 1
label2:
  ret i32 2
label3:
  ret i32 0
}

