


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"





@global = external global i32		
@extern_weak_global = extern_weak global i32		




define fastcc i32 @raise_load_1(i32* %a_arg, i32 %a_len_arg, i32 %start_arg) nounwind readonly {





entry:
	%tmp2 = icmp sge i32 %start_arg, %a_len_arg		
	br i1 %tmp2, label %if, label %else

if:		
	ret i32 0

else:		
	%tmp7 = add i32 %start_arg, 1		
	%tmp8 = call fastcc i32 @raise_load_1(i32* %a_arg, i32 %a_len_arg, i32 %tmp7)		
	%tmp9 = load i32, i32* %a_arg		
	%tmp10 = add i32 %tmp9, %tmp8		
	ret i32 %tmp10
}




define fastcc i32 @raise_load_2(i32* %a_arg, i32 %a_len_arg, i32 %start_arg) readonly {





entry:
	%tmp2 = icmp sge i32 %start_arg, %a_len_arg		
	br i1 %tmp2, label %if, label %else

if:		
	ret i32 0

else:		
	%nullcheck = icmp eq i32* %a_arg, null		
	br i1 %nullcheck, label %unwind, label %recurse

unwind:		
	unreachable

recurse:		
	%tmp7 = add i32 %start_arg, 1		
	%tmp8 = call fastcc i32 @raise_load_2(i32* %a_arg, i32 %a_len_arg, i32 %tmp7)		
	%tmp9 = load i32, i32* @global		
	%tmp10 = add i32 %tmp9, %tmp8		
	ret i32 %tmp10
}




define fastcc i32 @raise_load_3(i32* %a_arg, i32 %a_len_arg, i32 %start_arg) nounwind readonly {





entry:
	%tmp2 = icmp sge i32 %start_arg, %a_len_arg		
	br i1 %tmp2, label %if, label %else

if:		
	ret i32 0

else:		
	%tmp7 = add i32 %start_arg, 1		
	%tmp8 = call fastcc i32 @raise_load_3(i32* %a_arg, i32 %a_len_arg, i32 %tmp7)		
	%tmp9 = load i32, i32* @extern_weak_global		
	%tmp10 = add i32 %tmp9, %tmp8		
	ret i32 %tmp10
}





define fastcc i32 @raise_load_4(i32* %a_arg, i32 %a_len_arg, i32 %start_arg) readonly {






entry:
	%tmp2 = icmp sge i32 %start_arg, %a_len_arg		
	br i1 %tmp2, label %if, label %else

if:		
	ret i32 0

else:		
	%nullcheck = icmp eq i32* %a_arg, null		
	br i1 %nullcheck, label %unwind, label %recurse

unwind:		
	unreachable

recurse:		
	%tmp7 = add i32 %start_arg, 1		
	%first = load i32, i32* %a_arg		
	%tmp8 = call fastcc i32 @raise_load_4(i32* %a_arg, i32 %first, i32 %tmp7)		
	%second = load i32, i32* %a_arg		
	%tmp10 = add i32 %second, %tmp8		
	ret i32 %tmp10
}
