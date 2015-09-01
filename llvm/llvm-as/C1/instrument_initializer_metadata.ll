
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"
@xxx = internal global i32 0, align 4  
@XXX = global i32 0, align 4           
@yyy = internal global i32 0, align 4  
@YYY = global i32 0, align 4           


!0 = !{i32* @xxx, null, null, i1 true, i1 false}
!1 = !{i32* @XXX, null, null, i1 true, i1 false}
!2 = !{i32* @yyy, null, null, i1 false, i1 false}
!3 = !{i32* @YYY, null, null, i1 false, i1 false}
!llvm.asan.globals = !{!0, !1, !2, !3}

define i32 @initializer() uwtable {
entry:
  ret i32 42
}

define internal void @__cxx_global_var_init() section ".text.startup" {
entry:
  %call = call i32 @initializer()
  store i32 %call, i32* @xxx, align 4
  ret void
}

@llvm.global_ctors = appending global [2 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @__late_ctor }, { i32, void ()* } { i32 0, void ()* @__early_ctor }]

define internal void @__late_ctor() sanitize_address section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}












define internal void @__early_ctor() sanitize_address section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}





define void @touch_xxx() sanitize_address {
  store i32 0, i32 *@xxx, align 4
  ret void



}


define void @touch_XXX() sanitize_address {
  store i32 0, i32 *@XXX, align 4
  ret void



}



define void @touch_yyy() sanitize_address {
  store i32 0, i32 *@yyy, align 4
  ret void



}


define void @touch_YYY() sanitize_address {
  store i32 0, i32 *@YYY, align 4
  ret void



}
