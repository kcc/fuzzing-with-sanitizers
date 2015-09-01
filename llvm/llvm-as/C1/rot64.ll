






define i64 @foo(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:
	%0 = shl i64 %x, %z
	%1 = sub i64 64, %z
	%2 = lshr i64 %x, %1
	%3 = or i64 %2, %0
	ret i64 %3
}

define i64 @bar(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:
	%0 = shl i64 %y, %z
	%1 = sub i64 64, %z
	%2 = lshr i64 %x, %1
	%3 = or i64 %2, %0
	ret i64 %3
}

define i64 @un(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:
	%0 = lshr i64 %x, %z
	%1 = sub i64 64, %z
	%2 = shl i64 %x, %1
	%3 = or i64 %2, %0
	ret i64 %3
}

define i64 @bu(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:
	%0 = lshr i64 %y, %z
	%1 = sub i64 64, %z
	%2 = shl i64 %x, %1
	%3 = or i64 %2, %0
	ret i64 %3
}

define i64 @xfoo(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:


	%0 = lshr i64 %x, 57
	%1 = shl i64 %x, 7
	%2 = or i64 %0, %1
	ret i64 %2
}

define i64 @xfoop(i64* %p) nounwind readnone {
entry:


	%x = load i64, i64* %p
	%a = lshr i64 %x, 57
	%b = shl i64 %x, 7
	%c = or i64 %a, %b
	ret i64 %c
}

define i64 @xbar(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:
	%0 = shl i64 %y, 7
	%1 = lshr i64 %x, 57
	%2 = or i64 %0, %1
	ret i64 %2
}

define i64 @xun(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:


	%0 = lshr i64 %x, 7
	%1 = shl i64 %x, 57
	%2 = or i64 %0, %1
	ret i64 %2
}

define i64 @xunp(i64* %p) nounwind readnone {
entry:


	%x = load i64, i64* %p
	%a = lshr i64 %x, 7
	%b = shl i64 %x, 57
	%c = or i64 %a, %b
	ret i64 %c
}

define i64 @xbu(i64 %x, i64 %y, i64 %z) nounwind readnone {
entry:
	%0 = lshr i64 %y, 7
	%1 = shl i64 %x, 57
	%2 = or i64 %0, %1
	ret i64 %2
}
