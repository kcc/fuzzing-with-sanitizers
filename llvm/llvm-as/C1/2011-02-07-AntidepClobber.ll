




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32"
target triple = "armv5e-none-linux-gnueabi"

define hidden fastcc void @storeAtts() nounwind {
entry:
  %.SV116 = alloca i8**
  br i1 undef, label %meshBB520, label %meshBB464

bb15:                                             
  br i1 undef, label %bb216, label %meshBB396

bb22:                                             
  br label %cBB564

cBB564:                                           
  br label %cBB564

poolStoreString.exit.thread:                      
  ret void

bb78:                                             
  unreachable

bb129:                                            
  br i1 undef, label %bb131.loopexit, label %meshBB540

bb131.loopexit:                                   
  br label %bb131

bb131:                                            
  br i1 undef, label %bb134, label %meshBB396

bb134:                                            
  unreachable

bb135:                                            
  %uriHash.1.phi.load = load i32, i32* undef
  %.load120 = load i8**, i8*** %.SV116
  %.phi24 = load i8, i8* null
  %.phi26 = load i8*, i8** null
  store i8 %.phi24, i8* %.phi26, align 1
  %0 = getelementptr inbounds i8, i8* %.phi26, i32 1
  store i8* %0, i8** %.load120, align 4
  
  
  
  %1 = mul i32 %uriHash.1.phi.load, 1000003
  %2 = xor i32 0, %1
  store i32 %2, i32* null
  %3 = load i8, i8* null, align 1
  %4 = icmp eq i8 %3, 0
  store i8* %0, i8** undef
  br i1 %4, label %meshBB472, label %bb131

bb212:                                            
  unreachable

bb216:                                            
  ret void

meshBB396:                                        
  br i1 undef, label %bb135, label %bb22

meshBB412:                                        
  br i1 undef, label %meshBB504, label %bb78

meshBB424:                                        
  br i1 undef, label %poolStoreString.exit.thread, label %bb15

meshBB464:                                        
  br i1 undef, label %meshBB424, label %meshBB412

meshBB472:                                        
  unreachable

meshBB504:                                        
  br label %meshBB472

meshBB520:                                        
  br label %meshBB540

meshBB540:                                        
  br i1 undef, label %bb212, label %bb129
}
