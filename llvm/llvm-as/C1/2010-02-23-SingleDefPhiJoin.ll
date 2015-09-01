








target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @decode(i8* nocapture %input, i32 %offset, i8* nocapture %output) nounwind {
entry:
  br i1 undef, label %meshBB86, label %meshBB102

bb:                                               
  br i1 false, label %bb9, label %meshBB90

bb.nph:                                           
  br label %meshBB114

bb.nph.fragment:                                  
  br label %meshBB118

bb1.fragment:                                     
  br i1 false, label %bb2, label %bb3

bb2:                                              
  br label %meshBB74

bb2.fragment15:                                   
  br label %meshBB98

bb3:                                              
  br i1 undef, label %meshBB, label %meshBB102

bb4:                                              
  br label %meshBB118

bb4.fragment:                                     
  br label %meshBB82

bb5:                                              
  br i1 false, label %bb6, label %bb7

bb6:                                              
  br label %bb7

bb7:                                              
  br label %meshBB114

bb7.fragment:                                     
  br i1 undef, label %meshBB74, label %bb9

bb9:                                              
  br label %bb1.i23

bb1.i23:                                          
  br i1 undef, label %meshBB106, label %meshBB110

skip_to_newline.exit26:                           
  br label %meshBB86

skip_to_newline.exit26.fragment:                  
  br i1 false, label %meshBB90, label %meshBB106

bb11.fragment:                                    
  br label %meshBB122

bb1.i:                                            
  %ooffset.2.lcssa.phi.SV.phi203 = phi i32 [ 0, %meshBB122 ], [ %ooffset.2.lcssa.phi.SV.phi233, %meshBB ] 
  br label %meshBB98

bb1.i.fragment:                                   
  br i1 undef, label %meshBB78, label %meshBB

skip_to_newline.exit:                             
  br i1 undef, label %bb12, label %meshBB110

bb12:                                             
  br label %meshBB94

bb12.fragment:                                    
  br i1 false, label %bb13, label %meshBB78

bb13:                                             
  br label %meshBB82

bb13.fragment:                                    
  br i1 undef, label %meshBB94, label %meshBB122

bb14:                                             
  ret i32 %ooffset.2.lcssa.phi.SV.phi250

bb15:                                             
  unreachable

meshBB:                                           
  %ooffset.2.lcssa.phi.SV.phi233 = phi i32 [ undef, %bb3 ], [ %ooffset.2.lcssa.phi.SV.phi209, %bb1.i.fragment ] 
  br i1 undef, label %bb1.i, label %bb4

meshBB74:                                         
  br i1 false, label %meshBB118, label %bb2.fragment15

meshBB78:                                         
  %ooffset.2.lcssa.phi.SV.phi239 = phi i32 [ %ooffset.2.lcssa.phi.SV.phi209, %bb1.i.fragment ], [ %ooffset.2.lcssa.phi.SV.phi250, %bb12.fragment ] 
  br i1 false, label %bb15, label %skip_to_newline.exit

meshBB82:                                         
  br i1 false, label %bb5, label %bb13.fragment

meshBB86:                                         
  br i1 undef, label %skip_to_newline.exit26.fragment, label %bb11.fragment

meshBB90:                                         
  br i1 false, label %bb11.fragment, label %bb.nph

meshBB94:                                         
  %ooffset.2.lcssa.phi.SV.phi250 = phi i32 [ 0, %bb13.fragment ], [ %ooffset.2.lcssa.phi.SV.phi239, %bb12 ] 
  br i1 false, label %bb12.fragment, label %bb14

meshBB98:                                         
  %ooffset.2.lcssa.phi.SV.phi209 = phi i32 [ undef, %bb2.fragment15 ], [ %ooffset.2.lcssa.phi.SV.phi203, %bb1.i ] 
  br i1 undef, label %bb1.i.fragment, label %bb7

meshBB102:                                        
  br i1 undef, label %bb5, label %bb

meshBB106:                                        
  br i1 undef, label %bb, label %skip_to_newline.exit26

meshBB110:                                        
  br i1 false, label %bb15, label %bb1.i23

meshBB114:                                        
  %meshStackVariable115.phi = phi i32 [ 19, %bb7 ], [ 8, %bb.nph ] 
  br i1 undef, label %bb.nph.fragment, label %bb7.fragment

meshBB118:                                        
  %meshCmp121 = icmp eq i32 undef, 10             
  br i1 %meshCmp121, label %bb4.fragment, label %bb1.fragment

meshBB122:                                        
  br i1 false, label %bb1.i, label %bb15
}
