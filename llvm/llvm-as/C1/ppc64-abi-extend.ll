


target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

@si = common global i32 0, align 4
@ui = common global i32 0, align 4

declare void @arg_si(i32 signext)
declare void @arg_ui(i32 zeroext)

declare signext i32 @ret_si()
declare zeroext i32 @ret_ui()

define void @pass_arg_si() nounwind {
entry:
  %0 = load i32, i32* @si, align 4
  tail call void @arg_si(i32 signext %0) nounwind
  ret void
}




define void @pass_arg_ui() nounwind {
entry:
  %0 = load i32, i32* @ui, align 4
  tail call void @arg_ui(i32 zeroext %0) nounwind
  ret void
}




define i64 @use_arg_si(i32 signext %x) nounwind readnone {
entry:
  %conv = sext i32 %x to i64
  ret i64 %conv
}




define i64 @use_arg_ui(i32 zeroext %x) nounwind readnone {
entry:
  %conv = zext i32 %x to i64
  ret i64 %conv
}




define signext i32 @pass_ret_si() nounwind readonly {
entry:
  %0 = load i32, i32* @si, align 4
  ret i32 %0
}




define zeroext i32 @pass_ret_ui() nounwind readonly {
entry:
  %0 = load i32, i32* @ui, align 4
  ret i32 %0
}




define i64 @use_ret_si() nounwind {
entry:
  %call = tail call signext i32 @ret_si() nounwind
  %conv = sext i32 %call to i64
  ret i64 %conv
}







define i64 @use_ret_ui() nounwind {
entry:
  %call = tail call zeroext i32 @ret_ui() nounwind
  %conv = zext i32 %call to i64
  ret i64 %conv
}







