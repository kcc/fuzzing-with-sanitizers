

@A = global i32 0


@B = alias i32* @A


@C = alias i32* @A


define i32 @main() {
	%tmp = load i32, i32* @C
	ret i32 %tmp
}


