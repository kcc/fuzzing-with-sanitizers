

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"
	%struct.quad_struct = type { i32, i32, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct* }
@NumNodes = external global i32		
@"\01LC" = external constant [43 x i8]		
@"\01LC1" = external constant [19 x i8]		
@"\01LC2" = external constant [17 x i8]		

declare i32 @dealwithargs(i32, i8** nocapture) nounwind

declare i32 @atoi(i8*)

define internal fastcc i32 @adj(i32 %d, i32 %ct) nounwind readnone {
entry:
	switch i32 %d, label %return [
		i32 0, label %bb
		i32 1, label %bb10
		i32 2, label %bb5
		i32 3, label %bb15
	]

bb:		
	switch i32 %ct, label %bb3 [
		i32 1, label %return
		i32 0, label %return
	]

bb3:		
	ret i32 0

bb5:		
	switch i32 %ct, label %bb8 [
		i32 3, label %return
		i32 2, label %return
	]

bb8:		
	ret i32 0

bb10:		
	switch i32 %ct, label %bb13 [
		i32 1, label %return
		i32 3, label %return
	]

bb13:		
	ret i32 0

bb15:		
	switch i32 %ct, label %bb18 [
		i32 2, label %return
		i32 0, label %return
	]

bb18:		
	ret i32 0

return:		
	ret i32 1
}

declare fastcc i32 @reflect(i32, i32) nounwind readnone

declare i32 @CountTree(%struct.quad_struct* nocapture) nounwind readonly

define internal fastcc %struct.quad_struct* @child(%struct.quad_struct* nocapture %tree, i32 %ct) nounwind readonly {
entry:
	switch i32 %ct, label %bb5 [
		i32 0, label %bb1
		i32 1, label %bb
		i32 2, label %bb3
		i32 3, label %bb2
	]

bb:		
	%0 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 3		
	%1 = load %struct.quad_struct*, %struct.quad_struct** %0, align 4		
	ret %struct.quad_struct* %1

bb1:		
	%2 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 2		
	%3 = load %struct.quad_struct*, %struct.quad_struct** %2, align 4		
	ret %struct.quad_struct* %3

bb2:		
	%4 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 5		
	%5 = load %struct.quad_struct*, %struct.quad_struct** %4, align 4		
	ret %struct.quad_struct* %5

bb3:		
	%6 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 4		
	%7 = load %struct.quad_struct*, %struct.quad_struct** %6, align 4		
	ret %struct.quad_struct* %7

bb5:		
	ret %struct.quad_struct* null
}

define internal fastcc %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* nocapture %tree, i32 %d) nounwind readonly {
entry:
	%0 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 6		
	%1 = load %struct.quad_struct*, %struct.quad_struct** %0, align 4		
	%2 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 1		
	%3 = load i32, i32* %2, align 4		
	%4 = icmp eq %struct.quad_struct* %1, null		
	br i1 %4, label %bb3, label %bb

bb:		
	%5 = call fastcc i32 @adj(i32 %d, i32 %3) nounwind		
	%6 = icmp eq i32 %5, 0		
	br i1 %6, label %bb3, label %bb1

bb1:		
	%7 = call fastcc %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %1, i32 %d) nounwind		
	br label %bb3

bb3:		
	%q.0 = phi %struct.quad_struct* [ %7, %bb1 ], [ %1, %bb ], [ %1, %entry ]		
	%8 = icmp eq %struct.quad_struct* %q.0, null		
	br i1 %8, label %bb7, label %bb4

bb4:		
	%9 = getelementptr %struct.quad_struct, %struct.quad_struct* %q.0, i32 0, i32 0		
	%10 = load i32, i32* %9, align 4		
	%11 = icmp eq i32 %10, 2		
	br i1 %11, label %bb5, label %bb7

bb5:		
	%12 = call fastcc i32 @reflect(i32 %d, i32 %3) nounwind		
	%13 = call fastcc %struct.quad_struct* @child(%struct.quad_struct* %q.0, i32 %12) nounwind		
	ret %struct.quad_struct* %13

bb7:		
	ret %struct.quad_struct* %q.0
}

declare fastcc i32 @sum_adjacent(%struct.quad_struct* nocapture, i32, i32, i32) nounwind readonly

define i32 @perimeter(%struct.quad_struct* nocapture %tree, i32 %size) nounwind readonly {
entry:
	%0 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 0		
	%1 = load i32, i32* %0, align 4		
	%2 = icmp eq i32 %1, 2		
	br i1 %2, label %bb, label %bb2

bb:		
	%3 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 4		
	%4 = load %struct.quad_struct*, %struct.quad_struct** %3, align 4		
	%5 = sdiv i32 %size, 2		
	%6 = call i32 @perimeter(%struct.quad_struct* %4, i32 %5) nounwind		
	%7 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 5		
	%8 = load %struct.quad_struct*, %struct.quad_struct** %7, align 4		
	%9 = sdiv i32 %size, 2		
	%10 = call i32 @perimeter(%struct.quad_struct* %8, i32 %9) nounwind		
	%11 = add i32 %10, %6		
	%12 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 3		
	%13 = load %struct.quad_struct*, %struct.quad_struct** %12, align 4		
	%14 = sdiv i32 %size, 2		
	%15 = call i32 @perimeter(%struct.quad_struct* %13, i32 %14) nounwind		
	%16 = add i32 %15, %11		
	%17 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 2		
	%18 = load %struct.quad_struct*, %struct.quad_struct** %17, align 4		
	%19 = sdiv i32 %size, 2		
	%20 = call i32 @perimeter(%struct.quad_struct* %18, i32 %19) nounwind		
	%21 = add i32 %20, %16		
	ret i32 %21

bb2:		
	%22 = getelementptr %struct.quad_struct, %struct.quad_struct* %tree, i32 0, i32 0		
	%23 = load i32, i32* %22, align 4		
	%24 = icmp eq i32 %23, 0		
	br i1 %24, label %bb3, label %bb23

bb3:		
	%25 = call fastcc %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %tree, i32 0) nounwind		
	%26 = icmp eq %struct.quad_struct* %25, null		
	br i1 %26, label %bb8, label %bb4

bb4:		
	%27 = getelementptr %struct.quad_struct, %struct.quad_struct* %25, i32 0, i32 0		
	%28 = load i32, i32* %27, align 4		
	%29 = icmp eq i32 %28, 1		
	br i1 %29, label %bb8, label %bb6

bb6:		
	%30 = getelementptr %struct.quad_struct, %struct.quad_struct* %25, i32 0, i32 0		
	%31 = load i32, i32* %30, align 4		
	%32 = icmp eq i32 %31, 2		
	br i1 %32, label %bb7, label %bb8

bb7:		
	%33 = call fastcc i32 @sum_adjacent(%struct.quad_struct* %25, i32 3, i32 2, i32 %size) nounwind		
	br label %bb8

bb8:		
	%retval1.1 = phi i32 [ 0, %bb6 ], [ %33, %bb7 ], [ %size, %bb4 ], [ %size, %bb3 ]		
	%34 = call fastcc %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %tree, i32 1) nounwind		
	%35 = icmp eq %struct.quad_struct* %34, null		
	br i1 %35, label %bb10, label %bb9

bb9:		
	%36 = getelementptr %struct.quad_struct, %struct.quad_struct* %34, i32 0, i32 0		
	%37 = load i32, i32* %36, align 4		
	%38 = icmp eq i32 %37, 1		
	br i1 %38, label %bb10, label %bb11

bb10:		
	%39 = add i32 %retval1.1, %size		
	br label %bb13

bb11:		
	%40 = getelementptr %struct.quad_struct, %struct.quad_struct* %34, i32 0, i32 0		
	%41 = load i32, i32* %40, align 4		
	%42 = icmp eq i32 %41, 2		
	br i1 %42, label %bb12, label %bb13

bb12:		
	%43 = call fastcc i32 @sum_adjacent(%struct.quad_struct* %34, i32 2, i32 0, i32 %size) nounwind		
	%44 = add i32 %43, %retval1.1		
	br label %bb13

bb13:		
	%retval1.2 = phi i32 [ %retval1.1, %bb11 ], [ %44, %bb12 ], [ %39, %bb10 ]		
	%45 = call fastcc %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %tree, i32 2) nounwind		
	%46 = icmp eq %struct.quad_struct* %45, null		
	br i1 %46, label %bb15, label %bb14

bb14:		
	%47 = getelementptr %struct.quad_struct, %struct.quad_struct* %45, i32 0, i32 0		
	%48 = load i32, i32* %47, align 4		
	%49 = icmp eq i32 %48, 1		
	br i1 %49, label %bb15, label %bb16

bb15:		
	%50 = add i32 %retval1.2, %size		
	br label %bb18

bb16:		
	%51 = getelementptr %struct.quad_struct, %struct.quad_struct* %45, i32 0, i32 0		
	%52 = load i32, i32* %51, align 4		
	%53 = icmp eq i32 %52, 2		
	br i1 %53, label %bb17, label %bb18

bb17:		
	%54 = call fastcc i32 @sum_adjacent(%struct.quad_struct* %45, i32 0, i32 1, i32 %size) nounwind		
	%55 = add i32 %54, %retval1.2		
	br label %bb18

bb18:		
	%retval1.3 = phi i32 [ %retval1.2, %bb16 ], [ %55, %bb17 ], [ %50, %bb15 ]		
	%56 = call fastcc %struct.quad_struct* @gtequal_adj_neighbor(%struct.quad_struct* %tree, i32 3) nounwind		
	%57 = icmp eq %struct.quad_struct* %56, null		
	br i1 %57, label %bb20, label %bb19

bb19:		
	%58 = getelementptr %struct.quad_struct, %struct.quad_struct* %56, i32 0, i32 0		
	%59 = load i32, i32* %58, align 4		
	%60 = icmp eq i32 %59, 1		
	br i1 %60, label %bb20, label %bb21

bb20:		
	%61 = add i32 %retval1.3, %size		
	ret i32 %61

bb21:		
	%62 = getelementptr %struct.quad_struct, %struct.quad_struct* %56, i32 0, i32 0		
	%63 = load i32, i32* %62, align 4		
	%64 = icmp eq i32 %63, 2		
	br i1 %64, label %bb22, label %bb23

bb22:		
	%65 = call fastcc i32 @sum_adjacent(%struct.quad_struct* %56, i32 1, i32 3, i32 %size) nounwind		
	%66 = add i32 %65, %retval1.3		
	ret i32 %66

bb23:		
	%retval1.0 = phi i32 [ 0, %bb2 ], [ %retval1.3, %bb21 ]		
	ret i32 %retval1.0
}

declare i32 @main(i32, i8** nocapture) noreturn nounwind

declare i32 @printf(i8*, ...) nounwind

declare void @exit(i32) noreturn nounwind

declare fastcc i32 @CheckOutside(i32, i32) nounwind readnone

declare fastcc i32 @CheckIntersect(i32, i32, i32) nounwind readnone

declare %struct.quad_struct* @MakeTree(i32, i32, i32, i32, i32, %struct.quad_struct*, i32, i32) nounwind
