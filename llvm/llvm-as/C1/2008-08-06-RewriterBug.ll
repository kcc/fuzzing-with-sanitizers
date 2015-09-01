


@data = external global [400 x i64]		

define void @foo(double* noalias, double* noalias) {
	load i64, i64* getelementptr ([400 x i64], [400 x i64]* @data, i32 0, i64 200), align 4		
	load i64, i64* getelementptr ([400 x i64], [400 x i64]* @data, i32 0, i64 199), align 4		
	load i64, i64* getelementptr ([400 x i64], [400 x i64]* @data, i32 0, i64 198), align 4		
	load i64, i64* getelementptr ([400 x i64], [400 x i64]* @data, i32 0, i64 197), align 4		
	br i1 false, label %28, label %7


	load double*, double** getelementptr (double*, double** bitcast ([400 x i64]* @data to double**), i64 180), align 8		
	bitcast double* %8 to double*		
	ptrtoint double* %9 to i64		
	mul i64 %4, %3		
	add i64 0, %11		
	shl i64 %12, 3		
	sub i64 %10, %13		
	add i64 %5, 0		
	shl i64 %15, 3		
	bitcast i64 %16 to i64		
	mul i64 %6, %5		
	add i64 0, %18		
	shl i64 %19, 3		
	sub i64 %17, %20		
	add i64 0, %21		
	add i64 0, %14		
	br label %24


	phi i64 [ 0, %24 ], [ %22, %7 ]		
	phi i64 [ 0, %24 ], [ %23, %7 ]		
	add i64 %25, 24		
	br label %24


	unreachable
}
