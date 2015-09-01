






@extern_weak_global = extern_weak global i32		




define fastcc i32 @no_tailrecelim_1(i32* %a_arg, i32 %a_len_arg, i32 %start_arg) readonly {
entry:
	%tmp2 = icmp sge i32 %start_arg, %a_len_arg		
	br i1 %tmp2, label %if, label %else

if:		
	ret i32 37

else:		
	%tmp7 = add i32 %start_arg, 1		
	%tmp8 = call fastcc i32 @no_tailrecelim_1(i32* %a_arg, i32 %a_len_arg, i32 %tmp7)		
	%tmp9 = load i32, i32* @extern_weak_global		
	%tmp10 = add i32 %tmp9, %tmp8		
	ret i32 %tmp10
}



define fastcc i32 @no_tailrecelim_2(i32* %a_arg, i32 %a_len_arg, i32 %start_arg) nounwind {
entry:
	%tmp2 = icmp sge i32 %start_arg, %a_len_arg		
	br i1 %tmp2, label %if, label %else

if:		
	store i32 1, i32* %a_arg
        ret i32 0

else:		
	%tmp7 = add i32 %start_arg, 1		
	%tmp8 = call fastcc i32 @no_tailrecelim_2(i32* %a_arg, i32 %a_len_arg, i32 %tmp7)		
	%tmp9 = load i32, i32* %a_arg		
	%tmp10 = add i32 %tmp9, %tmp8		
	ret i32 %tmp10
}



define fastcc i32 @no_tailrecelim_3(i32* %a_arg, i32 %a_len_arg, i32 %start_arg) nounwind {
entry:
	%tmp2 = icmp sge i32 %start_arg, %a_len_arg		
	br i1 %tmp2, label %if, label %else

if:		
        ret i32 0

else:		
	%tmp7 = add i32 %start_arg, 1		
	%tmp8 = call fastcc i32 @no_tailrecelim_3(i32* %a_arg, i32 %a_len_arg, i32 %tmp7)		
	%tmp9 = load volatile i32, i32* %a_arg		
	%tmp10 = add i32 %tmp9, %tmp8		
	ret i32 %tmp10
}
