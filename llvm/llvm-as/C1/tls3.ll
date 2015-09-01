






%struct.anon = type { i32, i32 }
@teste = internal thread_local global %struct.anon zeroinitializer 

define i32 @main() {
entry:
  %tmp2 = load i32, i32* getelementptr (%struct.anon, %struct.anon* @teste, i32 0, i32 0), align 8 
  ret i32 %tmp2
}



















