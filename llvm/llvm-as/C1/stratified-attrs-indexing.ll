









define void @test(i1 %cond,
                  i32* %arg1, i32* %arg2, i32* %arg3, i32* %arg4, i32* %arg5,
                  i32* %arg6, i32* %arg7, i32* %arg8, i32* %arg9, i32* %arg10,
                  i32* %arg11, i32* %arg12, i32* %arg13, i32* %arg14, i32* %arg15,
                  i32* %arg16, i32* %arg17, i32* %arg18, i32* %arg19, i32* %arg20,
                  i32* %arg21, i32* %arg22, i32* %arg23, i32* %arg24, i32* %arg25,
                  i32* %arg26, i32* %arg27, i32* %arg28, i32* %arg29, i32* %arg30,
                  i32* %arg31, i32* %arg32, i32* %arg33, i32* %arg34, i32* %arg35) {

  
  
  %a = alloca i32, align 4
  %b = select i1 %cond, i32* %arg35, i32* %arg34
  %c = select i1 %cond, i32* %arg34, i32* %arg33
  %d = select i1 %cond, i32* %arg33, i32* %arg32
  %e = select i1 %cond, i32* %arg32, i32* %arg31
  %f = select i1 %cond, i32* %arg31, i32* %arg30
  %g = select i1 %cond, i32* %arg30, i32* %arg29
  %h = select i1 %cond, i32* %arg29, i32* %arg28
  %i = select i1 %cond, i32* %arg28, i32* %arg27

  ret void
}
