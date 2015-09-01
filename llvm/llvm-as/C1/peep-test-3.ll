





define void @or(float* %A, i32 %IA, i32 %N) nounwind {
entry:
  %0 = ptrtoint float* %A to i32                  
  %1 = and i32 %0, 3                              
  %2 = xor i32 %IA, 1                             


  %3 = or i32 %2, %1                              
  %4 = icmp eq i32 %3, 0                          
  br i1 %4, label %return, label %bb

bb:                                               
  store float 0.000000e+00, float* %A, align 4
  ret void

return:                                           
  ret void
}

define void @xor(float* %A, i32 %IA, i32 %N) nounwind {
entry:
  %0 = ptrtoint float* %A to i32                  
  %1 = and i32 %0, 3                              


  %2 = xor i32 %IA, 1                             
  %3 = xor i32 %2, %1                              
  %4 = icmp eq i32 %3, 0                          
  br i1 %4, label %return, label %bb

bb:                                               
  store float 0.000000e+00, float* %A, align 4
  ret void

return:                                           
  ret void
}

define void @and(float* %A, i32 %IA, i32 %N, i8* %p) nounwind {
entry:
  store i8 0, i8* %p
  %0 = ptrtoint float* %A to i32                  
  %1 = and i32 %0, 3                              
  %2 = xor i32 %IA, 1                             



  %3 = and i32 %2, %1                              
  %t = trunc i32 %3 to i8
  store i8 %t, i8* %p
  %4 = icmp eq i32 %3, 0                          
  br i1 %4, label %return, label %bb

bb:                                               
  store float 0.000000e+00, float* null, align 4
  ret void

return:                                           
  ret void
}




define void @test(float* %A, i32 %IA, i32 %N, i8* %p) nounwind {
entry:
  store i8 0, i8* %p
  %0 = ptrtoint float* %A to i32                  
  %1 = and i32 %0, 3                              
  %2 = xor i32 %IA, 1                             


  %3 = and i32 %2, %1                              
  %4 = icmp eq i32 %3, 0                          
  br i1 %4, label %return, label %bb

bb:                                               
  store float 0.000000e+00, float* null, align 4
  ret void

return:                                           
  ret void
}
