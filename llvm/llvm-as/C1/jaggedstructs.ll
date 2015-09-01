





target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%struct.S3 = type { [3 x i8] }
%struct.S5 = type { [5 x i8] }
%struct.S6 = type { [6 x i8] }
%struct.S7 = type { [7 x i8] }

define void @test(%struct.S3* byval %s3, %struct.S5* byval %s5, %struct.S6* byval %s6, %struct.S7* byval %s7) nounwind {
entry:
  call void @check(%struct.S3* byval %s3, %struct.S5* byval %s5, %struct.S6* byval %s6, %struct.S7* byval %s7)
  ret void
}




























declare void @check(%struct.S3* byval, %struct.S5* byval, %struct.S6* byval, %struct.S7* byval)
