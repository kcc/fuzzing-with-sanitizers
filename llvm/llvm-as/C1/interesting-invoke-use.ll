





target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
  %struct.string___XUB = type { i32, i32 }
  %struct.string___XUP = type { [0 x i8]*, %struct.string___XUB* }
@.str7 = external constant [24 x i8]            
@C.17.316 = external constant %struct.string___XUB              

define void @_ada_c35503g() personality i32 (...)* @__gxx_personality_v0 {
entry:
  br label %bb

bb:             
  br i1 false, label %bb65.loopexit, label %bb

bb65.loopexit:          
  br label %bb123

bb123:          
  %i.0 = phi i32 [ %3, %bb178 ], [ 0, %bb65.loopexit ]          
  %0 = invoke i32 @report__ident_int(i32 1)
      to label %invcont127 unwind label %lpad266                

invcont127:             
  %1 = sub i32 %i.0, %0         
  %2 = icmp eq i32 0, %1                
  br i1 %2, label %bb178, label %bb128

bb128:          
  invoke void @system__img_int__image_integer(%struct.string___XUP* noalias sret null, i32 %i.0)
      to label %invcont129 unwind label %lpad266

invcont129:             
  invoke void @system__string_ops__str_concat(%struct.string___XUP* noalias sret null, [0 x i8]* bitcast ([24 x i8]* @.str7 to [0 x i8]*), %struct.string___XUB* @C.17.316, [0 x i8]* null, %struct.string___XUB* null)
      to label %invcont138 unwind label %lpad266

invcont138:             
  unreachable

bb178:          
  %3 = add i32 %i.0, 1          
  br label %bb123

lpad266:                
  %exn = landingpad {i8*, i32}
            cleanup
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare void @system__img_int__image_integer(%struct.string___XUP* noalias sret, i32)

declare void @system__string_ops__str_concat(%struct.string___XUP* noalias sret, [0 x i8]*, %struct.string___XUB*, [0 x i8]*, %struct.string___XUB*)

declare i32 @report__ident_int(i32)
