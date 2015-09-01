


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"

	%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
	%struct.Index_Map = type { i32, %struct.item_set** }
	%struct.Item = type { [4 x i16], %struct.rule* }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { i8*, i32 }
	%struct.dimension = type { i16*, %struct.Index_Map, %struct.mapping*, i32, %struct.plankMap* }
	%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.Item*, %struct.Item* }
	%struct.list = type { i8*, %struct.list* }
	%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
	%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
	%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
	%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
	%struct.plank = type { i8*, %struct.list*, i32 }
	%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
	%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
	%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
	%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
@outfile = external global %struct.FILE*		
@str1 = external constant [11 x i8]		
@operators = weak global %struct.list* null		



define i32 @opsOfArity(i32 %arity) {
entry:
	%arity_addr = alloca i32		
	%retval = alloca i32, align 4		
	%tmp = alloca i32, align 4		
	%c = alloca i32, align 4		
	%l = alloca %struct.list*, align 4		
	%op = alloca %struct.operator*, align 4		
	store i32 %arity, i32* %arity_addr
	store i32 0, i32* %c
	%tmp1 = load %struct.list*, %struct.list** @operators		
	store %struct.list* %tmp1, %struct.list** %l
	br label %bb21

bb:		
	%tmp3 = getelementptr %struct.list, %struct.list* %tmp22, i32 0, i32 0		
	%tmp4 = load i8*, i8** %tmp3		
	%tmp45 = bitcast i8* %tmp4 to %struct.operator*		
	store %struct.operator* %tmp45, %struct.operator** %op
	%tmp6 = load %struct.operator*, %struct.operator** %op		
	%tmp7 = getelementptr %struct.operator, %struct.operator* %tmp6, i32 0, i32 5		
	%tmp8 = load i32, i32* %tmp7		
	%tmp9 = load i32, i32* %arity_addr		
	icmp eq i32 %tmp8, %tmp9		
	zext i1 %0 to i8		
	icmp ne i8 %1, 0		
	br i1 %2, label %cond_true, label %cond_next

cond_true:		
	%tmp10 = load %struct.operator*, %struct.operator** %op		
	%tmp11 = getelementptr %struct.operator, %struct.operator* %tmp10, i32 0, i32 2		
	%tmp12 = load i32, i32* %tmp11		
	%tmp13 = load %struct.FILE*, %struct.FILE** @outfile		
	%tmp14 = getelementptr [11 x i8], [11 x i8]* @str1, i32 0, i32 0		
	%tmp15 = call i32 (%struct.FILE*, i8*, ...) @fprintf( %struct.FILE* %tmp13, i8* %tmp14, i32 %tmp12 )		
	%tmp16 = load i32, i32* %c		
	%tmp17 = add i32 %tmp16, 1		
	store i32 %tmp17, i32* %c
	br label %cond_next

cond_next:		
	%tmp19 = getelementptr %struct.list, %struct.list* %tmp22, i32 0, i32 1		
	%tmp20 = load %struct.list*, %struct.list** %tmp19		
	store %struct.list* %tmp20, %struct.list** %l
	br label %bb21

bb21:		
        %l.in = phi %struct.list** [ @operators, %entry ], [ %tmp19, %cond_next ]
	%tmp22 = load %struct.list*, %struct.list** %l.in		
	icmp ne %struct.list* %tmp22, null		
	zext i1 %3 to i8		
	icmp ne i8 %4, 0		
	br i1 %5, label %bb, label %bb23

bb23:		
	%tmp24 = load i32, i32* %c		
	store i32 %tmp24, i32* %tmp
	%tmp25 = load i32, i32* %tmp		
	store i32 %tmp25, i32* %retval
	br label %return

return:		
	%retval26 = load i32, i32* %retval		
	ret i32 %retval26
}

declare i32 @fprintf(%struct.FILE*, i8*, ...)
