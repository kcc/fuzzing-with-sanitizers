












global i63 u0x00001     
global i63  s0x012312   

@t2 = global i33* @t1                             
@t3 = global i33* bitcast (i33* @t1 to i33*)       
@t1 = global i33 4                                
@t4 = global i33** bitcast (i33** @t3 to i33**)     
@t5 = global i33** @t3                           
@t6 = global i33*** @t4
@t7 = global float* inttoptr (i32 12345678 to float*) 
@t9 = global i33 fptosi (float sitofp (i33 8 to float) to i33) 


global i32* bitcast (float* @4 to i32*)   
global float* @4                       
global float 0.0






@array  = constant [2 x i33] [ i33 12, i33 52 ]
@arrayPtr = global i33* getelementptr ([2 x i33], [2 x i33]* @array, i64 0, i64 0)    
@arrayPtr5 = global i33** getelementptr (i33*, i33** @arrayPtr, i64 5)    

@somestr = constant [11x i8] c"hello world"
@char5  = global i8* getelementptr([11x i8], [11x i8]* @somestr, i64 0, i64 5)


@char8a = global i33* bitcast (i8* getelementptr([11x i8], [11x i8]* @somestr, i64 0, i64 8) to i33*)


@char8b = global i8* getelementptr([11x i8], [11x i8]* @somestr, i64 sext (i8 0 to i64), i64 sext (i8 8 to i64))





%SType  = type { i33 , {float, {i8} }, i64 } 
%SAType = type { i33 , {[2x float], i64} } 

@S1 = global %SType* null			
@S2c = constant %SType { i33 1, {float,{i8}} {float 2.0, {i8} {i8 3}}, i64 4}

@S3c = constant %SAType { i33 1, {[2x float], i64} {[2x float] [float 2.0, float 3.0], i64 4} }

@S1ptr = global %SType** @S1		    
@S2  = global %SType* @S2c		    
@S3  = global %SAType* @S3c		    

					    
@S1fld1a = global float* getelementptr (%SType, %SType* @S2c, i64 0, i32 1, i32 0)
					    
@S1fld1b = global float* getelementptr (%SType, %SType* @S2c, i64 0, i32 1, i32 0)

@S1fld1bptr = global float** @S1fld1b	    

					    
@S2fld3 = global i8* getelementptr (%SType, %SType* @S2c, i64 0, i32 1, i32 1, i32 0) 

					    









