

@G = external global i32*               

declare void @Fn(i32*)

define i32 @main(i32 %argc.1, i8** %argv.1) {
entry:
        br label %endif.42

endif.42:               
        br i1 false, label %endif.65, label %endif.42

then.66:                
        call void @Fn( i32* %tmp.2846 )
        br label %endif.42

endif.65:               
        %tmp.2846 = load i32*, i32** @G               
        br i1 false, label %shortcirc_next.12, label %shortcirc_done.12

shortcirc_next.12:              
        br label %shortcirc_done.12

shortcirc_done.12:              
        br i1 false, label %then.66, label %endif.42
}

