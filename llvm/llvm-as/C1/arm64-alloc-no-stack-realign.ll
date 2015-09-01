




@T3_retval = common global <16 x float> zeroinitializer, align 16

define void @test(<16 x float>* noalias sret %agg.result) nounwind ssp {
entry:





 %retval = alloca <16 x float>, align 16
 %0 = load <16 x float>, <16 x float>* @T3_retval, align 16
 store <16 x float> %0, <16 x float>* %retval
 %1 = load <16 x float>, <16 x float>* %retval
 store <16 x float> %1, <16 x float>* %agg.result, align 16
 ret void
}
