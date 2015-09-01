





declare void @bar(i8*)

%bigVec = type [2 x double]

@var = global %bigVec zeroinitializer

define void @check_simple() minsize {















  
  









  %var = alloca i8, i32 16
  call void @bar(i8* %var)
  ret void
}

define void @check_simple_too_big() minsize {






  %var = alloca i8, i32 64
  call void @bar(i8* %var)
  ret void
}

define void @check_vfp_fold() minsize {









  
  












  %var = alloca i8, i32 16

  call void asm "", "r,~{d8},~{d9}"(i8* %var)
  call void @bar(i8* %var)

  ret void
}



define i64 @check_no_return_clobber() minsize {







  


  %var = alloca i8, i32 20
  call void @bar(i8* %var)
  ret i64 0
}

define arm_aapcs_vfpcc double @check_vfp_no_return_clobber() minsize {









  %var = alloca i8, i32 64

  %tmp = load %bigVec, %bigVec* @var
  call void @bar(i8* %var)
  store %bigVec %tmp, %bigVec* @var

  ret double 1.0
}

@dbl = global double 0.0



define void @test_fold_point(i1 %tst) minsize {


  
  




  
  
  





  
  %var = alloca i8, i32 8

  
  
  %live_val = load double, double* @dbl
  br i1 %tst, label %true, label %end
true:
  call void @bar(i8* %var)
  store double %live_val, double* @dbl
  br label %end
end:
  
  
  ret void
}

define void @test_varsize(...) minsize {

















  %var = alloca i8, i32 8
  call void @llvm.va_start(i8* %var)
  call void @bar(i8* %var)
  ret void
}

%"MyClass" = type { i8*, i32, i32, float, float, float, [2 x i8], i32, i32* }

declare float @foo()

declare void @bar3()

declare %"MyClass"* @bar2(%"MyClass"* returned, i16*, i32, float, float, i32, i32, i1 zeroext, i1 zeroext, i32)

define fastcc float @check_vfp_no_return_clobber2(i16* %r, i16* %chars, i32 %length, i1 zeroext %flag) minsize {
entry:






  %run = alloca %"MyClass", align 4
  %call = call %"MyClass"* @bar2(%"MyClass"* %run, i16* %chars, i32 %length, float 0.000000e+00, float 0.000000e+00, i32 1, i32 1, i1 zeroext false, i1 zeroext true, i32 3)
  %call1 = call float @foo()
  %cmp = icmp eq %"MyClass"* %run, null
  br i1 %cmp, label %exit, label %if.then

if.then:                                          
  call void @bar3()
  br label %exit

exit:                                             
  ret float %call1
}

declare void @llvm.va_start(i8*) nounwind
