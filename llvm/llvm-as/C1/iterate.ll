

@G = internal global i32 0              
@H = internal global { i32* } { i32* @G }               

define i32 @loadg() {
        %G = load i32*, i32** getelementptr ({ i32* }, { i32* }* @H, i32 0, i32 0)              
        %GV = load i32, i32* %G              
        ret i32 %GV
}

