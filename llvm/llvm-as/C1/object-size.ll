


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0"

@p = common global i8* null, align 8              
@.str = private constant [3 x i8] c"Hi\00"        

define void @bar() nounwind ssp {
entry:
  %tmp = load i8*, i8** @p                             
  %0 = call i64 @llvm.objectsize.i64.p0i8(i8* %tmp, i1 0) 
  %cmp = icmp ne i64 %0, -1                       


  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        
  %tmp1 = load i8*, i8** @p                            
  %tmp2 = load i8*, i8** @p                            
  %1 = call i64 @llvm.objectsize.i64.p0i8(i8* %tmp2, i1 1) 
  %call = call i8* @__strcpy_chk(i8* %tmp1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 %1) ssp 
  br label %cond.end

cond.false:                                       
  %tmp3 = load i8*, i8** @p                            
  %call4 = call i8* @__inline_strcpy_chk(i8* %tmp3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) ssp 
  br label %cond.end

cond.end:                                         
  %cond = phi i8* [ %call, %cond.true ], [ %call4, %cond.false ] 
  ret void
}

declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) nounwind readonly

declare i8* @__strcpy_chk(i8*, i8*, i64) ssp

define internal i8* @__inline_strcpy_chk(i8* %__dest, i8* %__src) nounwind ssp {
entry:
  %retval = alloca i8*                            
  %__dest.addr = alloca i8*                       
  %__src.addr = alloca i8*                        
  store i8* %__dest, i8** %__dest.addr
  store i8* %__src, i8** %__src.addr
  %tmp = load i8*, i8** %__dest.addr                   
  %tmp1 = load i8*, i8** %__src.addr                   
  %tmp2 = load i8*, i8** %__dest.addr                  
  %0 = call i64 @llvm.objectsize.i64.p0i8(i8* %tmp2, i1 1) 
  %call = call i8* @__strcpy_chk(i8* %tmp, i8* %tmp1, i64 %0) ssp 
  store i8* %call, i8** %retval
  %1 = load i8*, i8** %retval                          
  ret i8* %1
}
