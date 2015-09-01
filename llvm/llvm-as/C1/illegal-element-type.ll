

define void @foo() {
entry:
        br label %bb

bb:             
        br i1 false, label %bb26, label %bb

bb19:           
        ret void

bb26:           
        br i1 false, label %bb30, label %bb19

bb30:           
        br label %bb45

bb45:           
        %V.0 = phi <8 x i16> [ %tmp42, %bb45 ], [ zeroinitializer, %bb30 ]     
        %tmp42 = mul <8 x i16> zeroinitializer, %V.0            
        br label %bb45
}
