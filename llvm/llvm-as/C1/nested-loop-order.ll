

define void @main(float addrspace(1)* %out) {



main_body:
  br label %LOOP.outer



LOOP.outer:                                       
  %temp8.0.ph = phi float [ 0.000000e+00, %main_body ], [ %tmp35, %ENDIF28 ]
  %temp4.0.ph = phi i32 [ 0, %main_body ], [ %tmp20, %ENDIF28 ]
  br label %LOOP



LOOP:                                             
  %temp4.0 = phi i32 [ %temp4.0.ph, %LOOP.outer ], [ %tmp20, %IF29 ]
  %tmp20 = add i32 %temp4.0, 1
  %tmp22 = icmp sgt i32 %tmp20, 3
  br i1 %tmp22, label %ENDLOOP, label %ENDIF






ENDLOOP:                                          
  %temp8.1 = phi float [ %temp8.0.ph, %LOOP ], [ %temp8.0.ph, %IF29 ], [ %tmp35, %ENDIF28 ]
  %tmp23 = icmp eq i32 %tmp20, 3
  %.45 = select i1 %tmp23, float 0.000000e+00, float 1.000000e+00
  store float %.45, float addrspace(1)* %out
  ret void



ENDIF:                                            
  %tmp31 = icmp sgt i32 %tmp20, 1
  br i1 %tmp31, label %IF29, label %ENDIF28






IF29:                                             
  %tmp32 = icmp sgt i32 %tmp20, 2
  br i1 %tmp32, label %ENDLOOP, label %LOOP









ENDIF28:                                          
  %tmp35 = fadd float %temp8.0.ph, 1.0
  %tmp36 = icmp sgt i32 %tmp20, 2
  br i1 %tmp36, label %ENDLOOP, label %LOOP.outer
}


declare <4 x float> @llvm.SI.vs.load.input(<16 x i8>, i32, i32) #1


declare float @llvm.AMDIL.clamp.(float, float, float) #2

declare void @llvm.SI.export(i32, i32, i32, i32, i32, float, float, float, float)

attributes #0 = { "ShaderType"="1" "enable-no-nans-fp-math"="true" "unsafe-fp-math"="true" }
attributes #1 = { nounwind readnone }
attributes #2 = { readnone }

!0 = !{!1, !1, i64 0, i32 1}
!1 = !{!"const", null}
