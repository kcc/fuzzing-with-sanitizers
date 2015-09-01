

@.str = internal constant [14 x i8] c"%lld %d %d %d\00"

define i32 @main(i64 %arg) nounwind  {
entry:
	%tmp37 = tail call i64 @llvm.ctlz.i64( i64 %arg, i1 true )		
	%tmp47 = tail call i64 @llvm.cttz.i64( i64 %arg, i1 true )		
	%tmp57 = tail call i64 @llvm.ctpop.i64( i64 %arg )		
	%tmp38 = trunc i64 %tmp37 to i32		
	%tmp48 = trunc i64 %tmp47 to i32		
	%tmp58 = trunc i64 %tmp57 to i32		
	%tmp40 = tail call i32 (i8*, ...) @printf( i8* noalias  getelementptr ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i64 %arg, i32 %tmp38, i32 %tmp48, i32 %tmp58 ) nounwind 		
	ret i32 0
}

declare i32 @printf(i8* noalias , ...) nounwind 

declare i64 @llvm.ctlz.i64(i64, i1) nounwind readnone 
declare i64 @llvm.cttz.i64(i64, i1) nounwind readnone 
declare i64 @llvm.ctpop.i64(i64) nounwind readnone 
