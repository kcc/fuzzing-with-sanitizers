










declare i32 @strlen(i8*)

define i32 @main(i32 %argc.1, i8** %argv.1, i8** %envp.1) {
	%tmp.2 = load i8*, i8** %envp.1		
	%tmp.3 = call i32 @strlen( i8* %tmp.2 )		
	%T = icmp eq i32 %tmp.3, 0		
	%R = zext i1 %T to i32		
	ret i32 %R
}

