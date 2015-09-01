

target triple = "arm-apple-darwin9"
@a = external global double		
@N = external global double		

declare double @llvm.exp.f64(double) nounwind readonly

define fastcc void @findratio(double* nocapture %res1, double* nocapture %res2) nounwind {
bb.thread:
	br label %bb52

bb32:		
	%0 = fadd double 0.000000e+00, 0.000000e+00		
	%1 = add i32 %j.1, 1		
	br label %bb52

bb52:		
	%i.3494 = phi i32 [ 0, %bb.thread ], [ %3, %bb53 ], [ %i.3494, %bb32 ]		
	%k.4 = phi double [ %0, %bb32 ], [ 0.000000e+00, %bb53 ], [ 0.000000e+00, %bb.thread ]		
	%j.1 = phi i32 [ %1, %bb32 ], [ 0, %bb53 ], [ 0, %bb.thread ]		
	%2 = icmp sgt i32 %j.1, 99		
	br i1 %2, label %bb53, label %bb32

bb53:		
	%3 = add i32 %i.3494, 1		
	%phitmp = icmp sgt i32 %3, 999999		
	br i1 %phitmp, label %bb55, label %bb52

bb55:		
	%4 = load double, double* @a, align 4		
	%5 = fadd double %4, 0.000000e+00		
	%6 = fcmp ogt double %k.4, 0.000000e+00		
	%.pn404 = fmul double %4, %4		
	%.pn402 = fmul double %5, %5		
	%.pn165.in = load double, double* @N		
	%.pn198 = fmul double 0.000000e+00, %5		
	%.pn185 = fsub double -0.000000e+00, 0.000000e+00		
	%.pn147 = fsub double -0.000000e+00, 0.000000e+00		
	%.pn141 = fdiv double 0.000000e+00, %4		
	%.pn142 = fdiv double 0.000000e+00, %5		
	%.pn136 = fdiv double 0.000000e+00, 0.000000e+00		
	%.pn132 = fdiv double 0.000000e+00, %5		
	%.pn123 = fdiv double 0.000000e+00, 0.000000e+00		
	%.pn124 = fdiv double 0.000000e+00, %.pn198		
	%.pn120 = fdiv double 0.000000e+00, 0.000000e+00		
	%.pn117 = fdiv double 0.000000e+00, %4		
	%.pn118 = fdiv double %.pn185, %5		
	%.pn88 = fdiv double %.pn147, %5		
	%.pn81 = fsub double %.pn141, %.pn142		
	%.pn77 = fsub double 0.000000e+00, %.pn136		
	%.pn75 = fsub double 0.000000e+00, %.pn132		
	%.pn69 = fsub double %.pn123, %.pn124		
	%.pn67 = fsub double 0.000000e+00, %.pn120		
	%.pn56 = fsub double %.pn117, %.pn118		
	%.pn42 = fsub double 0.000000e+00, %.pn88		
	%.pn60 = fmul double %.pn81, 0.000000e+00		
	%.pn57 = fadd double %.pn77, 0.000000e+00		
	%.pn58 = fmul double %.pn75, %.pn165.in		
	%.pn32 = fadd double %.pn69, 0.000000e+00		
	%.pn33 = fmul double %.pn67, %.pn165.in		
	%.pn17 = fsub double 0.000000e+00, %.pn60		
	%.pn9 = fadd double %.pn57, %.pn58		
	%.pn30 = fmul double 0.000000e+00, %.pn56		
	%.pn24 = fmul double 0.000000e+00, %.pn42		
	%.pn1 = fadd double %.pn32, %.pn33		
	%.pn28 = fsub double %.pn30, 0.000000e+00		
	%.pn26 = fadd double %.pn28, 0.000000e+00		
	%.pn22 = fsub double %.pn26, 0.000000e+00		
	%.pn20 = fsub double %.pn24, 0.000000e+00		
	%.pn18 = fadd double %.pn22, 0.000000e+00		
	%.pn16 = fadd double %.pn20, 0.000000e+00		
	%.pn14 = fsub double %.pn18, 0.000000e+00		
	%.pn12 = fsub double %.pn16, %.pn17		
	%.pn10 = fadd double %.pn14, 0.000000e+00		
	%.pn8 = fadd double %.pn12, 0.000000e+00		
	%.pn6 = fsub double %.pn10, 0.000000e+00		
	%.pn4 = fsub double %.pn8, %.pn9		
	%.pn2 = fadd double %.pn6, 0.000000e+00		
	%.pn = fadd double %.pn4, 0.000000e+00		
	%N1.0 = fsub double %.pn2, 0.000000e+00		
	%D1.0 = fsub double %.pn, %.pn1		
	br i1 %6, label %bb62, label %bb64

bb62:		
	%7 = fmul double 0.000000e+00, %4		
	%8 = fsub double -0.000000e+00, %7		
	%9 = fmul double 0.000000e+00, %5		
	%10 = fsub double -0.000000e+00, %9		
	%11 = fmul double %.pn404, %4		
	%12 = fmul double %.pn402, %5		
	%13 = fmul double 0.000000e+00, -2.000000e+00		
	%14 = fdiv double 0.000000e+00, %.pn402		
	%15 = fsub double 0.000000e+00, %14		
	%16 = fmul double 0.000000e+00, %15		
	%17 = fadd double %13, %16		
	%18 = fmul double %.pn165.in, -2.000000e+00		
	%19 = fmul double %18, 0.000000e+00		
	%20 = fadd double %17, %19		
	%21 = fmul double 0.000000e+00, %20		
	%22 = fadd double 0.000000e+00, %21		
	%23 = fdiv double 0.000000e+00, %12		
	%24 = fsub double 0.000000e+00, %23		
	%25 = fmul double %18, 0.000000e+00		
	%26 = fadd double 0.000000e+00, %25		
	%27 = fmul double 0.000000e+00, %26		
	%28 = fsub double %22, %27		
	%29 = fmul double %11, %4		
	%30 = fmul double %12, %5		
	%31 = fmul double %.pn165.in, -4.000000e+00		
	%32 = fmul double %.pn165.in, 0x3FF5555555555555		
	%33 = fmul double %32, 0.000000e+00		
	%34 = fadd double %28, 0.000000e+00		
	%35 = fsub double -0.000000e+00, 0.000000e+00		
	%36 = fdiv double %35, %11		
	%37 = fdiv double 0.000000e+00, %12		
	%38 = fsub double %36, %37		
	%39 = fmul double 0.000000e+00, %38		
	%40 = fadd double 0.000000e+00, %39		
	%41 = fadd double %40, 0.000000e+00		
	%42 = fadd double %41, 0.000000e+00		
	%43 = fmul double %42, 0.000000e+00		
	%44 = fsub double %34, %43		
	%45 = tail call double @llvm.exp.f64(double %8) nounwind		
	%46 = fsub double -0.000000e+00, %45		
	%47 = fdiv double %46, 0.000000e+00		
	%48 = fmul double %30, %5		
	%49 = fdiv double 0.000000e+00, %48		
	%50 = fsub double %47, %49		
	%51 = fmul double %50, -4.000000e+00		
	%52 = fadd double %51, 0.000000e+00		
	%53 = fdiv double %46, %11		
	%54 = fsub double %53, 0.000000e+00		
	%55 = fmul double %31, %54		
	%56 = fadd double %52, %55		
	%57 = fadd double %56, 0.000000e+00		
	%58 = fadd double %44, %57		
	%59 = fsub double %58, 0.000000e+00		
	%60 = tail call double @llvm.exp.f64(double 0.000000e+00) nounwind		
	%61 = fsub double -0.000000e+00, %60		
	%62 = fdiv double 0.000000e+00, -6.000000e+00		
	%63 = fdiv double %61, %5		
	%64 = fsub double 0.000000e+00, %63		
	%65 = fmul double %62, %64		
	%66 = fsub double 0.000000e+00, %65		
	%67 = fsub double -0.000000e+00, 0.000000e+00		
	%68 = tail call double @llvm.exp.f64(double %10) nounwind		
	%69 = fsub double -0.000000e+00, %68		
	%70 = fdiv double %67, %.pn404		
	%71 = fdiv double %69, %.pn402		
	%72 = fsub double %70, %71		
	%73 = fmul double %72, -5.000000e-01		
	%74 = fdiv double %67, %4		
	%75 = fdiv double %69, %5		
	%76 = fsub double %74, %75		
	%77 = fmul double %76, 0.000000e+00		
	%78 = fadd double %73, %77		
	%79 = fmul double 0.000000e+00, %78		
	%80 = fadd double %66, %79		
	%81 = fdiv double 0.000000e+00, %.pn404		
	%82 = fdiv double 0.000000e+00, %.pn402		
	%83 = fsub double %81, %82		
	%84 = fmul double %83, -5.000000e-01		
	%85 = fdiv double 0.000000e+00, %4		
	%86 = fdiv double 0.000000e+00, %5		
	%87 = fsub double %85, %86		
	%88 = fmul double %87, 0.000000e+00		
	%89 = fadd double %84, %88		
	%90 = fmul double 0.000000e+00, %89		
	%91 = fsub double %80, %90		
	%92 = tail call double @llvm.exp.f64(double %8) nounwind		
	%93 = fsub double -0.000000e+00, %92		
	%94 = tail call double @llvm.exp.f64(double %10) nounwind		
	%95 = fsub double -0.000000e+00, %94		
	%96 = fdiv double %95, %.pn402		
	%97 = fsub double 0.000000e+00, %96		
	%98 = fmul double 0.000000e+00, %97		
	%99 = fdiv double %93, %11		
	%100 = fdiv double %95, %12		
	%101 = fsub double %99, %100		
	%102 = fsub double %98, %101		
	%103 = fdiv double %95, %5		
	%104 = fsub double 0.000000e+00, %103		
	%105 = fmul double %18, %104		
	%106 = fadd double %102, %105		
	%107 = fmul double %106, %k.4		
	%108 = fadd double %91, %107		
	%109 = fsub double %108, 0.000000e+00		
	%110 = tail call double @llvm.exp.f64(double %8) nounwind		
	%111 = fsub double -0.000000e+00, %110		
	%112 = tail call double @llvm.exp.f64(double %10) nounwind		
	%113 = fsub double -0.000000e+00, %112		
	%114 = fdiv double %111, %11		
	%115 = fdiv double %113, %12		
	%116 = fsub double %114, %115		
	%117 = fmul double 0.000000e+00, %116		
	%118 = fdiv double %111, %29		
	%119 = fdiv double %113, %30		
	%120 = fsub double %118, %119		
	%121 = fsub double %117, %120		
	%122 = fmul double %18, 0.000000e+00		
	%123 = fadd double %121, %122		
	%124 = fmul double %33, 0.000000e+00		
	%125 = fadd double %123, %124		
	%126 = fadd double %109, %125		
	%127 = tail call double @llvm.exp.f64(double 0.000000e+00) nounwind		
	%128 = fsub double -0.000000e+00, %127		
	%129 = fdiv double %128, %30		
	%130 = fsub double 0.000000e+00, %129		
	%131 = fsub double 0.000000e+00, %130		
	%132 = fdiv double 0.000000e+00, %.pn404		
	%133 = fsub double %132, 0.000000e+00		
	%134 = fmul double %18, %133		
	%135 = fadd double %131, %134		
	%136 = fdiv double %128, %5		
	%137 = fsub double 0.000000e+00, %136		
	%138 = fmul double %33, %137		
	%139 = fadd double %135, %138		
	%140 = fsub double %126, %139		
	%141 = fadd double %N1.0, %59		
	%142 = fadd double %D1.0, %140		
	br label %bb64

bb64:		
	%N1.0.pn = phi double [ %141, %bb62 ], [ %N1.0, %bb55 ]		
	%D1.0.pn = phi double [ %142, %bb62 ], [ %D1.0, %bb55 ]		
	%x.1 = fdiv double %N1.0.pn, %D1.0.pn		
	ret void
}
