


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:128:128-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.9.0"


define void @test(double* %i1, double* %i2, double* %o) {





entry:
  %i1.0 = load double, double* %i1, align 16
  %i1.gep1 = getelementptr double, double* %i1, i64 1
  %i1.1 = load double, double* %i1.gep1, align 16




  br i1 undef, label %then, label %end

then:
  %i2.gep0 = getelementptr inbounds double, double* %i2, i64 0
  %i2.0 = load double, double* %i2.gep0, align 16
  %i2.gep1 = getelementptr inbounds double, double* %i2, i64 1
  %i2.1 = load double, double* %i2.gep1, align 16




  br label %end

end:
  %phi0 = phi double [ %i1.0, %entry ], [ %i2.0, %then ]
  %phi1 = phi double [ %i1.1, %entry ], [ %i2.1, %then ]



  store double %phi0, double* %o, align 16
  %o.gep1 = getelementptr inbounds double, double* %o, i64 1
  store double %phi1, double* %o.gep1, align 16
  ret void
}
