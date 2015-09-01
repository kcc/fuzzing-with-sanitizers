


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.2"

define void @test1(i32* nocapture %a0, i8 zeroext %a1) nounwind ssp {
entry:
  %A = load i32, i32* %a0, align 4
  %B = and i32 %A, -256     
  %C = zext i8 %a1 to i32
  %D = or i32 %C, %B
  store i32 %D, i32* %a0, align 4
  ret void







}

define void @test2(i32* nocapture %a0, i8 zeroext %a1) nounwind ssp {
entry:
  %A = load i32, i32* %a0, align 4
  %B = and i32 %A, -65281    
  %C = zext i8 %a1 to i32
  %CS = shl i32 %C, 8
  %D = or i32 %B, %CS
  store i32 %D, i32* %a0, align 4
  ret void






}

define void @test3(i32* nocapture %a0, i16 zeroext %a1) nounwind ssp {
entry:
  %A = load i32, i32* %a0, align 4
  %B = and i32 %A, -65536    
  %C = zext i16 %a1 to i32
  %D = or i32 %B, %C
  store i32 %D, i32* %a0, align 4
  ret void






}

define void @test4(i32* nocapture %a0, i16 zeroext %a1) nounwind ssp {
entry:
  %A = load i32, i32* %a0, align 4
  %B = and i32 %A, 65535    
  %C = zext i16 %a1 to i32
  %CS = shl i32 %C, 16
  %D = or i32 %B, %CS
  store i32 %D, i32* %a0, align 4
  ret void






}

define void @test5(i64* nocapture %a0, i16 zeroext %a1) nounwind ssp {
entry:
  %A = load i64, i64* %a0, align 4
  %B = and i64 %A, -4294901761    
  %C = zext i16 %a1 to i64
  %CS = shl i64 %C, 16
  %D = or i64 %B, %CS
  store i64 %D, i64* %a0, align 4
  ret void






}

define void @test6(i64* nocapture %a0, i8 zeroext %a1) nounwind ssp {
entry:
  %A = load i64, i64* %a0, align 4
  %B = and i64 %A, -280375465082881    
  %C = zext i8 %a1 to i64
  %CS = shl i64 %C, 40
  %D = or i64 %B, %CS
  store i64 %D, i64* %a0, align 4
  ret void







}

define i32 @test7(i64* nocapture %a0, i8 zeroext %a1, i32* %P2) nounwind {
entry:
  %OtherLoad = load i32 , i32 *%P2
  %A = load i64, i64* %a0, align 4
  %B = and i64 %A, -280375465082881    
  %C = zext i8 %a1 to i64
  %CS = shl i64 %C, 40
  %D = or i64 %B, %CS
  store i64 %D, i64* %a0, align 4
  ret i32 %OtherLoad







}



@g_16 = internal global i32 -1







define void @test8() nounwind {
  %tmp = load i32, i32* @g_16
  store i32 0, i32* @g_16
  %or = or i32 %tmp, 1
  store i32 %or, i32* @g_16
  ret void
}




define void @test9() nounwind {
  %tmp = load i32, i32* @g_16
  %or = or i32 %tmp, 1
  store i32 %or, i32* @g_16
  ret void
}






define i8 @test10(i8* %P) nounwind ssp {
entry:
  %tmp = load i8, i8* %P, align 1
  %conv = sext i8 %tmp to i32
  %shr3 = lshr i32 %conv, 8
  %conv2 = trunc i32 %shr3 to i8
  ret i8 %conv2
}
