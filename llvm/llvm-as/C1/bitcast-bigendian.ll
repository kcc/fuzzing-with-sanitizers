

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"




define float @test2(<2 x float> %A, <2 x i32> %B) {
  %tmp28 = bitcast <2 x float> %A to i64  
  %tmp23 = trunc i64 %tmp28 to i32                
  %tmp24 = bitcast i32 %tmp23 to float            

  %tmp = bitcast <2 x i32> %B to i64
  %tmp2 = trunc i64 %tmp to i32                
  %tmp4 = bitcast i32 %tmp2 to float            

  %add = fadd float %tmp24, %tmp4
  ret float %add







}

define float @test3(<2 x float> %A, <2 x i64> %B) {
  %tmp28 = bitcast <2 x float> %A to i64
  %tmp29 = lshr i64 %tmp28, 32
  %tmp23 = trunc i64 %tmp29 to i32
  %tmp24 = bitcast i32 %tmp23 to float

  %tmp = bitcast <2 x i64> %B to i128
  %tmp1 = lshr i128 %tmp, 64
  %tmp2 = trunc i128 %tmp1 to i32
  %tmp4 = bitcast i32 %tmp2 to float

  %add = fadd float %tmp24, %tmp4
  ret float %add







}

define <2 x i32> @test4(i32 %A, i32 %B){
  %tmp38 = zext i32 %A to i64
  %tmp32 = zext i32 %B to i64
  %tmp33 = shl i64 %tmp32, 32
  %ins35 = or i64 %tmp33, %tmp38
  %tmp43 = bitcast i64 %ins35 to <2 x i32>
  ret <2 x i32> %tmp43
  
  
  
  

}

define <2 x float> @test5(float %A, float %B) {
  %tmp37 = bitcast float %A to i32
  %tmp38 = zext i32 %tmp37 to i64
  %tmp31 = bitcast float %B to i32
  %tmp32 = zext i32 %tmp31 to i64
  %tmp33 = shl i64 %tmp32, 32
  %ins35 = or i64 %tmp33, %tmp38
  %tmp43 = bitcast i64 %ins35 to <2 x float>
  ret <2 x float> %tmp43
  
  
  
  
}

define <2 x float> @test6(float %A){
  %tmp23 = bitcast float %A to i32              
  %tmp24 = zext i32 %tmp23 to i64                 
  %tmp25 = shl i64 %tmp24, 32                     
  %mask20 = or i64 %tmp25, 1109917696             
  %tmp35 = bitcast i64 %mask20 to <2 x float>     
  ret <2 x float> %tmp35




}
