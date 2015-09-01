


declare i1 ()* @getfunc()

define internal i1 @testfunc() {
        %F = call i1 ()* () @getfunc( )                
        %c = icmp eq i1 ()* %F, @testfunc               
        ret i1 %c
}

