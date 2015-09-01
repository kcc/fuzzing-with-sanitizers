
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-n8:16:32:64"

define i32 @test1() {

entry:
	%a = alloca [2 x i32]


  %a0 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 0
  %a1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
	store i32 0, i32* %a0
	store i32 1, i32* %a1
	%v0 = load i32, i32* %a0
	%v1 = load i32, i32* %a1



	%cond = icmp sle i32 %v0, %v1
	br i1 %cond, label %then, label %exit

then:
	br label %exit

exit:
	%phi = phi i32* [ %a1, %then ], [ %a0, %entry ]


	%result = load i32, i32* %phi
	ret i32 %result
}

define i32 @test2() {

entry:
	%a = alloca [2 x i32]


  %a0 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 0
  %a1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
	store i32 0, i32* %a0
	store i32 1, i32* %a1
	%v0 = load i32, i32* %a0
	%v1 = load i32, i32* %a1



	%cond = icmp sle i32 %v0, %v1
	%select = select i1 %cond, i32* %a1, i32* %a0


	%result = load i32, i32* %select
	ret i32 %result
}

define i32 @test3(i32 %x) {

entry:
	%a = alloca [2 x i32]


  
  
  
  %a0 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 0
  %a0b = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 0
  %a1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
  %a1b = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
	store i32 0, i32* %a0
	store i32 1, i32* %a1


  switch i32 %x, label %bb0 [ i32 1, label %bb1
                              i32 2, label %bb2
                              i32 3, label %bb3
                              i32 4, label %bb4
                              i32 5, label %bb5
                              i32 6, label %bb6
                              i32 7, label %bb7 ]

bb0:
	br label %exit
bb1:
	br label %exit
bb2:
	br label %exit
bb3:
	br label %exit
bb4:
	br label %exit
bb5:
	br label %exit
bb6:
	br label %exit
bb7:
	br label %exit

exit:
	%phi = phi i32* [ %a1, %bb0 ], [ %a0, %bb1 ], [ %a0, %bb2 ], [ %a1, %bb3 ],
                  [ %a1b, %bb4 ], [ %a0b, %bb5 ], [ %a0b, %bb6 ], [ %a1b, %bb7 ]


	%result = load i32, i32* %phi
	ret i32 %result
}

define i32 @test4() {

entry:
	%a = alloca [2 x i32]


  %a0 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 0
  %a1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
	store i32 0, i32* %a0
	store i32 1, i32* %a1
	%v0 = load i32, i32* %a0
	%v1 = load i32, i32* %a1



	%cond = icmp sle i32 %v0, %v1
	%select = select i1 %cond, i32* %a0, i32* %a0


	%result = load i32, i32* %select
	ret i32 %result

}

define i32 @test5(i32* %b) {

entry:
	%a = alloca [2 x i32]


  %a1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
	store i32 1, i32* %a1


	%select = select i1 true, i32* %a1, i32* %b


	%result = load i32, i32* %select


	ret i32 %result

}

declare void @f(i32*, i32*)

define i32 @test6(i32* %b) {

entry:
	%a = alloca [2 x i32]
  %c = alloca i32


  %a1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i32 1
	store i32 1, i32* %a1

	%select = select i1 true, i32* %a1, i32* %b
	%select2 = select i1 false, i32* %a1, i32* %b
  %select3 = select i1 false, i32* %c, i32* %b



  
  
  call void @f(i32* %select2, i32* %select3)



	%result = load i32, i32* %select


  %dead = load i32, i32* %c

	ret i32 %result

}

define i32 @test7() {



entry:
  %X = alloca i32
  br i1 undef, label %good, label %bad

good:
  %Y1 = getelementptr i32, i32* %X, i64 0
  store i32 0, i32* %Y1
  br label %exit

bad:
  %Y2 = getelementptr i32, i32* %X, i64 1
  store i32 0, i32* %Y2
  br label %exit

exit:
	%P = phi i32* [ %Y1, %good ], [ %Y2, %bad ]

  %Z2 = load i32, i32* %P
  ret i32 %Z2

}

define i32 @test8(i32 %b, i32* %ptr) {










entry:
  %f = alloca float
  %test = icmp ne i32 %b, 0
  br i1 %test, label %then, label %else

then:
  br label %exit

else:
  %bitcast = bitcast float* %f to i32*
  br label %exit

exit:
  %phi = phi i32* [ %bitcast, %else ], [ %ptr, %then ]
  %loaded = load i32, i32* %phi, align 4
  ret i32 %loaded
}

define i32 @test9(i32 %b, i32* %ptr) {









entry:
  %f = alloca float
  store i32 0, i32* %ptr
  %test = icmp ne i32 %b, 0
  %bitcast = bitcast float* %f to i32*
  %select = select i1 %test, i32* %bitcast, i32* %ptr
  %loaded = load i32, i32* %select, align 4
  ret i32 %loaded
}

define float @test10(i32 %b, float* %ptr) {











entry:
  %f = alloca double
  store double 0.0, double* %f
  %test = icmp ne i32 %b, 0
  br i1 %test, label %then, label %else

then:
  br label %exit

else:
  %bitcast = bitcast double* %f to float*
  br label %exit

exit:
  %phi = phi float* [ %bitcast, %else ], [ %ptr, %then ]
  %loaded = load float, float* %phi, align 4
  ret float %loaded
}

define float @test11(i32 %b, float* %ptr) {









entry:
  %f = alloca double
  store double 0.0, double* %f
  store float 0.0, float* %ptr
  %test = icmp ne i32 %b, 0
  %bitcast = bitcast double* %f to float*
  %select = select i1 %test, float* %bitcast, float* %ptr
  %loaded = load float, float* %select, align 4
  ret float %loaded
}

define i32 @test12(i32 %x, i32* %p) {







entry:
  %a = alloca i32
  store i32 %x, i32* %a
  %dead = select i1 undef, i32* %a, i32* %p
  %load = load i32, i32* %a
  ret i32 %load
}

define i32 @test13(i32 %x, i32* %p) {







entry:
  %a = alloca i32
  store i32 %x, i32* %a
  br label %loop

loop:
  %phi = phi i32* [ %p, %entry ], [ %a, %loop ]
  br i1 undef, label %loop, label %exit

exit:
  %load = load i32, i32* %a
  ret i32 %load
}

define i32 @test14(i1 %b1, i1 %b2, i32* %ptr) {












entry:
  %f = alloca i32
  %g = alloca i32
  store i32 0, i32* %f
  store i32 0, i32* %g
  %f.select = select i1 %b1, i32* %f, i32* %ptr
  br i1 %b2, label %then, label %else

then:
  br label %exit

else:
  br label %exit

exit:
  %f.phi = phi i32* [ %f, %then ], [ %f.select, %else ]
  %g.phi = phi i32* [ %g, %then ], [ %ptr, %else ]
  %f.loaded = load i32, i32* %f.phi
  %g.select = select i1 %b1, i32* %g, i32* %g.phi
  %g.loaded = load i32, i32* %g.select
  %result = add i32 %f.loaded, %g.loaded
  ret i32 %result
}

define i32 @PR13905() {






entry:
  %h = alloca i32
  store i32 0, i32* %h
  br i1 undef, label %loop1, label %exit

loop1:
  %phi1 = phi i32* [ null, %entry ], [ %h, %loop1 ], [ %h, %loop2 ]
  br i1 undef, label %loop1, label %loop2

loop2:
  br i1 undef, label %loop1, label %exit

exit:
  %phi2 = phi i32* [ %phi1, %loop2 ], [ null, %entry ]
  ret i32 undef
}

define i32 @PR13906() {






entry:
  %c = alloca i32
  store i32 0, i32* %c
  br label %for.cond

for.cond:
  %d.0 = phi i32* [ undef, %entry ], [ %c, %if.then ], [ %d.0, %for.cond ]
  br i1 undef, label %if.then, label %for.cond

if.then:
  %tmpcast.d.0 = select i1 undef, i32* %c, i32* %d.0
  br label %for.cond
}

define i64 @PR14132(i1 %flag) {








entry:
  %a = alloca i64, align 8
  %b = alloca i8, align 8
  %ptr = alloca i64*, align 8


  %ptr.cast = bitcast i64** %ptr to i8**
  store i64 0, i64* %a, align 8
  store i8 1, i8* %b, align 8
  store i64* %a, i64** %ptr, align 8
  br i1 %flag, label %if.then, label %if.end

if.then:
  store i8* %b, i8** %ptr.cast, align 8
  br label %if.end



if.end:
  %tmp = load i64*, i64** %ptr, align 8
  %result = load i64, i64* %tmp, align 8



  ret i64 %result

}

define float @PR16687(i64 %x, i1 %flag) {





entry:
  %a = alloca i64, align 8
  store i64 %x, i64* %a
  br i1 %flag, label %then, label %else






then:
  %a.f = bitcast i64* %a to float*
  br label %end


else:
  %a.raw = bitcast i64* %a to i8*
  %a.raw.4 = getelementptr i8, i8* %a.raw, i64 4
  %a.raw.4.f = bitcast i8* %a.raw.4 to float*
  br label %end


end:
  %a.phi.f = phi float* [ %a.f, %then ], [ %a.raw.4.f, %else ]
  %f = load float, float* %a.phi.f
  ret float %f



}







define float @simplify_phi_nodes_that_equal_slice(i1 %cond, float* %temp) {

entry:
  %arr = alloca [4 x float], align 4

  br i1 %cond, label %then, label %else

then:
  %0 = getelementptr inbounds [4 x float], [4 x float]* %arr, i64 0, i64 3
  store float 1.000000e+00, float* %0, align 4
  br label %merge

else:
  %1 = getelementptr inbounds [4 x float], [4 x float]* %arr, i64 0, i64 3
  store float 2.000000e+00, float* %1, align 4
  br label %merge

merge:
  %2 = phi float* [ %0, %then ], [ %1, %else ]
  store float 0.000000e+00, float* %temp, align 4
  %3 = load float, float* %2, align 4
  ret float %3
}







define float @simplify_phi_nodes_that_equal_slice_2(i1 %cond, float* %temp) {

entry:
  %arr = alloca [4 x float], align 4

  br i1 %cond, label %then, label %else

then:
  %0 = getelementptr inbounds [4 x float], [4 x float]* %arr, i64 0, i64 3
  store float 1.000000e+00, float* %0, align 4
  br label %then2

then2:
  %1 = phi float* [ %0, %then ]
  store float 2.000000e+00, float* %1, align 4
  br label %merge

else:
  %2 = getelementptr inbounds [4 x float], [4 x float]* %arr, i64 0, i64 3
  store float 3.000000e+00, float* %2, align 4
  br label %merge

merge:
  %3 = phi float* [ %1, %then2 ], [ %2, %else ]
  store float 0.000000e+00, float* %temp, align 4
  %4 = load float, float* %3, align 4
  ret float %4
}

%struct.S = type { i32 }






define void @PR20822() {

entry:
  %f = alloca %struct.S, align 4

  br i1 undef, label %if.end, label %for.cond

for.cond:                                         
  br label %if.end

if.end:                                           
  %f2 = phi %struct.S* [ %f, %entry ], [ %f, %for.cond ]


  phi i32 [ undef, %entry ], [ undef, %for.cond ]
  br i1 undef, label %if.then5, label %if.then2

if.then2:                                         
  br label %if.then5

if.then5:                                         
  %f1 = phi %struct.S* [ undef, %if.then2 ], [ %f2, %if.end ]

  store %struct.S undef, %struct.S* %f1, align 4
  ret void
}
