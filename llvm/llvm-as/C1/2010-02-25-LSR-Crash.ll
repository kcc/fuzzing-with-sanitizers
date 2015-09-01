
target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32-n32"
target triple = "xcore-xmos-elf"

%0 = type { i32 }
%struct.dwarf_fde = type <{ i32, i32, [0 x i8] }>
%struct.object = type { i8*, i8*, i8*, %union.anon, %0, %struct.object* }
%union.anon = type { %struct.dwarf_fde* }

define %struct.dwarf_fde* @search_object(%struct.object* %ob, i8* %pc) {
entry:
  br i1 undef, label %bb3.i15.i.i, label %bb2

bb3.i15.i.i:                                      
  %indvar.i.i.i = phi i32 [ %indvar.next.i.i.i, %bb3.i15.i.i ], [ 0, %entry ] 
  %tmp137 = sub i32 0, %indvar.i.i.i              
  %scevgep13.i.i.i = getelementptr i32, i32* undef, i32 %tmp137 
  %scevgep1314.i.i.i = bitcast i32* %scevgep13.i.i.i to %struct.dwarf_fde** 
  %0 = load %struct.dwarf_fde*, %struct.dwarf_fde** %scevgep1314.i.i.i, align 4 
  store i32 undef, i32* %scevgep13.i.i.i
  %indvar.next.i.i.i = add i32 %indvar.i.i.i, 1   
  br label %bb3.i15.i.i

bb2:                                              
  ret %struct.dwarf_fde* undef
}
