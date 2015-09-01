
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-bgq-linux"

declare zeroext i1 @ri1()
declare void @se1()
declare void @se2()

define void @test() #0 {
entry:
  %b = call zeroext i1 @ri1()
  br label %next






next:
  br i1 %b, label %case1, label %case2

case1:
  call void @se1()
  br label %end

case2:
  call void @se2()
  br label %end

end:
  ret void


}

attributes #0 = { noinline optnone }

