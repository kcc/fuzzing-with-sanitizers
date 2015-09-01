

%0 = type { i8, i16, i32, i64, double, i32, [4 x i8] }
%struct.S1 = type { i8, i16, i32, i64, double, i32 }
%struct.S2 = type { [4 x i32] }
%struct.S3 = type { i8 }

@f1.s1 = internal unnamed_addr constant %0 { i8 1, i16 2, i32 3, i64 4, double 5.000000e+00, i32 6, [4 x i8] undef }, align 8
@f1.s2 = internal unnamed_addr constant %struct.S2 { [4 x i32] [i32 7, i32 8, i32 9, i32 10] }, align 4

define void @f1() nounwind {
entry:

















  %agg.tmp10 = alloca %struct.S3, align 4
  call void @callee1(float 2.000000e+01, %struct.S1* byval bitcast (%0* @f1.s1 to %struct.S1*)) nounwind
  call void @callee2(%struct.S2* byval @f1.s2) nounwind
  %tmp11 = getelementptr inbounds %struct.S3, %struct.S3* %agg.tmp10, i32 0, i32 0
  store i8 11, i8* %tmp11, align 4
  call void @callee3(float 2.100000e+01, %struct.S3* byval %agg.tmp10, %struct.S1* byval bitcast (%0* @f1.s1 to %struct.S1*)) nounwind
  ret void
}

declare void @callee1(float, %struct.S1* byval)

declare void @callee2(%struct.S2* byval)

declare void @callee3(float, %struct.S3* byval, %struct.S1* byval)

define void @f2(float %f, %struct.S1* nocapture byval %s1) nounwind {
entry:

















  %i2 = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 5
  %tmp = load i32, i32* %i2, align 4
  %d = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 4
  %tmp1 = load double, double* %d, align 8
  %ll = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 3
  %tmp2 = load i64, i64* %ll, align 8
  %i = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 2
  %tmp3 = load i32, i32* %i, align 4
  %s = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 1
  %tmp4 = load i16, i16* %s, align 2
  %c = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 0
  %tmp5 = load i8, i8* %c, align 1
  tail call void @callee4(i32 %tmp, double %tmp1, i64 %tmp2, i32 %tmp3, i16 signext %tmp4, i8 signext %tmp5, float %f) nounwind
  ret void
}

declare void @callee4(i32, double, i64, i32, i16 signext, i8 signext, float)

define void @f3(%struct.S2* nocapture byval %s2) nounwind {
entry:









  %arrayidx = getelementptr inbounds %struct.S2, %struct.S2* %s2, i32 0, i32 0, i32 0
  %tmp = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds %struct.S2, %struct.S2* %s2, i32 0, i32 0, i32 3
  %tmp3 = load i32, i32* %arrayidx2, align 4
  tail call void @callee4(i32 %tmp, double 2.000000e+00, i64 3, i32 %tmp3, i16 signext 4, i8 signext 5, float 6.000000e+00) nounwind
  ret void
}

define void @f4(float %f, %struct.S3* nocapture byval %s3, %struct.S1* nocapture byval %s1) nounwind {
entry:










  %i = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 2
  %tmp = load i32, i32* %i, align 4
  %i2 = getelementptr inbounds %struct.S1, %struct.S1* %s1, i32 0, i32 5
  %tmp1 = load i32, i32* %i2, align 4
  %c = getelementptr inbounds %struct.S3, %struct.S3* %s3, i32 0, i32 0
  %tmp2 = load i8, i8* %c, align 1
  tail call void @callee4(i32 %tmp, double 2.000000e+00, i64 3, i32 %tmp1, i16 signext 4, i8 signext %tmp2, float 6.000000e+00) nounwind
  ret void
}

%struct.S4 = type { [4 x i32] }

define void @f5(i64 %a0, %struct.S4* nocapture byval %a1) nounwind {
entry:
  tail call void @f6(%struct.S4* byval %a1, i64 %a0) nounwind
  ret void
}

declare void @f6(%struct.S4* nocapture byval, i64)
