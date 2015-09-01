








%struct.anon = type { i32 }

declare i32 @test2()


define i32 @test(i32 %A, %struct.anon* %B, float %C) {
	call i32 @test2()
	ret i32 %1
}
