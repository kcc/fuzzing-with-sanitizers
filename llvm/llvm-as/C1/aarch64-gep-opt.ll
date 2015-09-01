


target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-linux-gnueabi"






%struct = type { i32, i32, i32, i32, [20 x i32] }



define void @test_GEP_CSE([240 x %struct]* %string, i32* %adj, i32 %lib, i64 %idxprom) {
  %liberties = getelementptr [240 x %struct], [240 x %struct]* %string, i64 1, i64 %idxprom, i32 3
  %1 = load i32, i32* %liberties, align 4
  %cmp = icmp eq i32 %1, %lib
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  %origin = getelementptr [240 x %struct], [240 x %struct]* %string, i64 1, i64 %idxprom, i32 2
  %2 = load i32, i32* %origin, align 4
  store i32 %2, i32* %adj, align 4
  br label %if.end

if.end:                                           
  ret void
}





























%class.my = type { i32, [128 x i32], i32, [256 x %struct.pt]}
%struct.pt = type { %struct.point*, i32, i32 }
%struct.point = type { i32, i32 }




define void @test_GEP_across_BB(%class.my* %this, i64 %idx) {
  %1 = getelementptr %class.my, %class.my* %this, i64 0, i32 3, i64 %idx, i32 1
  %2 = load i32, i32* %1, align 4
  %3 = getelementptr %class.my, %class.my* %this, i64 0, i32 3, i64 %idx, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %if.true, label %exit

if.true:
  %6 = shl i32 %4, 1
  store i32 %6, i32* %3, align 4
  br label %exit

exit:
  %7 = add nsw i32 %4, 1
  store i32 %7, i32* %1, align 4
  ret void
}
























%struct.S = type { float, double }
@struct_array = global [1024 x %struct.S] zeroinitializer, align 16






define double* @test-struct_1(i32 %i) {
entry:
  %add = add nsw i32 %i, 5
  %idxprom = sext i32 %add to i64
  %p = getelementptr [1024 x %struct.S], [1024 x %struct.S]* @struct_array, i64 0, i64 %idxprom, i32 1
  ret double* %p
}







%struct3 = type { i64, i32 }
%struct2 = type { %struct3, i32 }
%struct1 = type { i64, %struct2 }
%struct0 = type { i32, i32, i64*, [100 x %struct1] }





define %struct2* @test-struct_2(%struct0* %ptr, i64 %idx) {
entry:
  %arrayidx = add nsw i64 %idx, -2
  %ptr2 = getelementptr %struct0, %struct0* %ptr, i64 0, i32 3, i64 %arrayidx, i32 1
  ret %struct2* %ptr2
}









define void @test_const_add([3 x i32]* %in) {
  %inc = add nsw i32 2, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr [3 x i32], [3 x i32]* %in, i64 %idxprom, i64 2
  store i32 0, i32* %arrayidx, align 4
  ret void
}


