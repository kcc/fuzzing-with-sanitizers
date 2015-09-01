

	%struct.anon = type { i32 (i32, i32, i32)*, i32, i32, [3 x i32], i8*, i8*, i8* }
@debug = external constant i32		
@counters = external constant i32		
@trialx = external global [17 x i32]		
@dummy1 = external global [7 x i32]		
@dummy2 = external global [4 x i32]		
@unacceptable = external global i32		
@isa = external global [13 x %struct.anon]		
@.str = external constant [4 x i8]		
@.str1 = external constant [3 x i8]		
@.str2 = external constant [1 x i8]		
@.str3 = external constant [4 x i8]		
@.str4 = external constant [3 x i8]		
@.str5 = external constant [4 x i8]		
@.str6 = external constant [2 x i8]		
@.str7 = external constant [4 x i8]		
@.str8 = external constant [4 x i8]		
@.str9 = external constant [4 x i8]		
@.str10 = external constant [4 x i8]		
@.str11 = external constant [2 x i8]		
@.str12 = external constant [4 x i8]		
@.str13 = external constant [2 x i8]		
@.str14 = external constant [5 x i8]		
@.str15 = external constant [5 x i8]		
@.str16 = external constant [4 x i8]		
@.str17 = external constant [4 x i8]		
@.str18 = external constant [3 x i8]		
@.str19 = external constant [4 x i8]		
@.str20 = external constant [4 x i8]		
@.str21 = external constant [4 x i8]		
@.str22 = external constant [4 x i8]		
@.str23 = external constant [5 x i8]		
@.str24 = external constant [4 x i8]		
@.str25 = external constant [6 x i8]		
@.str26 = external constant [5 x i8]		
@.str27 = external constant [6 x i8]		
@r = external global [17 x i32]		
@.str28 = external constant [3 x i8]		
@.str29 = external constant [5 x i8]		
@pgm = external global [5 x { i32, [3 x i32] }]		
@.str30 = external constant [3 x i8]		
@.str31 = external constant [13 x i8]		
@.str32 = external constant [3 x i8]		
@.str33 = external constant [4 x i8]		
@.str34 = external constant [20 x i8]		
@numi = external global i32		
@.str35 = external constant [10 x i8]		
@counter = external global [5 x i32]		
@itrialx.2510 = external global i32		
@.str36 = external constant [43 x i8]		
@.str37 = external constant [42 x i8]		
@corr_result = external global i32		
@.str38 = external constant [3 x i8]		
@.str39 = external constant [5 x i8]		
@.str40 = external constant [47 x i8]		
@correct_result = external global [17 x i32]		
@.str41 = external constant [46 x i8]		
@.str42 = external constant [32 x i8]		
@.str43 = external constant [44 x i8]		
@.str44 = external constant [21 x i8]		
@.str45 = external constant [12 x i8]		
@.str46 = external constant [5 x i8]		
@.str47 = external constant [12 x i8]		

declare i32 @neg(i32, i32, i32)

declare i32 @Not(i32, i32, i32)

declare i32 @pop(i32, i32, i32)

declare i32 @nlz(i32, i32, i32)

declare i32 @rev(i32, i32, i32)

declare i32 @add(i32, i32, i32)

declare i32 @sub(i32, i32, i32)

declare i32 @mul(i32, i32, i32)

declare i32 @divide(i32, i32, i32)

declare i32 @divu(i32, i32, i32)

declare i32 @And(i32, i32, i32)

declare i32 @Or(i32, i32, i32)

declare i32 @Xor(i32, i32, i32)

declare i32 @rotl(i32, i32, i32)

declare i32 @shl(i32, i32, i32)

declare i32 @shr(i32, i32, i32)

declare i32 @shrs(i32, i32, i32)

declare i32 @cmpeq(i32, i32, i32)

declare i32 @cmplt(i32, i32, i32)

declare i32 @cmpltu(i32, i32, i32)

declare i32 @seleq(i32, i32, i32)

declare i32 @sellt(i32, i32, i32)

declare i32 @selle(i32, i32, i32)

declare void @print_expr(i32)

declare i32 @printf(i8*, ...)

declare i32 @putchar(i32)

declare void @print_pgm()

declare void @simulate_one_instruction(i32)

declare i32 @check(i32)

declare i32 @puts(i8*)

declare void @fix_operands(i32)

declare void @abort()

declare i32 @increment()

declare i32 @search()

define i32 @main(i32 %argc, i8** %argv) {
entry:
	%argc_addr = alloca i32		
	%argv_addr = alloca i8**		
	%retval = alloca i32, align 4		
	%tmp = alloca i32, align 4		
	%i = alloca i32, align 4		
	%num_sol = alloca i32, align 4		
	%total = alloca i32, align 4		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 %argc, i32* %argc_addr
	store i8** %argv, i8*** %argv_addr
	store i32 0, i32* %num_sol
	store i32 1, i32* @numi
	br label %bb91

bb:		
	%tmp1 = load i32, i32* @numi		
	%tmp2 = getelementptr [44 x i8], [44 x i8]* @.str43, i32 0, i32 0		
	%tmp3 = call i32 (i8*, ...) @printf( i8* %tmp2, i32 %tmp1 )		
	store i32 0, i32* %i
	br label %bb13

bb4:		
	%tmp5 = load i32, i32* %i		
	%tmp6 = load i32, i32* %i		
	%tmp7 = getelementptr [17 x i32], [17 x i32]* @trialx, i32 0, i32 %tmp6		
	%tmp8 = load i32, i32* %tmp7		
	%tmp9 = call i32 @userfun( i32 %tmp8 )		
	%tmp10 = getelementptr [17 x i32], [17 x i32]* @correct_result, i32 0, i32 %tmp5		
	store i32 %tmp9, i32* %tmp10
	%tmp11 = load i32, i32* %i		
	%tmp12 = add i32 %tmp11, 1		
	store i32 %tmp12, i32* %i
	br label %bb13

bb13:		
	%tmp14 = load i32, i32* %i		
	%tmp15 = icmp sle i32 %tmp14, 16		
	%tmp1516 = zext i1 %tmp15 to i32		
	%toBool = icmp ne i32 %tmp1516, 0		
	br i1 %toBool, label %bb4, label %bb17

bb17:		
	store i32 0, i32* %i
	br label %bb49

bb18:		
	%tmp19 = load i32, i32* %i		
	%tmp20 = getelementptr [5 x { i32, [3 x i32] }], [5 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %tmp19		
	%tmp21 = getelementptr { i32, [3 x i32] }, { i32, [3 x i32] }* %tmp20, i32 0, i32 0		
	store i32 0, i32* %tmp21
	%tmp22 = load i32, i32* %i		
	%tmp23 = getelementptr [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i32 0		
	%tmp24 = getelementptr %struct.anon, %struct.anon* %tmp23, i32 0, i32 3		
	%tmp25 = getelementptr [3 x i32], [3 x i32]* %tmp24, i32 0, i32 0		
	%tmp26 = load i32, i32* %tmp25		
	%tmp27 = getelementptr [5 x { i32, [3 x i32] }], [5 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %tmp22		
	%tmp28 = getelementptr { i32, [3 x i32] }, { i32, [3 x i32] }* %tmp27, i32 0, i32 1		
	%tmp29 = getelementptr [3 x i32], [3 x i32]* %tmp28, i32 0, i32 0		
	store i32 %tmp26, i32* %tmp29
	%tmp30 = load i32, i32* %i		
	%tmp31 = getelementptr [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i32 0		
	%tmp32 = getelementptr %struct.anon, %struct.anon* %tmp31, i32 0, i32 3		
	%tmp33 = getelementptr [3 x i32], [3 x i32]* %tmp32, i32 0, i32 1		
	%tmp34 = load i32, i32* %tmp33		
	%tmp35 = getelementptr [5 x { i32, [3 x i32] }], [5 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %tmp30		
	%tmp36 = getelementptr { i32, [3 x i32] }, { i32, [3 x i32] }* %tmp35, i32 0, i32 1		
	%tmp37 = getelementptr [3 x i32], [3 x i32]* %tmp36, i32 0, i32 1		
	store i32 %tmp34, i32* %tmp37
	%tmp38 = load i32, i32* %i		
	%tmp39 = getelementptr [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i32 0		
	%tmp40 = getelementptr %struct.anon, %struct.anon* %tmp39, i32 0, i32 3		
	%tmp41 = getelementptr [3 x i32], [3 x i32]* %tmp40, i32 0, i32 2		
	%tmp42 = load i32, i32* %tmp41		
	%tmp43 = getelementptr [5 x { i32, [3 x i32] }], [5 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %tmp38		
	%tmp44 = getelementptr { i32, [3 x i32] }, { i32, [3 x i32] }* %tmp43, i32 0, i32 1		
	%tmp45 = getelementptr [3 x i32], [3 x i32]* %tmp44, i32 0, i32 2		
	store i32 %tmp42, i32* %tmp45
	%tmp46 = load i32, i32* %i		
	call void @fix_operands( i32 %tmp46 )
	%tmp47 = load i32, i32* %i		
	%tmp48 = add i32 %tmp47, 1		
	store i32 %tmp48, i32* %i
	br label %bb49

bb49:		
	%tmp50 = load i32, i32* @numi		
	%tmp51 = load i32, i32* %i		
	%tmp52 = icmp slt i32 %tmp51, %tmp50		
	%tmp5253 = zext i1 %tmp52 to i32		
	%toBool54 = icmp ne i32 %tmp5253, 0		
	br i1 %toBool54, label %bb18, label %bb55

bb55:		
	%tmp56 = call i32 @search( )		
	store i32 %tmp56, i32* %num_sol
	%tmp57 = getelementptr [21 x i8], [21 x i8]* @.str44, i32 0, i32 0		
	%tmp58 = load i32, i32* %num_sol		
	%tmp59 = call i32 (i8*, ...) @printf( i8* %tmp57, i32 %tmp58 )		
	%tmp60 = load i32, i32* @counters		
	%tmp61 = icmp ne i32 %tmp60, 0		
	%tmp6162 = zext i1 %tmp61 to i32		
	%toBool63 = icmp ne i32 %tmp6162, 0		
	br i1 %toBool63, label %cond_true, label %cond_next

cond_true:		
	store i32 0, i32* %total
	%tmp64 = getelementptr [12 x i8], [12 x i8]* @.str45, i32 0, i32 0		
	%tmp65 = call i32 (i8*, ...) @printf( i8* %tmp64 )		
	store i32 0, i32* %i
	br label %bb79

bb66:		
	%tmp67 = load i32, i32* %i		
	%tmp68 = getelementptr [5 x i32], [5 x i32]* @counter, i32 0, i32 %tmp67		
	%tmp69 = load i32, i32* %tmp68		
	%tmp70 = getelementptr [5 x i8], [5 x i8]* @.str46, i32 0, i32 0		
	%tmp71 = call i32 (i8*, ...) @printf( i8* %tmp70, i32 %tmp69 )		
	%tmp72 = load i32, i32* %i		
	%tmp73 = getelementptr [5 x i32], [5 x i32]* @counter, i32 0, i32 %tmp72		
	%tmp74 = load i32, i32* %tmp73		
	%tmp75 = load i32, i32* %total		
	%tmp76 = add i32 %tmp74, %tmp75		
	store i32 %tmp76, i32* %total
	%tmp77 = load i32, i32* %i		
	%tmp78 = add i32 %tmp77, 1		
	store i32 %tmp78, i32* %i
	br label %bb79

bb79:		
	%tmp80 = load i32, i32* @numi		
	%tmp81 = load i32, i32* %i		
	%tmp82 = icmp slt i32 %tmp81, %tmp80		
	%tmp8283 = zext i1 %tmp82 to i32		
	%toBool84 = icmp ne i32 %tmp8283, 0		
	br i1 %toBool84, label %bb66, label %bb85

bb85:		
	%tmp86 = getelementptr [12 x i8], [12 x i8]* @.str47, i32 0, i32 0		
	%tmp87 = load i32, i32* %total		
	%tmp88 = call i32 (i8*, ...) @printf( i8* %tmp86, i32 %tmp87 )		
	br label %cond_next

cond_next:		
	%tmp89 = load i32, i32* @numi		
	%tmp90 = add i32 %tmp89, 1		
	store i32 %tmp90, i32* @numi
	br label %bb91

bb91:		
	%tmp92 = load i32, i32* @numi		
	%tmp93 = icmp sgt i32 %tmp92, 5		
	%tmp9394 = zext i1 %tmp93 to i32		
	%toBool95 = icmp ne i32 %tmp9394, 0		
	br i1 %toBool95, label %cond_true96, label %cond_next97

cond_true96:		
	br label %bb102

cond_next97:		
	%tmp98 = load i32, i32* %num_sol		
	%tmp99 = icmp eq i32 %tmp98, 0		
	%tmp99100 = zext i1 %tmp99 to i32		
	%toBool101 = icmp ne i32 %tmp99100, 0		
	br i1 %toBool101, label %bb, label %bb102

bb102:		
	store i32 0, i32* %tmp
	%tmp103 = load i32, i32* %tmp		
	store i32 %tmp103, i32* %retval
	br label %return

return:		
	%retval104 = load i32, i32* %retval		
	ret i32 %retval104
}

declare i32 @userfun(i32)
