

	%struct.CGLDI = type { %struct.cgli*, i32, i32, i32, i32, i32, i8*, i32, void (%struct.CGLSI*, i32, %struct.CGLDI*)*, i8*, %struct.vv_t }
	%struct.cgli = type { i32, %struct.cgli*, void (%struct.cgli*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i8*, i32*, %struct._cgro*, %struct._cgro*, float, float, float, float, i32, i8*, float, i8*, [16 x i32] }
	%struct.CGLSI = type { %struct.cgli*, i32, i8*, i8*, i32, i32, i8*, void (%struct.cgli*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32)*, %struct.vv_t, %struct.vv_t, %struct.xx_t* }
	%struct._cgro = type opaque
	%struct.xx_t = type { [3 x %struct.vv_t], [2 x %struct.vv_t], [2 x [3 x i8*]] }
	%struct.vv_t = type { <16 x i8> }
@llvm.used = appending global [1 x i8*] [ i8* bitcast (void (%struct.CGLSI*, i32, %struct.CGLDI*)* @lb to i8*) ], section "llvm.metadata"		

define void @lb(%struct.CGLSI* %src, i32 %n, %struct.CGLDI* %dst) nounwind {
entry:
	%0 = load i32, i32* null, align 4		
	%1 = icmp sgt i32 %0, 0		
	br i1 %1, label %bb.nph4945, label %return

bb.nph4945:		
	%2 = bitcast [2 x %struct.vv_t]* null to i64*		
	%3 = getelementptr [2 x i64], [2 x i64]* null, i32 0, i32 1		
	%4 = bitcast %struct.vv_t* null to i64*		
	%5 = getelementptr [2 x i64], [2 x i64]* null, i32 0, i32 1		
	br label %bb2326

bb2217:		
	%6 = or i64 0, 0		
	%7 = fptosi float 0.000000e+00 to i32		
	%8 = fptosi float 0.000000e+00 to i32		
	%9 = getelementptr float, float* null, i32 2		
	%10 = load float, float* %9, align 4		
	%11 = getelementptr float, float* null, i32 3		
	%12 = load float, float* %11, align 4		
	%13 = fmul float %10, 6.553500e+04		
	%14 = fadd float %13, 5.000000e-01		
	%15 = fmul float %12, 6.553500e+04		
	%16 = fadd float %15, 5.000000e-01		
	%17 = fcmp olt float %14, 0.000000e+00		
	%18 = fcmp olt float %16, 0.000000e+00		
	br i1 %18, label %bb2265, label %bb2262

bb2262:		
	%19 = fcmp ogt float %16, 6.553500e+04		
	br i1 %19, label %bb2264, label %bb2265

bb2264:		
	br label %bb2265

bb2265:		
	%f3596.0 = phi float [ 6.553500e+04, %bb2264 ], [ 0.000000e+00, %bb2217 ], [ %16, %bb2262 ]		
	%20 = fptosi float 0.000000e+00 to i32		
	%21 = fptosi float %f3596.0 to i32		
	%22 = zext i32 %7 to i64		
	%23 = shl i64 %22, 48		
	%24 = zext i32 %8 to i64		
	%25 = shl i64 %24, 32		
	%26 = sext i32 %20 to i64		
	%27 = shl i64 %26, 16		
	%28 = sext i32 %21 to i64		
	%29 = or i64 %25, %23		
	%30 = or i64 %29, %27		
	%31 = or i64 %30, %28		
	%32 = shl i64 %6, 48		
	%33 = shl i64 %31, 32		
	%34 = and i64 %33, 281470681743360		
	store i64 %6, i64* %2, align 16
	store i64 %31, i64* %3, align 8
	%35 = getelementptr i8, i8* null, i32 0		
	%36 = bitcast i8* %35 to float*		
	%37 = load float, float* %36, align 4		
	%38 = getelementptr float, float* %36, i32 1		
	%39 = load float, float* %38, align 4		
	%40 = fmul float %37, 6.553500e+04		
	%41 = fadd float %40, 5.000000e-01		
	%42 = fmul float %39, 6.553500e+04		
	%43 = fadd float %42, 5.000000e-01		
	%44 = fcmp olt float %41, 0.000000e+00		
	%45 = fcmp olt float %43, 0.000000e+00		
	br i1 %45, label %bb2277, label %bb2274

bb2274:		
	%46 = fcmp ogt float %43, 6.553500e+04		
	br label %bb2277

bb2277:		
	%f1582.0 = phi float [ 0.000000e+00, %bb2265 ], [ %43, %bb2274 ]		
	%47 = fptosi float 0.000000e+00 to i32		
	%48 = fptosi float %f1582.0 to i32		
	%49 = getelementptr float, float* %36, i32 2		
	%50 = load float, float* %49, align 4		
	%51 = getelementptr float, float* %36, i32 3		
	%52 = load float, float* %51, align 4		
	%53 = fmul float %50, 6.553500e+04		
	%54 = fadd float %53, 5.000000e-01		
	%55 = fmul float %52, 6.553500e+04		
	%56 = fadd float %55, 5.000000e-01		
	%57 = fcmp olt float %54, 0.000000e+00		
	%58 = fcmp olt float %56, 0.000000e+00		
	%59 = fptosi float 0.000000e+00 to i32		
	%60 = fptosi float 0.000000e+00 to i32		
	%61 = zext i32 %47 to i64		
	%62 = shl i64 %61, 48		
	%63 = zext i32 %48 to i64		
	%64 = shl i64 %63, 32		
	%65 = sext i32 %59 to i64		
	%66 = shl i64 %65, 16		
	%67 = sext i32 %60 to i64		
	%68 = or i64 %64, %62		
	%69 = or i64 %68, %66		
	%70 = or i64 %69, %67		
	%71 = getelementptr i8, i8* null, i32 0		
	%72 = bitcast i8* %71 to float*		
	%73 = load float, float* %72, align 4		
	%74 = getelementptr float, float* %72, i32 1		
	%75 = load float, float* %74, align 4		
	%76 = fmul float %73, 6.553500e+04		
	%77 = fadd float %76, 5.000000e-01		
	%78 = fmul float %75, 6.553500e+04		
	%79 = fadd float %78, 5.000000e-01		
	%80 = fcmp olt float %77, 0.000000e+00		
	br i1 %80, label %bb2295, label %bb2292

bb2292:		
	%81 = fcmp ogt float %77, 6.553500e+04		
	br i1 %81, label %bb2294, label %bb2295

bb2294:		
	br label %bb2295

bb2295:		
	%f0569.0 = phi float [ 6.553500e+04, %bb2294 ], [ 0.000000e+00, %bb2277 ], [ %77, %bb2292 ]		
	%82 = fcmp olt float %79, 0.000000e+00		
	%83 = fptosi float %f0569.0 to i32		
	%84 = fptosi float 0.000000e+00 to i32		
	%85 = getelementptr float, float* %72, i32 2		
	%86 = load float, float* %85, align 4		
	%87 = getelementptr float, float* %72, i32 3		
	%88 = load float, float* %87, align 4		
	%89 = fmul float %86, 6.553500e+04		
	%90 = fadd float %89, 5.000000e-01		
	%91 = fmul float %88, 6.553500e+04		
	%92 = fadd float %91, 5.000000e-01		
	%93 = fcmp olt float %90, 0.000000e+00		
	%94 = fcmp olt float %92, 0.000000e+00		
	%95 = fptosi float 0.000000e+00 to i32		
	%96 = fptosi float 0.000000e+00 to i32		
	%97 = zext i32 %83 to i64		
	%98 = shl i64 %97, 48		
	%99 = zext i32 %84 to i64		
	%100 = shl i64 %99, 32		
	%101 = sext i32 %95 to i64		
	%102 = shl i64 %101, 16		
	%103 = sext i32 %96 to i64		
	%104 = or i64 %100, %98		
	%105 = or i64 %104, %102		
	%106 = or i64 %105, %103		
	%107 = shl i64 %70, 16		
	%108 = and i64 %107, 4294901760		
	%109 = and i64 %106, 65535		
	%110 = or i64 %34, %32		
	%111 = or i64 %110, %108		
	%112 = or i64 %111, %109		
	store i64 %70, i64* %4, align 16
	store i64 %106, i64* %5, align 8
	%113 = icmp eq i64 %112, 0		
	br i1 %113, label %bb2325, label %bb2315

bb2315:		
	%114 = icmp eq %struct.xx_t* %159, null		
	br i1 %114, label %bb2318, label %bb2317

bb2317:		
	%115 = load i64, i64* %2, align 16		
	%116 = call i32 (...) @_u16a_cm( i64 %115, %struct.xx_t* %159, double 0.000000e+00, double 1.047551e+06 ) nounwind		
	%117 = sext i32 %116 to i64		
	store i64 %117, i64* %2, align 16
	%118 = load i64, i64* %3, align 8		
	%119 = call i32 (...) @_u16a_cm( i64 %118, %struct.xx_t* %159, double 0.000000e+00, double 1.047551e+06 ) nounwind		
	%120 = sext i32 %119 to i64		
	store i64 %120, i64* %3, align 8
	%121 = load i64, i64* %4, align 16		
	%122 = call i32 (...) @_u16a_cm( i64 %121, %struct.xx_t* %159, double 0.000000e+00, double 1.047551e+06 ) nounwind		
	%123 = sext i32 %122 to i64		
	store i64 %123, i64* %4, align 16
	%124 = load i64, i64* %5, align 8		
	%125 = call i32 (...) @_u16a_cm( i64 %124, %struct.xx_t* %159, double 0.000000e+00, double 1.047551e+06 ) nounwind		
	unreachable

bb2318:		
	%126 = getelementptr %struct.CGLSI, %struct.CGLSI* %src, i32 %indvar5021, i32 8		
	%127 = bitcast %struct.vv_t* %126 to i64*		
	%128 = load i64, i64* %127, align 8		
	%129 = trunc i64 %128 to i32		
	%130 = load i64, i64* %2, align 16		
	%131 = call i32 (...) @_u16_ff( i64 %130, i32 %129 ) nounwind		
	%132 = sext i32 %131 to i64		
	store i64 %132, i64* %2, align 16
	%133 = load i64, i64* %3, align 8		
	%134 = call i32 (...) @_u16_ff( i64 %133, i32 %129 ) nounwind		
	%135 = sext i32 %134 to i64		
	store i64 %135, i64* %3, align 8
	%136 = load i64, i64* %4, align 16		
	%137 = call i32 (...) @_u16_ff( i64 %136, i32 %129 ) nounwind		
	%138 = sext i32 %137 to i64		
	store i64 %138, i64* %4, align 16
	%139 = load i64, i64* %5, align 8		
	%140 = call i32 (...) @_u16_ff( i64 %139, i32 %129 ) nounwind		
	unreachable

bb2319:		
	%141 = getelementptr %struct.CGLSI, %struct.CGLSI* %src, i32 %indvar5021, i32 2		
	%142 = load i8*, i8** %141, align 4		
	%143 = getelementptr i8, i8* %142, i32 0		
	%144 = call i32 (...) @_u16_sf32( double 0.000000e+00, double 6.553500e+04, double 5.000000e-01, i8* %143 ) nounwind		
	%145 = sext i32 %144 to i64		
	%146 = getelementptr i8, i8* %142, i32 0		
	%147 = call i32 (...) @_u16_sf32( double 0.000000e+00, double 6.553500e+04, double 5.000000e-01, i8* %146 ) nounwind		
	%148 = sext i32 %147 to i64		
	%149 = shl i64 %145, 48		
	%150 = shl i64 %148, 32		
	%151 = and i64 %150, 281470681743360		
	store i64 %145, i64* %2, align 16
	store i64 %148, i64* %3, align 8
	%152 = getelementptr i8, i8* %142, i32 0		
	%153 = call i32 (...) @_u16_sf32( double 0.000000e+00, double 6.553500e+04, double 5.000000e-01, i8* %152 ) nounwind		
	%154 = sext i32 %153 to i64		
	%155 = getelementptr i8, i8* %142, i32 0		
	%156 = call i32 (...) @_u16_sf32( double 0.000000e+00, double 6.553500e+04, double 5.000000e-01, i8* %155 ) nounwind		
	unreachable

bb2325:		
	%indvar.next5145 = add i32 %indvar5021, 1		
	br label %bb2326

bb2326:		
	%indvar5021 = phi i32 [ 0, %bb.nph4945 ], [ %indvar.next5145, %bb2325 ]		
	%157 = icmp slt i32 %indvar5021, %n		
	%158 = getelementptr %struct.CGLSI, %struct.CGLSI* %src, i32 %indvar5021, i32 10		
	%159 = load %struct.xx_t*, %struct.xx_t** %158, align 4		
	%160 = getelementptr %struct.CGLSI, %struct.CGLSI* %src, i32 %indvar5021, i32 1		
	%161 = load i32, i32* %160, align 4		
	%162 = and i32 %161, 255		
	switch i32 %162, label %bb2325 [
		 i32 59, label %bb2217
		 i32 60, label %bb2319
	]

return:		
	ret void
}

declare i32 @_u16_ff(...)

declare i32 @_u16a_cm(...)

declare i32 @_u16_sf32(...)
