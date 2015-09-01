
target datalayout = "e-p:16:8:8-i8:8:8-i8:8:8-i32:8:8"
target triple = "msp430-generic-generic"
@foo = common global i8 0, align 1

define void @mov() nounwind {


	store i8 2, i8 * @foo
	ret void
}

define void @add() nounwind {


	%1 = load i8, i8* @foo
	%2 = add i8 %1, 2
	store i8 %2, i8 * @foo
	ret void
}

define void @and() nounwind {


	%1 = load i8, i8* @foo
	%2 = and i8 %1, 2
	store i8 %2, i8 * @foo
	ret void
}

define void @bis() nounwind {


	%1 = load i8, i8* @foo
	%2 = or i8 %1, 2
	store i8 %2, i8 * @foo
	ret void
}

define void @xor() nounwind {


	%1 = load i8, i8* @foo
	%2 = xor i8 %1, 2
	store i8 %2, i8 * @foo
	ret void
}

