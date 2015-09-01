







@code = global [5 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1], align 4 
@bar.l = internal constant [2 x i8*] [i8* blockaddress(@bar, %lab0), i8* blockaddress(@bar, %end)] 

define void @foo(i32 %x) nounwind readnone {
entry:
  %b = alloca i32, align 4                        
  store volatile i32 -1, i32* %b
  ret void
}

define void @bar(i32* nocapture %pc) nounwind readonly {
entry:
  br label %indirectgoto

lab0:                                             
  %indvar.next = add i32 %indvar, 1               
  br label %indirectgoto

end:                                              
  ret void

indirectgoto:                                     
  %indvar = phi i32 [ %indvar.next, %lab0 ], [ 0, %entry ] 
  %pc.addr.0 = getelementptr i32, i32* %pc, i32 %indvar 
  %tmp1.pn = load i32, i32* %pc.addr.0                 
  %indirect.goto.dest.in = getelementptr inbounds [2 x i8*], [2 x i8*]* @bar.l, i32 0, i32 %tmp1.pn 
  %indirect.goto.dest = load i8*, i8** %indirect.goto.dest.in 
  indirectbr i8* %indirect.goto.dest, [label %lab0, label %end]
}

define i32 @main() nounwind readnone {
entry:
  ret i32 0
}
