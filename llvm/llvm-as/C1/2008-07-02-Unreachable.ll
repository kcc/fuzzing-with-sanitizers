


@g_3 = external global i8		

define i8 @func_1(i32 %x, i32 %y) nounwind  {
entry:
  %A = alloca i8
    %cmp = icmp eq i32 %x, %y
	br i1 %cmp, label %ifelse, label %ifthen

ifthen:		
	br label %ifend

ifelse:		
	%tmp3 = load i8, i8* @g_3		
        store i8 %tmp3, i8* %A
	br label %afterfor

forcond:		
	br i1 false, label %afterfor, label %forbody

forbody:		
	br label %forinc

forinc:		
	br label %forcond

afterfor:		
	%tmp10 = load i8, i8* @g_3		
	ret i8 %tmp10

ifend:		
	ret i8 0
}
