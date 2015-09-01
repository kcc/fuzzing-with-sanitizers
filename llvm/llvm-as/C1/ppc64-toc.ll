
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

@double_array = global [32 x double] zeroinitializer, align 8
@number64 = global i64 10, align 8
@internal_static_var.x = internal unnamed_addr global i64 0, align 8

define i64 @access_int64(i64 %a) nounwind readonly {
entry:







  %0 = load i64, i64* @number64, align 8

  %cmp = icmp eq i64 %0, %a
  %conv1 = zext i1 %cmp to i64 
  ret i64 %conv1
}

define i64 @internal_static_var(i64 %a) nounwind {
entry:


  %0 = load i64, i64* @internal_static_var.x, align 8
  %cmp = icmp eq i64 %0, %a
  %conv1 = zext i1 %cmp to i64 
  ret i64 %conv1 
}

define i32 @access_double(double %a) nounwind readnone {
entry:


  %cmp = fcmp oeq double %a, 2.000000e+00
  %conv = zext i1 %cmp to i32 
  ret i32 %conv
}


define i32 @access_double_array(double %a, i32 %i) nounwind readonly {
entry:

  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [32 x double], [32 x double]* @double_array, i64 0, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8

  %cmp = fcmp oeq double %0, %a
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}














