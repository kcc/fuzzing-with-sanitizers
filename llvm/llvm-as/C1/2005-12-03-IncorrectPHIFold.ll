



%struct.anon = type { i32, i32, i32, i32, [1024 x i8] }
@_zero_ = external global %struct.anon*		
@_one_ = external global %struct.anon*		
@str = internal constant [4 x i8] c"%d\0A\00"		

declare i32 @bc_compare(%struct.anon*, %struct.anon*)

declare void @free_num(%struct.anon**)

declare %struct.anon* @copy_num(%struct.anon*)

declare void @init_num(%struct.anon**)

declare %struct.anon* @new_num(i32, i32)

declare void @int2num(%struct.anon**, i32)

declare void @bc_multiply(%struct.anon*, %struct.anon*, %struct.anon**, i32)

declare void @bc_raise(%struct.anon*, %struct.anon*, %struct.anon**, i32)

declare i32 @bc_divide(%struct.anon*, %struct.anon*, %struct.anon**, i32)

declare void @bc_add(%struct.anon*, %struct.anon*, %struct.anon**)

declare i32 @_do_compare(%struct.anon*, %struct.anon*, i32, i32)

declare i32 @printf(i8*, ...)

define i32 @bc_sqrt(%struct.anon** %num, i32 %scale) {
entry:
	%guess = alloca %struct.anon*		
	%guess1 = alloca %struct.anon*		
	%point5 = alloca %struct.anon*		
	%tmp = load %struct.anon*, %struct.anon** %num		
	%tmp1 = load %struct.anon*, %struct.anon** @_zero_		
	%tmp.upgrd.1 = call i32 @bc_compare( %struct.anon* %tmp, %struct.anon* %tmp1 )		
	%tmp.upgrd.2 = icmp slt i32 %tmp.upgrd.1, 0		
	br i1 %tmp.upgrd.2, label %cond_true, label %cond_false
cond_true:		
	ret i32 0
cond_false:		
	%tmp5 = icmp eq i32 %tmp.upgrd.1, 0		
	br i1 %tmp5, label %cond_true6, label %cond_next13
cond_true6:		
	call void @free_num( %struct.anon** %num )
	%tmp8 = load %struct.anon*, %struct.anon** @_zero_		
	%tmp9 = call %struct.anon* @copy_num( %struct.anon* %tmp8 )		
	store %struct.anon* %tmp9, %struct.anon** %num
	ret i32 1
cond_next13:		
	%tmp15 = load %struct.anon*, %struct.anon** %num		
	%tmp16 = load %struct.anon*, %struct.anon** @_one_		
	%tmp17 = call i32 @bc_compare( %struct.anon* %tmp15, %struct.anon* %tmp16 )		
	%tmp19 = icmp eq i32 %tmp17, 0		
	br i1 %tmp19, label %cond_true20, label %cond_next27
cond_true20:		
	call void @free_num( %struct.anon** %num )
	%tmp22 = load %struct.anon*, %struct.anon** @_one_		
	%tmp23 = call %struct.anon* @copy_num( %struct.anon* %tmp22 )		
	store %struct.anon* %tmp23, %struct.anon** %num
	ret i32 1
cond_next27:		
	%tmp29 = load %struct.anon*, %struct.anon** %num		
	%tmp30 = getelementptr %struct.anon, %struct.anon* %tmp29, i32 0, i32 2		
	%tmp31 = load i32, i32* %tmp30		
	%tmp33 = icmp sge i32 %tmp31, %scale		
	%max = select i1 %tmp33, i32 %tmp31, i32 %scale		
	%tmp35 = add i32 %max, 2		
	call void @init_num( %struct.anon** %guess )
	call void @init_num( %struct.anon** %guess1 )
	%tmp36 = call %struct.anon* @new_num( i32 1, i32 1 )		
	store %struct.anon* %tmp36, %struct.anon** %point5
	%tmp.upgrd.3 = getelementptr %struct.anon, %struct.anon* %tmp36, i32 0, i32 4, i32 1		
	store i8 5, i8* %tmp.upgrd.3
	%tmp39 = icmp slt i32 %tmp17, 0		
	br i1 %tmp39, label %cond_true40, label %cond_false43
cond_true40:		
	%tmp41 = load %struct.anon*, %struct.anon** @_one_		
	%tmp42 = call %struct.anon* @copy_num( %struct.anon* %tmp41 )		
	store %struct.anon* %tmp42, %struct.anon** %guess
	br label %bb80.outer
cond_false43:		
	call void @int2num( %struct.anon** %guess, i32 10 )
	%tmp45 = load %struct.anon*, %struct.anon** %num		
	%tmp46 = getelementptr %struct.anon, %struct.anon* %tmp45, i32 0, i32 1		
	%tmp47 = load i32, i32* %tmp46		
	call void @int2num( %struct.anon** %guess1, i32 %tmp47 )
	%tmp48 = load %struct.anon*, %struct.anon** %guess1		
	%tmp49 = load %struct.anon*, %struct.anon** %point5		
	call void @bc_multiply( %struct.anon* %tmp48, %struct.anon* %tmp49, %struct.anon** %guess1, i32 %max )
	%tmp51 = load %struct.anon*, %struct.anon** %guess1		
	%tmp52 = getelementptr %struct.anon, %struct.anon* %tmp51, i32 0, i32 2		
	store i32 0, i32* %tmp52
	%tmp53 = load %struct.anon*, %struct.anon** %guess		
	%tmp54 = load %struct.anon*, %struct.anon** %guess1		
	call void @bc_raise( %struct.anon* %tmp53, %struct.anon* %tmp54, %struct.anon** %guess, i32 %max )
	br label %bb80.outer
bb80.outer:		
	%done.1.ph = phi i32 [ 1, %cond_true83 ], [ 0, %cond_true40 ], [ 0, %cond_false43 ]		
	br label %bb80
bb80:		
	%tmp82 = icmp eq i32 %done.1.ph, 0		
	br i1 %tmp82, label %cond_true83, label %bb86
cond_true83:		
	%tmp71 = call i32 @_do_compare( %struct.anon* null, %struct.anon* null, i32 0, i32 1 )		
	%tmp76 = icmp eq i32 %tmp71, 0		
	br i1 %tmp76, label %bb80.outer, label %bb80

bb86:		
	call void @free_num( %struct.anon** %num )
	%tmp88 = load %struct.anon*, %struct.anon** %guess		
	%tmp89 = load %struct.anon*, %struct.anon** @_one_		
	%tmp92 = call i32 @bc_divide( %struct.anon* %tmp88, %struct.anon* %tmp89, %struct.anon** %num, i32 %max )		
	call void @free_num( %struct.anon** %guess )
	call void @free_num( %struct.anon** %guess1 )
	call void @free_num( %struct.anon** %point5 )
	ret i32 1
}
