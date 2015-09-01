






define void @f1(i8 zeroext)

{
        ret void
}

define void @f2(i8 signext)

{
        ret void
}

define void @f3() noreturn

{
        ret void
}

define void @f4(i8 inreg)

{
        ret void
}

define void @f5(i8* sret)

{
        ret void
}

define void @f6() nounwind

{
        ret void
}

define void @f7(i8* noalias)

{
        ret void
}

define void @f8(i8* byval)

{
        ret void
}

define void @f9(i8* nest)

{
        ret void
}

define void @f10() readnone

{
        ret void
}

define void @f11() readonly

{
        ret void
}

define void @f12() noinline

{
        ret void
}

define void @f13() alwaysinline

{
        ret void
}

define void @f14() optsize

{
        ret void
}

define void @f15() ssp

{
        ret void
}

define void @f16() sspreq

{
        ret void
}

define void @f17(i8 align 4)

{
        ret void
}

define void @f18(i8* nocapture)

{
        ret void
}

define void @f19() noredzone

{
        ret void
}

define void @f20() noimplicitfloat

{
        ret void
}

define void @f21() naked

{
        ret void
}

define void @f22() inlinehint

{
        ret void
}

define void @f23() alignstack(4)

{
        ret void
}

define void @f24() returns_twice

{
        ret void
}

define void @f25() uwtable

{
        ret void
}

define void @f26() nonlazybind

{
        ret void
}

define void @f27() sanitize_address

{
        ret void
}
define void @f28() sanitize_thread

{
        ret void
}
define void @f29() sanitize_memory

{
        ret void
}

define void @f30() "cpu"="cortex-a8"

{
        ret void
}

define i8 @f31(i8 returned %A)

{
        ret i8 %A
}

define void @f32() sspstrong

{
        ret void
}

define void @f33() minsize

{
        ret void
}

declare void @nobuiltin()

define void @f34()

{
        call void @nobuiltin() nobuiltin

        ret void
}

























