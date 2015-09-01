

define i64 @__fixtfdi(ppc_fp128 %a) nounwind  {
entry:
        br i1 false, label %bb, label %bb8
bb:             
        %tmp5 = fsub ppc_fp128 0xM80000000000000000000000000000000, %a           
        %tmp6 = tail call i64 @__fixunstfdi( ppc_fp128 %tmp5 ) nounwind                 
        ret i64 0
bb8:            
        ret i64 0
}

declare i64 @__fixunstfdi(ppc_fp128)
