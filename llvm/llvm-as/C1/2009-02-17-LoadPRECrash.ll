

	%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
	%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
	%struct.block_symbol = type { [3 x %struct.cgraph_rtl_info], %struct.object_block*, i64 }
	%struct.cgraph_rtl_info = type { i32 }
	%struct.object_block = type { %struct.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
	%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
	%struct.rtx_def = type { i16, i8, i8, %struct.u }
	%struct.section = type { %struct.unnamed_section }
	%struct.u = type { %struct.block_symbol }
	%struct.unnamed_section = type { %struct.cgraph_rtl_info, void (i8*)*, i8*, %struct.section* }

declare %struct.rtvec_def* @gen_rtvec(i32, ...)

declare %struct.rtx_def* @plus_constant(%struct.rtx_def*, i64)

declare %struct.rtx_def* @gen_rtx_fmt_Ei(i32, i32, %struct.rtvec_def*, i32)

declare i32 @local_symbolic_operand(%struct.rtx_def*, i32)

define %struct.rtx_def* @legitimize_pic_address(%struct.rtx_def* %orig, %struct.rtx_def* %reg) nounwind {
entry:
	%addr = alloca %struct.rtx_def*		
	%iftmp.1532 = alloca %struct.rtx_def*		
	store %struct.rtx_def* %orig, %struct.rtx_def** null
	%0 = load %struct.rtx_def*, %struct.rtx_def** null, align 4		
	br i1 false, label %bb96, label %bb59

bb59:		
	%1 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 4		
	%2 = call i32 @local_symbolic_operand(%struct.rtx_def* %1, i32 0) nounwind		
	br i1 false, label %bb96, label %bb63

bb63:		
	br i1 false, label %bb64, label %bb74

bb64:		
	br i1 false, label %bb72, label %bb65

bb65:		
	br label %bb72

bb72:		
	br label %bb74

bb74:		
	br i1 false, label %bb75, label %bb76

bb75:		
	br label %bb76

bb76:		
	br i1 false, label %bb77, label %bb84

bb77:		
	%3 = getelementptr [1 x %struct.cgraph_rtl_info], [1 x %struct.cgraph_rtl_info]* null, i32 0, i32 0		
	unreachable

bb84:		
	br i1 false, label %bb85, label %bb86

bb85:		
	br label %bb87

bb86:		
	br label %bb87

bb87:		
	%4 = call %struct.rtx_def* @gen_rtx_fmt_Ei(i32 16, i32 0, %struct.rtvec_def* null, i32 1) nounwind		
	br i1 false, label %bb89, label %bb90

bb89:		
	br label %bb91

bb90:		
	br label %bb91

bb91:		
	br i1 false, label %bb92, label %bb93

bb92:		
	br label %bb94

bb93:		
	br label %bb94

bb94:		
	unreachable

bb96:		
	%5 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 4		
	%6 = getelementptr %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 0		
	%7 = load i16, i16* %6, align 2		
	br i1 false, label %bb147, label %bb97

bb97:		
	%8 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 4		
	br i1 false, label %bb147, label %bb99

bb99:		
	unreachable

bb147:		
	%9 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 4		
	%10 = getelementptr %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 0		
	%11 = load i16, i16* %10, align 2		
	br i1 false, label %bb164, label %bb148

bb148:		
	br i1 false, label %bb164, label %bb149

bb149:		
	br i1 false, label %bb150, label %bb152

bb150:		
	unreachable

bb152:		
	br label %bb164

bb164:		
	%12 = getelementptr [1 x %struct.cgraph_rtl_info], [1 x %struct.cgraph_rtl_info]* null, i32 0, i32 1		
	br i1 false, label %bb165, label %bb166

bb165:		
	br label %bb167

bb166:		
	br label %bb167

bb167:		
	br i1 false, label %bb211, label %bb168

bb168:		
	br i1 false, label %bb211, label %bb170

bb170:		
	br i1 false, label %bb172, label %bb181

bb172:		
	br i1 false, label %bb179, label %bb174

bb174:		
	br i1 false, label %bb177, label %bb175

bb175:		
	br i1 false, label %bb177, label %bb176

bb176:		
	br label %bb178

bb177:		
	br label %bb178

bb178:		
	br label %bb180

bb179:		
	br label %bb180

bb180:		
	br label %bb181

bb181:		
	%13 = call %struct.rtvec_def* (i32, ...) @gen_rtvec(i32 1, %struct.rtx_def* null) nounwind		
	unreachable

bb211:		
	%14 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 4		
	%15 = getelementptr [1 x %struct.cgraph_rtl_info], [1 x %struct.cgraph_rtl_info]* null, i32 0, i32 0		
	store %struct.rtx_def* null, %struct.rtx_def** null, align 4
	br i1 false, label %bb212, label %bb213

bb212:		
	store %struct.rtx_def* null, %struct.rtx_def** %iftmp.1532, align 4
	br label %bb214

bb213:		
	store %struct.rtx_def* null, %struct.rtx_def** %iftmp.1532, align 4
	br label %bb214

bb214:		
	%16 = bitcast %struct.block_symbol* null to [1 x %struct.cgraph_rtl_info]*		
	%17 = getelementptr [1 x %struct.cgraph_rtl_info], [1 x %struct.cgraph_rtl_info]* %16, i32 0, i32 1		
	%18 = load %struct.rtx_def*, %struct.rtx_def** %iftmp.1532, align 4		
	%19 = getelementptr %struct.rtx_def, %struct.rtx_def* null, i32 0, i32 3		
	%20 = getelementptr %struct.u, %struct.u* %19, i32 0, i32 0		
	%21 = bitcast %struct.block_symbol* %20 to [1 x i64]*		
	%22 = getelementptr [1 x i64], [1 x i64]* %21, i32 0, i32 0		
	%23 = call %struct.rtx_def* @plus_constant(%struct.rtx_def* null, i64 0) nounwind		
	unreachable
}
