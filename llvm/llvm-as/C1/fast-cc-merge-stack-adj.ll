


target triple = "i686-pc-linux-gnu"

declare x86_fastcallcc void @func(i32*, i64 inreg)

define x86_fastcallcc void @caller(i32, i64) {
        %X = alloca i32         
        call x86_fastcallcc void @func( i32* %X, i64 0 )
        ret void
}

