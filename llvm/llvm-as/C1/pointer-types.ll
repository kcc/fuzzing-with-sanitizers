












define void @test0(i1 %tobool, void ()* %b1) {
entry:
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  br label %if.end

if.end:                                           
  %otherBlock = phi void ()* [ %b1, %if.then ], [ null, %entry ]
  call void @use_fptr(void ()* %otherBlock)
  %tmp11 = bitcast void ()* %otherBlock to i8*
  call void @objc_release(i8* %tmp11) nounwind
  ret void
}

declare void @use_fptr(void ()*)
declare void @objc_release(i8*)

