

declare void @strlen()

declare void @_ZN10QByteArray6resizeEi()

declare void @q_atomic_decrement()

define void @_ZNK10QByteArray13leftJustifiedEicb() personality i32 (...)* @__gxx_personality_v0 {
entry:
        invoke void @strlen( )
                        to label %tmp.3.i.noexc unwind label %invoke_catch.0

tmp.3.i.noexc:          
        br i1 false, label %then.0, label %else.0

invoke_catch.0:         
        %exn.0 = landingpad {i8*, i32}
                 cleanup
        invoke void @q_atomic_decrement( )
                        to label %tmp.1.i.i183.noexc unwind label %terminate

tmp.1.i.i183.noexc:             
        ret void

then.0:         
        invoke void @_ZN10QByteArray6resizeEi( )
                        to label %invoke_cont.1 unwind label %invoke_catch.1

invoke_catch.1:         
        %exn.1 = landingpad {i8*, i32}
                 cleanup
        invoke void @q_atomic_decrement( )
                        to label %tmp.1.i.i162.noexc unwind label %terminate

tmp.1.i.i162.noexc:             
        ret void

invoke_cont.1:          
        ret void

else.0:         
        ret void

terminate:              
        %dbg.0.1 = phi {  }* [ null, %invoke_catch.1 ], [ null, %invoke_catch.0 ]               
        %exn = landingpad {i8*, i32}
                 cleanup
        unreachable
}

declare i32 @__gxx_personality_v0(...)
