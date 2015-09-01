
target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8"
target triple = "msp430-generic-generic"
@foo = common global i16 0, align 2
@bar = common global i16 0, align 2

define void @mov() nounwind {


        %1 = load i16, i16* @bar
        store i16 %1, i16* @foo
        ret void
}

define void @add() nounwind {


	%1 = load i16, i16* @bar
	%2 = load i16, i16* @foo
	%3 = add i16 %2, %1
	store i16 %3, i16* @foo
	ret void
}

define void @and() nounwind {


	%1 = load i16, i16* @bar
	%2 = load i16, i16* @foo
	%3 = and i16 %2, %1
	store i16 %3, i16* @foo
	ret void
}

define void @bis() nounwind {


	%1 = load i16, i16* @bar
	%2 = load i16, i16* @foo
	%3 = or i16 %2, %1
	store i16 %3, i16* @foo
	ret void
}

define void @xor() nounwind {


	%1 = load i16, i16* @bar
	%2 = load i16, i16* @foo
	%3 = xor i16 %2, %1
	store i16 %3, i16* @foo
	ret void
}

define i16 @mov2() nounwind {
entry:
 %retval = alloca i16                            
 %x = alloca i32, align 2                        
 %y = alloca i32, align 2                        
 store i16 0, i16* %retval
 %tmp = load i32, i32* %y                             
 store i32 %tmp, i32* %x
 store i16 0, i16* %retval
 %0 = load i16, i16* %retval                          
 ret i16 %0



}
