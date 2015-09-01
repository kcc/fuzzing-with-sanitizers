













define x86_fastcallcc void @func(i64 %X, i8 %Y, i8 %G, i16 %Z) {


        ret void
}

define x86_fastcallcc i32 @"\01DoNotMangle"(i32 %a) {


entry:
  ret i32 %a
}

define private x86_fastcallcc void @dontCrash() {



  ret void
}
