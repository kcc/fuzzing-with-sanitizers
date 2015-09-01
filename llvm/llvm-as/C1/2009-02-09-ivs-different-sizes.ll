


target datalayout ="e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define void @parse_number(i8* nocapture %p) nounwind {
entry:
        %shift.0 = select i1 false, i32 4, i32 2                
        br label %bb47

bb47:           
        br i1 false, label %bb54, label %bb47

bb54:           
        br i1 false, label %bb56, label %bb66

bb56:           
        %p_addr.0.pn.rec = phi i64 [ %p_addr.6.rec, %bb62 ], [ 0, %bb54 ]             
        %ch.6.in.in = phi i8* [ %p_addr.6, %bb62 ], [ null, %bb54 ]           
        %indvar202 = trunc i64 %p_addr.0.pn.rec to i32          
        %frac_bits.0 = mul i32 %indvar202, %shift.0             
        %p_addr.6.rec = add i64 %p_addr.0.pn.rec, 1             
        %p_addr.6 = getelementptr i8, i8* null, i64 %p_addr.6.rec           
        br i1 false, label %bb66, label %bb62

bb62:           
        br label %bb56

bb66:           
        %frac_bits.1 = phi i32 [ 0, %bb54 ], [ %frac_bits.0, %bb56 ]           
        unreachable
}
