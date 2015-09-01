




define fastcc void @t() ssp align 2 {
entry:
  br i1 undef, label %bb3.i, label %bb2.i

bb2.i:                                            
  br label %bb3.i

bb3.i:                                            
  br i1 undef, label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit71, label %bb.i69

bb.i69:                                           
  br label %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit71

_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit71: 
  %0 = select i1 undef, float 0.000000e+00, float undef
  %1 = fdiv float %0, undef
  %2 = fcmp ult float %1, 0xBF847AE140000000
  %storemerge9 = select i1 %2, float %1, float 0.000000e+00
  store float %storemerge9, float* undef, align 4
  br i1 undef, label %bb42, label %bb47

bb42:                                             
  br i1 undef, label %bb46, label %bb53

bb46:                                             
  br label %bb48

bb47:                                             
  br label %bb48

bb48:                                             
  br i1 undef, label %bb1.i14, label %bb.i13

bb.i13:                                           
  br label %bb1.i14

bb1.i14:                                          
  br label %bb53

bb53:                                             
  ret void
}
