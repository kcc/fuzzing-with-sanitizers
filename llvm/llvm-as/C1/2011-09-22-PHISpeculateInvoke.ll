







declare void @extern_fn(i32*)
declare i32 @extern_fn2(i32)
declare i32 @__gcc_personality_v0(i32, i64, i8*, i8*)

define void @odd_fn(i1) noinline personality i32 (i32, i64, i8*, i8*)* @__gcc_personality_v0 {
  %retptr1 = alloca i32
  %retptr2 = alloca i32
  br i1 %0, label %then, label %else

then:                                             
  invoke void @extern_fn(i32* %retptr1)
          to label %join unwind label %unwind

else:                                             
  store i32 3, i32* %retptr2
  br label %join

join:                                             
  %storemerge.in = phi i32* [ %retptr2, %else ], [ %retptr1, %then ]
  %storemerge = load i32, i32* %storemerge.in
  %x3 = call i32 @extern_fn2(i32 %storemerge)
  ret void

unwind:                                           
  %info = landingpad { i8*, i32 }
          cleanup
  call void @extern_fn(i32* null)
  unreachable
}



