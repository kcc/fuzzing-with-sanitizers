

















define i32 @test1(float %a, float %b) {





entry:
        %0 = fadd float %a, %b
        %1 = fptosi float %0 to i32
	ret i32 %1
}

define i32 @test2(float %a, float %b) {





entry:
        %0 = fadd float %a, %b
        %1 = fptoui float %0 to i32
	ret i32 %1
}

define float @test3(i32 %a, i32 %b) {




entry:
        %0 = add i32 %a, %b
        %1 = uitofp i32 %0 to float
	ret float %1
}

define float @test4(i32 %a, i32 %b) {




entry:
        %0 = add i32 %a, %b
        %1 = sitofp i32 %0 to float
	ret float %1
}
