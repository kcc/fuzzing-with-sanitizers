




define signext  i8 @foo(i16 signext  %x) nounwind  {
	%retval56 = trunc i16 %x to i8
	ret i8 %retval56
}
