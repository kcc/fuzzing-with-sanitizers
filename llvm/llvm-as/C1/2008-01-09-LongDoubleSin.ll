



target triple = "i686-pc-linux-gnu"

define x86_fp80 @f(x86_fp80 %x) nounwind  {
entry:
	%tmp2 = tail call x86_fp80 @sinl( x86_fp80 %x ) nounwind readonly 		
	ret x86_fp80 %tmp2
}

declare x86_fp80 @sinl(x86_fp80) nounwind readonly 
