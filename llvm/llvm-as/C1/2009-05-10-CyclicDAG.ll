


target datalayout = "e-p:16:8:8-i8:8:8-i16:8:8-i32:8:8"
target triple = "msp430-unknown-linux-gnu"
@uip_len = external global i16		

define void @uip_arp_arpin() nounwind {
entry:
	%tmp = load volatile i16, i16* @uip_len		
	%cmp = icmp ult i16 %tmp, 42		
	store volatile i16 0, i16* @uip_len
	br i1 %cmp, label %if.then, label %if.end

if.then:		
	ret void

if.end:		
	switch i16 0, label %return [
		i16 256, label %sw.bb
		i16 512, label %sw.bb18
	]

sw.bb:		
	ret void

sw.bb18:		
	ret void

return:		
	ret void
}
