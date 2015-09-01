

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"
%struct.kmem_cache_order_objects = type { i64 }
declare i8* @memset(i8*, i32, i64)
define void @unxlate_dev_mem_ptr(i64 %phis, i8* %addr) nounwind {
  %pte.addr.i = alloca %struct.kmem_cache_order_objects*
  %call8 = call i8* @memset(i8* bitcast ([512 x %struct.kmem_cache_order_objects]* @bm_pte to i8*), i32 0, i64 4096)




  ret void
}
@bm_pte = internal global [512 x %struct.kmem_cache_order_objects] zeroinitializer, section ".bss.page_aligned", align 4096





