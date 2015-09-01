

	%struct.vorbis_comment = type { i8**, i32*, i32, i8* }
@.str16 = external constant [2 x i8], align 1     

declare i8* @__strcpy_chk(i8*, i8*, i32) nounwind

declare i8* @__strcat_chk(i8*, i8*, i32) nounwind

define i8* @vorbis_comment_query(%struct.vorbis_comment* nocapture %vc, i8* %tag, i32 %count) nounwind {
entry:
	%0 = alloca i8, i32 undef, align 4        
	%1 = call  i8* @__strcpy_chk(i8* %0, i8* %tag, i32 -1) nounwind
	%2 = call  i8* @__strcat_chk(i8* %0, i8* getelementptr ([2 x i8], [2 x i8]* @.str16, i32 0, i32 0), i32 -1) nounwind
	%3 = getelementptr %struct.vorbis_comment, %struct.vorbis_comment* %vc, i32 0, i32 0
	br label %bb11

bb6:                                              
	%4 = load i8**, i8*** %3, align 4               
	%scevgep = getelementptr i8*, i8** %4, i32 %8  
	%5 = load i8*, i8** %scevgep, align 4          
	br label %bb3.i

bb3.i:                                            
	%scevgep7.i = getelementptr i8, i8* %5, i32 0 
	%6 = load i8, i8* %scevgep7.i, align 1        
	br i1 undef, label %bb3.i, label %bb10

bb10:                                             
	%7 = add i32 %8, 1                        
	br label %bb11

bb11:                                             
	%8 = phi i32 [ %7, %bb10 ], [ 0, %entry ] 
	%9 = icmp sgt i32 undef, %8               
	br i1 %9, label %bb6, label %bb13

bb13:                                             
	ret i8* null
}
