


%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@buf = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16




define i32 @foo(i32 %size) nounwind uwtable safestack {
entry:
  
  
  

  
  
  
  
  
  
  
  
  
  
  %a = alloca i32, i32 %size

  
  
  
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @buf, i32 0, i32 0)) returns_twice

  
  call void @funcall(i32* %a)
  ret i32 0
}

declare i32 @_setjmp(%struct.__jmp_buf_tag*)
declare void @funcall(i32*)
