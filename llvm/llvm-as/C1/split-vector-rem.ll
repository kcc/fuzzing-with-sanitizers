


define <8 x i32> @foo(<8 x i32> %t, <8 x i32> %u) {
	%m = srem <8 x i32> %t, %u
	ret <8 x i32> %m
}
define <8 x i32> @bar(<8 x i32> %t, <8 x i32> %u) {
	%m = urem <8 x i32> %t, %u
	ret <8 x i32> %m
}
define <8 x float> @qux(<8 x float> %t, <8 x float> %u) {
	%m = frem <8 x float> %t, %u
	ret <8 x float> %m
}
