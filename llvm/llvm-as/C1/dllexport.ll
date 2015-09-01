








define void @notExported() {
	ret void
}


define dllexport void @f1() {
	ret void
}


define dllexport void @f2() unnamed_addr {
	ret void
}

declare dllexport void @not_defined()


define dllexport x86_stdcallcc void @stdfun() nounwind {
	ret void
}


define dllexport x86_fastcallcc i32 @fastfun() nounwind {
	ret i32 0
}


define dllexport x86_thiscallcc void @thisfun() nounwind {
	ret void
}


define linkonce_odr dllexport void @lnk1() {
	ret void
}


define linkonce_odr dllexport void @lnk2() alwaysinline {
	ret void
}


define weak_odr dllexport void @weak1() {
	ret void
}




@Var1 = dllexport global i32 1, align 4



@Var2 = dllexport unnamed_addr constant i32 1


@Var3 = common dllexport global i32 0, align 4


@WeakVar1 = weak_odr dllexport global i32 1, align 4


@WeakVar2 = weak_odr dllexport unnamed_addr constant i32 1




@alias = dllexport alias void()* @notExported



@alias2 = dllexport alias void()* @f1



@alias3 = dllexport alias void()* @notExported



@weak_alias = weak_odr dllexport alias void()* @f1








































