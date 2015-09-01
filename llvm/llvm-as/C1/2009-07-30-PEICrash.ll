

	%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
	%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
	%struct.JQUANT_TBL = type { [64 x i16], i32 }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { i8*, i32 }
	%struct.anon = type { [8 x i32], [48 x i8] }
	%struct.backing_store_info = type { void (%struct.jpeg_common_struct*, %struct.backing_store_info*, i8*, i32, i32)*, void (%struct.jpeg_common_struct*, %struct.backing_store_info*, i8*, i32, i32)*, void (%struct.jpeg_common_struct*, %struct.backing_store_info*)*, %struct.FILE*, [64 x i8] }
	%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
	%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
	%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
	%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
	%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
	%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
	%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
	%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
	%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
	%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
	%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %struct.anon, i32, i32, i8**, i32, i8**, i32, i32 }
	%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
	%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
	%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
	%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i32)*, i8* (%struct.jpeg_common_struct*, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, void (%struct.jpeg_common_struct*)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, i32 }
	%struct.jpeg_progress_mgr = type { void (%struct.jpeg_common_struct*)*, i32, i32, i32, i32 }
	%struct.jpeg_source_mgr = type { i8*, i32, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i32)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
	%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
	%struct.jvirt_barray_control = type { [64 x i16]**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.jvirt_barray_control*, %struct.backing_store_info }
	%struct.jvirt_sarray_control = type { i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.jvirt_sarray_control*, %struct.backing_store_info }

define void @jpeg_idct_float(%struct.jpeg_decompress_struct* nocapture %cinfo, %struct.jpeg_component_info* nocapture %compptr, i16* nocapture %coef_block, i8** nocapture %output_buf, i32 %output_col) nounwind {
entry:
	%workspace = alloca [64 x float], align 4		
	%0 = load i8*, i8** undef, align 4		
	br label %bb

bb:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%tmp39 = add i32 %indvar, 8		
	%tmp41 = add i32 %indvar, 16		
	%scevgep42 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp41		
	%tmp43 = add i32 %indvar, 24		
	%scevgep44 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp43		
	%tmp45 = add i32 %indvar, 32		
	%scevgep46 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp45		
	%tmp47 = add i32 %indvar, 40		
	%scevgep48 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp47		
	%tmp49 = add i32 %indvar, 48		
	%scevgep50 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp49		
	%tmp51 = add i32 %indvar, 56		
	%scevgep52 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp51		
	%wsptr.119 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %indvar		
	%tmp54 = shl i32 %indvar, 2		
	%scevgep76 = getelementptr i8, i8* undef, i32 %tmp54		
	%quantptr.118 = bitcast i8* %scevgep76 to float*		
	%scevgep79 = getelementptr i16, i16* %coef_block, i32 %tmp41		
	%inptr.117 = getelementptr i16, i16* %coef_block, i32 %indvar		
	%1 = load i16, i16* null, align 2		
	%2 = load i16, i16* undef, align 2		
	%3 = load i16, i16* %inptr.117, align 2		
	%4 = sitofp i16 %3 to float		
	%5 = load float, float* %quantptr.118, align 4		
	%6 = fmul float %4, %5		
	%7 = fsub float %6, undef		
	%8 = fmul float undef, 0x3FF6A09E60000000		
	%9 = fsub float %8, 0.000000e+00		
	%10 = fadd float undef, 0.000000e+00		
	%11 = fadd float %7, %9		
	%12 = fsub float %7, %9		
	%13 = sitofp i16 %1 to float		
	%14 = fmul float %13, undef		
	%15 = sitofp i16 %2 to float		
	%16 = load float, float* undef, align 4		
	%17 = fmul float %15, %16		
	%18 = fadd float %14, undef		
	%19 = fsub float %14, undef		
	%20 = fadd float undef, %17		
	%21 = fadd float %20, %18		
	%22 = fsub float %20, %18		
	%23 = fmul float %22, 0x3FF6A09E60000000		
	%24 = fadd float %19, undef		
	%25 = fmul float %24, 0x3FFD906BC0000000		
	%26 = fmul float undef, 0x3FF1517A80000000		
	%27 = fsub float %26, %25		
	%28 = fmul float %19, 0xC004E7AEA0000000		
	%29 = fadd float %28, %25		
	%30 = fsub float %29, %21		
	%31 = fsub float %23, %30		
	%32 = fadd float %27, %31		
	%33 = fadd float %10, %21		
	store float %33, float* %wsptr.119, align 4
	%34 = fsub float %10, %21		
	store float %34, float* %scevgep52, align 4
	%35 = fadd float %11, %30		
	store float %35, float* null, align 4
	%36 = fsub float %11, %30		
	store float %36, float* %scevgep50, align 4
	%37 = fadd float %12, %31		
	store float %37, float* %scevgep42, align 4
	%38 = fsub float %12, %31		
	store float %38, float* %scevgep48, align 4
	%39 = fadd float undef, %32		
	store float %39, float* %scevgep46, align 4
	store float undef, float* %scevgep44, align 4
	%indvar.next = add i32 %indvar, 1		
	br i1 undef, label %bb6, label %bb

bb6:		
	%.sum10 = add i32 %output_col, 1		
	%.sum8 = add i32 %output_col, 6		
	%.sum6 = add i32 %output_col, 2		
	%.sum = add i32 %output_col, 3		
	br label %bb8

bb8:		
	%ctr.116 = phi i32 [ 0, %bb6 ], [ %88, %bb8 ]		
	%scevgep = getelementptr i8*, i8** %output_buf, i32 %ctr.116		
	%tmp = shl i32 %ctr.116, 3		
	%tmp2392 = or i32 %tmp, 4		
	%scevgep24 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp2392		
	%tmp2591 = or i32 %tmp, 2		
	%scevgep26 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp2591		
	%tmp2790 = or i32 %tmp, 6		
	%scevgep28 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp2790		
	%tmp3586 = or i32 %tmp, 7		
	%wsptr.215 = getelementptr [64 x float], [64 x float]* %workspace, i32 0, i32 %tmp		
	%40 = load i8*, i8** %scevgep, align 4		
	%41 = load float, float* %wsptr.215, align 4		
	%42 = load float, float* %scevgep24, align 4		
	%43 = fadd float %41, %42		
	%44 = load float, float* %scevgep26, align 4		
	%45 = load float, float* %scevgep28, align 4		
	%46 = fadd float %44, %45		
	%47 = fsub float %43, %46		
	%48 = fsub float undef, 0.000000e+00		
	%49 = fadd float 0.000000e+00, undef		
	%50 = fptosi float %49 to i32		
	%51 = add i32 %50, 4		
	%52 = lshr i32 %51, 3		
	%53 = and i32 %52, 1023		
	%.sum14 = add i32 %53, 128		
	%54 = getelementptr i8, i8* %0, i32 %.sum14		
	%55 = load i8, i8* %54, align 1		
	store i8 %55, i8* null, align 1
	%56 = getelementptr i8, i8* %40, i32 %.sum10		
	store i8 0, i8* %56, align 1
	%57 = load i8, i8* null, align 1		
	%58 = getelementptr i8, i8* %40, i32 %.sum8		
	store i8 %57, i8* %58, align 1
	%59 = fadd float undef, %48		
	%60 = fptosi float %59 to i32		
	%61 = add i32 %60, 4		
	%62 = lshr i32 %61, 3		
	%63 = and i32 %62, 1023		
	%.sum7 = add i32 %63, 128		
	%64 = getelementptr i8, i8* %0, i32 %.sum7		
	%65 = load i8, i8* %64, align 1		
	%66 = getelementptr i8, i8* %40, i32 %.sum6		
	store i8 %65, i8* %66, align 1
	%67 = fptosi float undef to i32		
	%68 = add i32 %67, 4		
	%69 = lshr i32 %68, 3		
	%70 = and i32 %69, 1023		
	%.sum5 = add i32 %70, 128		
	%71 = getelementptr i8, i8* %0, i32 %.sum5		
	%72 = load i8, i8* %71, align 1		
	store i8 %72, i8* undef, align 1
	%73 = fadd float %47, undef		
	%74 = fptosi float %73 to i32		
	%75 = add i32 %74, 4		
	%76 = lshr i32 %75, 3		
	%77 = and i32 %76, 1023		
	%.sum3 = add i32 %77, 128		
	%78 = getelementptr i8, i8* %0, i32 %.sum3		
	%79 = load i8, i8* %78, align 1		
	store i8 %79, i8* undef, align 1
	%80 = fsub float %47, undef		
	%81 = fptosi float %80 to i32		
	%82 = add i32 %81, 4		
	%83 = lshr i32 %82, 3		
	%84 = and i32 %83, 1023		
	%.sum1 = add i32 %84, 128		
	%85 = getelementptr i8, i8* %0, i32 %.sum1		
	%86 = load i8, i8* %85, align 1		
	%87 = getelementptr i8, i8* %40, i32 %.sum		
	store i8 %86, i8* %87, align 1
	%88 = add i32 %ctr.116, 1		
	%exitcond = icmp eq i32 %88, 8		
	br i1 %exitcond, label %return, label %bb8

return:		
	ret void
}
