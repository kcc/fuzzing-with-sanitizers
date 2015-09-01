

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
  %JavaObject = type { [0 x i32 (...)*]*, i8* }

define void @JnJVM_antlr_CSharpCodeGenerator_genBitSet__Lantlr_collections_impl_BitSet_2I(%JavaObject*, %JavaObject*, i32) {
start:
  br i1 undef, label %"stack overflow", label %"no stack overflow"

"GOTO or IF*2":         
  unreachable

"GOTO or IF*5":         
  unreachable

"GOTO or IF*6":         
  %indvar = phi i32 [ %indvar.next, %"true verifyAndComputePtr131.GOTO or IF*6_crit_edge" ], [ 0, %"true verifyAndComputePtr89" ]               
  %.0.in = add i32 %indvar, 0           
  %.0 = add i32 %.0.in, 1               
  %3 = icmp slt i32 %.0, %4             
  br i1 %3, label %verifyNullCont126, label %"GOTO or IF*5"

end:            
  ret void

"stack overflow":               
  ret void

"no stack overflow":            
  br i1 undef, label %verifyNullCont, label %"no stack overflow.end_crit_edge"

"no stack overflow.end_crit_edge":              
  ret void

verifyNullCont:         
  br i1 undef, label %verifyNullCont9, label %verifyNullCont.end_crit_edge

verifyNullCont.end_crit_edge:           
  ret void

verifyNullCont9:                
  br i1 undef, label %verifyNullCont12, label %verifyNullCont9.end_crit_edge

verifyNullCont9.end_crit_edge:          
  ret void

verifyNullCont12:               
  br i1 undef, label %"no exception block13", label %verifyNullCont12.end_crit_edge

verifyNullCont12.end_crit_edge:         
  ret void

"no exception block13":         
  br i1 undef, label %verifyNullExit14, label %verifyNullCont15

verifyNullExit14:               
  ret void

verifyNullCont15:               
  br i1 undef, label %"no exception block16", label %verifyNullCont15.end_crit_edge

verifyNullCont15.end_crit_edge:         
  ret void

"no exception block16":         
  br i1 undef, label %verifyNullExit17, label %verifyNullCont18

verifyNullExit17:               
  ret void

verifyNullCont18:               
  br i1 undef, label %"no exception block19", label %verifyNullCont18.end_crit_edge

verifyNullCont18.end_crit_edge:         
  ret void

"no exception block19":         
  br i1 undef, label %verifyNullExit20, label %verifyNullCont21

verifyNullExit20:               
  ret void

verifyNullCont21:               
  br i1 undef, label %verifyNullCont24, label %verifyNullCont21.end_crit_edge

verifyNullCont21.end_crit_edge:         
  ret void

verifyNullCont24:               
  br i1 undef, label %verifyNullCont27, label %verifyNullCont24.end_crit_edge

verifyNullCont24.end_crit_edge:         
  ret void

verifyNullCont27:               
  br i1 undef, label %verifyNullCont32, label %verifyNullCont27.end_crit_edge

verifyNullCont27.end_crit_edge:         
  ret void

verifyNullCont32:               
  br i1 undef, label %verifyNullExit33, label %verifyNullCont34

verifyNullExit33:               
  ret void

verifyNullCont34:               
  br i1 undef, label %"no exception block35", label %verifyNullCont34.end_crit_edge

verifyNullCont34.end_crit_edge:         
  ret void

"no exception block35":         
  br i1 undef, label %end, label %verifyNullCont60

verifyNullCont60:               
  br i1 undef, label %verifyNullCont63, label %verifyNullCont60.end_crit_edge

verifyNullCont60.end_crit_edge:         
  ret void

verifyNullCont63:               
  br i1 undef, label %"no exception block64", label %verifyNullCont63.end_crit_edge

verifyNullCont63.end_crit_edge:         
  ret void

"no exception block64":         
  br i1 undef, label %verifyNullExit65, label %verifyNullCont66

verifyNullExit65:               
  ret void

verifyNullCont66:               
  br i1 undef, label %"no exception block67", label %verifyNullCont66.end_crit_edge

verifyNullCont66.end_crit_edge:         
  ret void

"no exception block67":         
  br i1 undef, label %verifyNullExit68, label %verifyNullCont69

verifyNullExit68:               
  ret void

verifyNullCont69:               
  br i1 undef, label %"no exception block70", label %verifyNullCont69.end_crit_edge

verifyNullCont69.end_crit_edge:         
  ret void

"no exception block70":         
  br i1 undef, label %verifyNullExit71, label %verifyNullCont72

verifyNullExit71:               
  ret void

verifyNullCont72:               
  br i1 undef, label %verifyNullCont75, label %verifyNullCont72.end_crit_edge

verifyNullCont72.end_crit_edge:         
  ret void

verifyNullCont75:               
  br i1 undef, label %verifyNullCont78, label %verifyNullCont75.end_crit_edge

verifyNullCont75.end_crit_edge:         
  ret void

verifyNullCont78:               
  br i1 undef, label %"verifyNullCont78.GOTO or IF*4_crit_edge", label %verifyNullCont78.end_crit_edge

"verifyNullCont78.GOTO or IF*4_crit_edge":              
  br i1 undef, label %verifyNullExit80, label %verifyNullCont81

verifyNullCont78.end_crit_edge:         
  ret void

verifyNullExit80:               
  ret void

verifyNullCont81:               
  %4 = ptrtoint i8* undef to i32                
  %5 = icmp slt i32 0, %4               
  br i1 %5, label %verifyNullCont84, label %verifyNullCont172

verifyNullCont84:               
  br i1 undef, label %"GOTO or IF*2", label %verifyNullCont86

verifyNullCont86:               
  br i1 undef, label %"true verifyAndComputePtr", label %"false verifyAndComputePtr"

"true verifyAndComputePtr":             
  br i1 undef, label %"true verifyAndComputePtr89", label %"false verifyAndComputePtr90"

"false verifyAndComputePtr":            
  ret void

"true verifyAndComputePtr89":           
  br i1 undef, label %"GOTO or IF*6", label %"GOTO or IF*2"

"false verifyAndComputePtr90":          
  ret void

verifyNullCont126:              
  br i1 undef, label %"true verifyAndComputePtr127", label %"false verifyAndComputePtr128"

"true verifyAndComputePtr127":          
  br i1 undef, label %"true verifyAndComputePtr131.GOTO or IF*6_crit_edge", label %"GOTO or IF*5"

"false verifyAndComputePtr128":         
  ret void

"true verifyAndComputePtr131.GOTO or IF*6_crit_edge":           
  %indvar.next = add i32 %indvar, 1             
  br label %"GOTO or IF*6"

verifyNullCont172:              
  unreachable
}
