



define void @foo(<4 x float>* %P) {
        %T = load <4 x float>, <4 x float>* %P               
        %S = fadd <4 x float> zeroinitializer, %T                
        store <4 x float> %S, <4 x float>* %P
        ret void
}



define void @bar(<4 x i32>* %P) {
        %T = load <4 x i32>, <4 x i32>* %P         
        %S = sub <4 x i32> zeroinitializer, %T          
        store <4 x i32> %S, <4 x i32>* %P
        ret void
}






define void @untyped_zero(<4 x i32>* %p) {
entry:
  store <4 x i32> zeroinitializer, <4 x i32>* %p, align 16
  ret void
}
