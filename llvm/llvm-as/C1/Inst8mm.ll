
target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8"
target triple = "msp430-generic-generic"

@foo = common global i8 0, align 1
@bar = common global i8 0, align 1

define void @mov() nounwind {


        %1 = load i8, i8* @bar
        store i8 %1, i8* @foo
        ret void
}

define void @add() nounwind {


	%1 = load i8, i8* @bar
	%2 = load i8, i8* @foo
	%3 = add i8 %2, %1
	store i8 %3, i8* @foo
	ret void
}

define void @and() nounwind {


	%1 = load i8, i8* @bar
	%2 = load i8, i8* @foo
	%3 = and i8 %2, %1
	store i8 %3, i8* @foo
	ret void
}

define void @bis() nounwind {


	%1 = load i8, i8* @bar
	%2 = load i8, i8* @foo
	%3 = or i8 %2, %1
	store i8 %3, i8* @foo
	ret void
}

define void @xor() nounwind {


	%1 = load i8, i8* @bar
	%2 = load i8, i8* @foo
	%3 = xor i8 %2, %1
	store i8 %3, i8* @foo
	ret void
}

