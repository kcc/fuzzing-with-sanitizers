

target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32"
target triple = "thumbv7-apple-darwin9"

@history = internal global [2 x [56 x i32]] [[56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0], [56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0]] 
@nodes = internal global i64 0                    
@.str = private constant [9 x i8] c"##-<=>+#\00", align 1 
@.str1 = private constant [6 x i8] c"%c%d\0A\00", align 1 
@.str2 = private constant [16 x i8] c"Fhourstones 2.0\00", align 1 
@.str3 = private constant [54 x i8] c"Using %d transposition table entries with %d probes.\0A\00", align 1 
@.str4 = private constant [31 x i8] c"Solving %d-ply position after \00", align 1 
@.str5 = private constant [7 x i8] c" . . .\00", align 1 
@.str6 = private constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1 
@.str7 = private constant [36 x i8] c"%lu pos / %lu msec = %.1f Kpos/sec\0A\00", align 1 
@plycnt = internal global i32 0                   
@dias = internal global [19 x i32] zeroinitializer 
@columns = internal global [128 x i32] zeroinitializer 
@height = internal global [128 x i32] zeroinitializer 
@rows = internal global [8 x i32] zeroinitializer 
@colthr = internal global [128 x i32] zeroinitializer 
@moves = internal global [44 x i32] zeroinitializer 
@.str8 = private constant [3 x i8] c"%d\00", align 1 
@he = internal global i8* null                    
@hits = internal global i64 0                     
@posed = internal global i64 0                    
@ht = internal global i32* null                   
@.str16 = private constant [19 x i8] c"store rate = %.3f\0A\00", align 1 
@.str117 = private constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1 
@.str218 = private constant [6 x i8] c"%7d%c\00", align 1 
@.str319 = private constant [30 x i8] c"Failed to allocate %u bytes.\0A\00", align 1 

declare i32 @puts(i8* nocapture) nounwind

declare i32 @getchar() nounwind

define internal i32 @transpose() nounwind readonly {

entry:
  %0 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i32 0, i32 1), align 4 
  %1 = shl i32 %0, 7                              
  %2 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i32 0, i32 2), align 4 
  %3 = or i32 %1, %2                              
  %4 = shl i32 %3, 7                              
  %5 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i32 0, i32 3), align 4 
  %6 = or i32 %4, %5                              
  %7 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i32 0, i32 7), align 4 
  %8 = shl i32 %7, 7                              
  %9 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i32 0, i32 6), align 4 
  %10 = or i32 %8, %9                             
  %11 = shl i32 %10, 7                            
  %12 = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i32 0, i32 5), align 4 
  %13 = or i32 %11, %12                           
  %14 = icmp ugt i32 %6, %13                      
  %.pn2.in.i = select i1 %14, i32 %6, i32 %13     
  %.pn1.in.i = select i1 %14, i32 %13, i32 %6     
  %.pn2.i = shl i32 %.pn2.in.i, 7                 
  %.pn3.i = load i32, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @columns, i32 0, i32 4) 
  %.pn.in.in.i = or i32 %.pn2.i, %.pn3.i          
  %.pn.in.i = zext i32 %.pn.in.in.i to i64        
  %.pn.i = shl i64 %.pn.in.i, 21                  
  %.pn1.i = zext i32 %.pn1.in.i to i64            
  %iftmp.22.0.i = or i64 %.pn.i, %.pn1.i          
  %15 = lshr i64 %iftmp.22.0.i, 17                
  %16 = trunc i64 %15 to i32                      
  %17 = urem i64 %iftmp.22.0.i, 1050011           
  %18 = trunc i64 %17 to i32                      
  %19 = urem i32 %16, 179                         
  %20 = or i32 %19, 131072                        
  %21 = load i32*, i32** @ht, align 4                   
  br label %bb5

bb:                                               
  %22 = getelementptr inbounds i32, i32* %21, i32 %x.0 
  %23 = load i32, i32* %22, align 4                    
  %24 = icmp eq i32 %23, %16                      
  br i1 %24, label %bb1, label %bb2

bb1:                                              
  %25 = load i8*, i8** @he, align 4                    
  %26 = getelementptr inbounds i8, i8* %25, i32 %x.0  
  %27 = load i8, i8* %26, align 1                     
  %28 = sext i8 %27 to i32                        
  ret i32 %28

bb2:                                              
  %29 = add nsw i32 %20, %x.0                     
  %30 = add i32 %29, -1050011                     
  %31 = icmp sgt i32 %29, 1050010                 
  %. = select i1 %31, i32 %30, i32 %29            
  %32 = add i32 %33, 1                            
  br label %bb5

bb5:                                              
  %33 = phi i32 [ 0, %entry ], [ %32, %bb2 ]      
  %x.0 = phi i32 [ %18, %entry ], [ %., %bb2 ]    
  %34 = icmp sgt i32 %33, 7                       
  br i1 %34, label %bb7, label %bb

bb7:                                              
  ret i32 -128
}

declare noalias i8* @calloc(i32, i32) nounwind

declare void @llvm.memset.i64(i8* nocapture, i8, i64, i32) nounwind
