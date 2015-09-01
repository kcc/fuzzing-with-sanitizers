

target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8"
target triple = "msp430-generic-generic"
@foo = common global i16 0, align 2

define void @mov() nounwind {


	store i16 2, i16 * @foo
	ret void
}

define void @add() nounwind {


	%1 = load i16, i16* @foo
	%2 = add i16 %1, 2
	store i16 %2, i16 * @foo
	ret void
}

define void @and() nounwind {


	%1 = load i16, i16* @foo
	%2 = and i16 %1, 2
	store i16 %2, i16 * @foo
	ret void
}

define void @bis() nounwind {


	%1 = load i16, i16* @foo
	%2 = or i16 %1, 2
	store i16 %2, i16 * @foo
	ret void
}

define void @xor() nounwind {


	%1 = load i16, i16* @foo
	%2 = xor i16 %1, 2
	store i16 %2, i16 * @foo
	ret void
}
