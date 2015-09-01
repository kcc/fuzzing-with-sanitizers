


	%struct.sockaddr = type <{ i8, i8, [14 x i8] }>

define i32 @main(i32 %argc, i8** %argv) nounwind {
entry:
	br label %while.cond

while.cond:		
	switch i32 undef, label %sw.default [
		i32 -1, label %while.end
		i32 119, label %sw.bb6
	]

sw.bb6:		
	br i1 undef, label %if.then, label %while.cond

if.then:		
	ret i32 1

sw.default:		
	ret i32 1

while.end:		
	br i1 undef, label %if.then15, label %if.end16

if.then15:		
	ret i32 1

if.end16:		
	br i1 undef, label %lor.lhs.false, label %if.then21

lor.lhs.false:		
	br i1 undef, label %if.end22, label %if.then21

if.then21:		
	ret i32 1

if.end22:		
	br i1 undef, label %lor.lhs.false27, label %if.then51

lor.lhs.false27:		
	br i1 undef, label %lor.lhs.false39, label %if.then51

lor.lhs.false39:		
	br i1 undef, label %if.end52, label %if.then51

if.then51:		
	ret i32 1

if.end52:		
	br i1 undef, label %if.then57, label %if.end58

if.then57:		
	ret i32 1

if.end58:		
	br i1 undef, label %if.then64, label %if.end65

if.then64:		
	ret i32 1

if.end65:		
	br i1 undef, label %if.then71, label %if.end72

if.then71:		
	ret i32 1

if.end72:		
	br i1 undef, label %if.then83, label %if.end84

if.then83:		
	ret i32 1

if.end84:		
	br i1 undef, label %if.then101, label %if.end102

if.then101:		
	ret i32 1

if.end102:		
	br i1 undef, label %if.then113, label %if.end114

if.then113:		
	ret i32 1

if.end114:		
	br i1 undef, label %if.then209, label %if.end210

if.then209:		
	ret i32 1

if.end210:		
	br i1 undef, label %if.then219, label %if.end220

if.then219:		
	ret i32 1

if.end220:		
	br i1 undef, label %if.end243, label %lor.lhs.false230

lor.lhs.false230:		
	unreachable

if.end243:		
	br i1 undef, label %if.then249, label %if.end250

if.then249:		
	ret i32 1

if.end250:		
	br i1 undef, label %if.end261, label %if.then260

if.then260:		
	ret i32 1

if.end261:		
	br i1 undef, label %if.then270, label %if.end271

if.then270:		
	ret i32 1

if.end271:		
	%call.i = call i32 @arc4random() nounwind		
	%rem.i = urem i32 %call.i, 16383		
	%rem1.i = trunc i32 %rem.i to i16		
	%conv2.i = or i16 %rem1.i, -16384		
	%0 = call i16 asm "xchgb ${0:h}, ${0:b}", "=Q,0,~{dirflag},~{fpsr},~{flags}"(i16 %conv2.i) nounwind		
	store i16 %0, i16* undef
	%call281 = call i32 @bind(i32 undef, %struct.sockaddr* undef, i32 16) nounwind		
	unreachable
}

declare i32 @bind(i32, %struct.sockaddr*, i32)

declare i32 @arc4random()
