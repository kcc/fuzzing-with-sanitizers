

@mode_table = global [4 x i32] zeroinitializer          



define i8 @f() {
entry:
  tail call i32 @fegetround( )          
  br label %bb

bb:             
  %mode.0 = phi i8 [ 0, %entry ], [ %indvar.next, %bb4 ]                
  zext i8 %mode.0 to i32                
  getelementptr [4 x i32], [4 x i32]* @mode_table, i32 0, i32 %1           
  load i32, i32* %2, align 4         
  icmp eq i32 %3, %0            
  br i1 %4, label %bb1, label %bb2

bb1:            
  ret i8 %mode.0

bb2:            
  icmp eq i8 %mode.0, 1         
  br i1 %5, label %bb5, label %bb4

bb4:            
  %indvar.next = add i8 %mode.0, 1              
  br label %bb

bb5:            
  tail call void @raise_exception( ) noreturn 
  unreachable
}

declare i32 @fegetround()

declare void @raise_exception() noreturn 
