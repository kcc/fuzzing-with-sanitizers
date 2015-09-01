

@_ZL10DeviceCode = internal global i16 0		
@.str19 = internal constant [64 x i8] c"unlock_then_erase_sector: failed to erase block (status= 0x%x)\0A\00"		
@.str34 = internal constant [68 x i8] c"ProgramByWords - Erasing sector 0x%llx to 0x%llx (size 0x%x bytes)\0A\00"		
@.str35 = internal constant [37 x i8] c"ProgramByWords - Done erasing flash\0A\00"		
@.str36 = internal constant [48 x i8] c"ProgramByWords - Starting to write to FLASH...\0A\00"		

declare void @IOLog(i8*, ...)

declare void @IODelay(i32)

define i32 @_Z14ProgramByWordsPvyy(i8* %buffer, i64 %Offset, i64 %bufferSize) nounwind  {
entry:
	store volatile i8 -1, i8* null, align 1
	%tmp28 = icmp eq i8 0, 0		
	br i1 %tmp28, label %bb107, label %bb

bb:		
	%tmp9596430 = zext i32 0 to i64		
	%tmp98431 = add i64 %tmp9596430, %Offset		
	%tmp100433 = icmp ugt i64 %tmp98431, %Offset		
	br i1 %tmp100433, label %bb31, label %bb103

bb31:		
	%Pos.0.reg2mem.0 = phi i64 [ %tmp93, %_Z24unlock_then_erase_sectory.exit ], [ %Offset, %bb ]		
	%tmp35 = load i16, i16* @_ZL10DeviceCode, align 2		
	%tmp3536 = zext i16 %tmp35 to i32		
	%tmp37 = and i32 %tmp3536, 65520		
	%tmp38 = icmp eq i32 %tmp37, 35008		
	%tmp34 = sub i64 %Pos.0.reg2mem.0, %Offset		
	br i1 %tmp38, label %bb41, label %bb68

bb41:		
	%tmp43 = add i32 0, -1		
	%tmp4344 = zext i32 %tmp43 to i64		
	%tmp46 = and i64 %tmp4344, %tmp34		
	%tmp49 = and i32 %tmp3536, 1		
	ret i32 0

bb68:		
	tail call void (i8*, ...) @IOLog( i8* getelementptr ([68 x i8], [68 x i8]* @.str34, i32 0, i32 0), i64 %tmp34, i64 0, i32 131072 ) nounwind 
	%tmp2021.i = trunc i64 %Pos.0.reg2mem.0 to i32		
	%tmp202122.i = inttoptr i32 %tmp2021.i to i8*		
	tail call void @IODelay( i32 500 ) nounwind 
	%tmp53.i = load volatile i16, i16* null, align 2		
	%tmp5455.i = zext i16 %tmp53.i to i32		
	br i1 false, label %bb.i, label %bb65.i

bb.i:		
	ret i32 0

bb65.i:		
	%tmp67.i = icmp eq i16 %tmp53.i, 128		
	br i1 %tmp67.i, label %_Z24unlock_then_erase_sectory.exit, label %bb70.i

bb70.i:		
	tail call void (i8*, ...) @IOLog( i8* getelementptr ([64 x i8], [64 x i8]* @.str19, i32 0, i32 0), i32 %tmp5455.i ) nounwind 
	ret i32 0

_Z24unlock_then_erase_sectory.exit:		
	store volatile i8 -1, i8* %tmp202122.i, align 1
	%tmp93 = add i64 0, %Pos.0.reg2mem.0		
	%tmp98 = add i64 0, %Offset		
	%tmp100 = icmp ugt i64 %tmp98, %tmp93		
	br i1 %tmp100, label %bb31, label %bb103

bb103:		
	tail call void (i8*, ...) @IOLog( i8* getelementptr ([37 x i8], [37 x i8]* @.str35, i32 0, i32 0) ) nounwind 
	ret i32 0

bb107:		
	tail call void (i8*, ...) @IOLog( i8* getelementptr ([48 x i8], [48 x i8]* @.str36, i32 0, i32 0) ) nounwind 
	%tmp114115 = bitcast i8* %buffer to i16*		
	%tmp256 = lshr i64 %bufferSize, 1		
	%tmp256257 = trunc i64 %tmp256 to i32		
	%tmp258 = getelementptr i16, i16* %tmp114115, i32 %tmp256257		
	ret i32 0
}

define i32 @_Z17program_64B_blockyPm(i64 %Base, i32* %pData) nounwind  {
entry:
	unreachable
}

define i32 @_Z15ProgramByBlocksyy(i64 %Offset, i64 %bufferSize) nounwind  {
entry:
	ret i32 0
}
