
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"
target triple = "i386-apple-darwin9.0.0"

%0 = type { i32, i1 }

declare %0 @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

define linkonce_odr hidden void @_ZN2js5QueueINS_7SlotMap8SlotInfoEE6ensureEj(i8* nocapture %this, i32 %size) nounwind align 2 {
  br i1 undef, label %14, label %1


  br i1 undef, label %2, label %3


  br label %3


  br i1 undef, label %13, label %4


  %5 = tail call %0 @llvm.umul.with.overflow.i32(i32 undef, i32 16)
  %6 = extractvalue %0 %5, 1
  %7 = extractvalue %0 %5, 0
  %.op = add i32 %7, 7
  %.op.op = and i32 %.op, -8
  %8 = select i1 %6, i32 0, i32 %.op.op
  br i1 undef, label %10, label %9


  br label %_ZnamRN7nanojit9AllocatorE.exit


  %11 = tail call i8* @_ZN7nanojit9Allocator9allocSlowEmb(i8* undef, i32 %8, i1 zeroext false) nounwind
  br label %_ZnamRN7nanojit9AllocatorE.exit

_ZnamRN7nanojit9AllocatorE.exit:                  
  br i1 false, label %._crit_edge, label %.lr.ph

.lr.ph:                                           
  br label %12


  br i1 undef, label %._crit_edge, label %12

._crit_edge:                                      
  br label %14


  br label %14


  ret void
}

declare i8* @_ZN7nanojit9Allocator9allocSlowEmb(i8*, i32, i1 zeroext)
