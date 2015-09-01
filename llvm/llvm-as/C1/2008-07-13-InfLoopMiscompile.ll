



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
@g_37 = common global i32 0		
@.str = internal constant [4 x i8] c"%d\0A\00"		

define i32 @main() nounwind  {
entry:
	%l = load i32, i32* @g_37, align 4		
	%cmpa = icmp ne i32 %l, 0		
	br i1 %cmpa, label %func_1.exit, label %mooseblock

mooseblock:		
	%cmpb = icmp eq i1 %cmpa, false		
	br i1 %cmpb, label %monkeyblock, label %beeblock

monkeyblock:		
	br i1 %cmpb, label %cowblock, label %monkeyblock

beeblock:		
	br i1 %cmpa, label %cowblock, label %beeblock

cowblock:		
	%cowval = phi i32 [ 2, %beeblock ], [ 0, %monkeyblock ]		
	br label %func_1.exit

func_1.exit:		
	%outval = phi i32 [ %cowval, %cowblock ], [ 1, %entry ]		
	%pout = tail call i32 (i8*, ...) @printf( i8* noalias  getelementptr ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %outval ) nounwind 		
	ret i32 0
}

declare i32 @printf(i8*, ...) nounwind 
