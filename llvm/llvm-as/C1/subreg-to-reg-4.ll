












define void @bar(i64 %x, i64 %y, i64* %z) nounwind readnone {
entry:
	%t0 = add i64 %x, %y
	%t1 = and i64 %t0, 4294967295
        store i64 %t1, i64* %z
	ret void
}
define void @easy(i32 %x, i32 %y, i64* %z) nounwind readnone {
entry:
	%t0 = add i32 %x, %y
        %tn = zext i32 %t0 to i64
	%t1 = and i64 %tn, 4294967295
        store i64 %t1, i64* %z
	ret void
}
define void @cola(i64 *%x, i64 %y, i64* %z, i64 %u) nounwind readnone {
entry:
        %p = load i64, i64* %x
	%t0 = add i64 %p, %y
	%t1 = and i64 %t0, 4294967295
        %t2 = xor i64 %t1, %u
        store i64 %t2, i64* %z
	ret void
}
define void @yaks(i64 *%x, i64 %y, i64* %z, i64 %u) nounwind readnone {
entry:
        %p = load i64, i64* %x
	%t0 = add i64 %p, %y
        %t1 = xor i64 %t0, %u
	%t2 = and i64 %t1, 4294967295
        store i64 %t2, i64* %z
	ret void
}
define void @foo(i64 *%x, i64 *%y, i64* %z) nounwind readnone {
entry:
        %a = load i64, i64* %x
        %b = load i64, i64* %y
	%t0 = add i64 %a, %b
	%t1 = and i64 %t0, 4294967295
        store i64 %t1, i64* %z
	ret void
}
define void @avo(i64 %x, i64* %z, i64 %u) nounwind readnone {
entry:
	%t0 = add i64 %x, 734847
	%t1 = and i64 %t0, 4294967295
        %t2 = xor i64 %t1, %u
        store i64 %t2, i64* %z
	ret void
}
define void @phe(i64 %x, i64* %z, i64 %u) nounwind readnone {
entry:
	%t0 = add i64 %x, 734847
        %t1 = xor i64 %t0, %u
	%t2 = and i64 %t1, 4294967295
        store i64 %t2, i64* %z
	ret void
}
define void @oze(i64 %y, i64* %z) nounwind readnone {
entry:
	%t0 = add i64 %y, 1
	%t1 = and i64 %t0, 4294967295
        store i64 %t1, i64* %z
	ret void
}

define void @sbar(i64 %x, i64 %y, i64* %z) nounwind readnone {
entry:
	%t0 = sub i64 %x, %y
	%t1 = and i64 %t0, 4294967295
        store i64 %t1, i64* %z
	ret void
}
define void @seasy(i32 %x, i32 %y, i64* %z) nounwind readnone {
entry:
	%t0 = sub i32 %x, %y
        %tn = zext i32 %t0 to i64
	%t1 = and i64 %tn, 4294967295
        store i64 %t1, i64* %z
	ret void
}
define void @scola(i64 *%x, i64 %y, i64* %z, i64 %u) nounwind readnone {
entry:
        %p = load i64, i64* %x
	%t0 = sub i64 %p, %y
	%t1 = and i64 %t0, 4294967295
        %t2 = xor i64 %t1, %u
        store i64 %t2, i64* %z
	ret void
}
define void @syaks(i64 *%x, i64 %y, i64* %z, i64 %u) nounwind readnone {
entry:
        %p = load i64, i64* %x
	%t0 = sub i64 %p, %y
        %t1 = xor i64 %t0, %u
	%t2 = and i64 %t1, 4294967295
        store i64 %t2, i64* %z
	ret void
}
define void @sfoo(i64 *%x, i64 *%y, i64* %z) nounwind readnone {
entry:
        %a = load i64, i64* %x
        %b = load i64, i64* %y
	%t0 = sub i64 %a, %b
	%t1 = and i64 %t0, 4294967295
        store i64 %t1, i64* %z
	ret void
}
define void @swya(i64 %y, i64* %z) nounwind readnone {
entry:
	%t0 = sub i64 0, %y
	%t1 = and i64 %t0, 4294967295
        store i64 %t1, i64* %z
	ret void
}
define void @soze(i64 %y, i64* %z) nounwind readnone {
entry:
	%t0 = sub i64 %y, 1
	%t1 = and i64 %t0, 4294967295
        store i64 %t1, i64* %z
	ret void
}
