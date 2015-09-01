

%Iter = type { i32, i32, i32 }

%frame.reverse = type { %Iter, %Iter }

declare i32 @pers(...)
declare void @llvm.stackrestore(i8*)
declare i8* @llvm.stacksave()
declare void @begin(%Iter* sret)
declare void @plus(%Iter* sret, %Iter*, i32)
declare void @reverse(%frame.reverse* inalloca align 4)

define i32 @main() personality i32 (...)* @pers {
  %temp.lvalue = alloca %Iter
  br label %blah

blah:
  %inalloca.save = call i8* @llvm.stacksave()
  %rev_args = alloca inalloca %frame.reverse, align 4
  %beg = getelementptr %frame.reverse, %frame.reverse* %rev_args, i32 0, i32 0
  %end = getelementptr %frame.reverse, %frame.reverse* %rev_args, i32 0, i32 1





  call void @begin(%Iter* sret %temp.lvalue)


  invoke void @plus(%Iter* sret %end, %Iter* %temp.lvalue, i32 4)
          to label %invoke.cont unwind label %lpad





invoke.cont:
  call void @begin(%Iter* sret %beg)




  invoke void @reverse(%frame.reverse* inalloca align 4 %rev_args)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     
  call void @llvm.stackrestore(i8* %inalloca.save)
  ret i32 0

lpad:                                             
  %lp = landingpad { i8*, i32 }
          cleanup
  unreachable
}
