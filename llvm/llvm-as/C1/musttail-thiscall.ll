




define x86_thiscallcc void @t1(i8* %this) {
  %adj = getelementptr i8, i8* %this, i32 4
  musttail call x86_thiscallcc void @t1_callee(i8* %adj)
  ret void
}
declare x86_thiscallcc void @t1_callee(i8* %this)



define x86_thiscallcc i32 @t2(i8* %this, i32 %a) {
  %adj = getelementptr i8, i8* %this, i32 4
  %rv = musttail call x86_thiscallcc i32 @t2_callee(i8* %adj, i32 %a)
  ret i32 %rv
}
declare x86_thiscallcc i32 @t2_callee(i8* %this, i32 %a)



define x86_thiscallcc i8* @t3(i8* %this, <{ i8*, i32 }>* inalloca %args) {
  %adj = getelementptr i8, i8* %this, i32 4
  %a_ptr = getelementptr <{ i8*, i32 }>, <{ i8*, i32 }>* %args, i32 0, i32 1
  store i32 0, i32* %a_ptr
  %rv = musttail call x86_thiscallcc i8* @t3_callee(i8* %adj, <{ i8*, i32 }>* inalloca %args)
  ret i8* %rv
}
declare x86_thiscallcc i8* @t3_callee(i8* %this, <{ i8*, i32 }>* inalloca %args)
