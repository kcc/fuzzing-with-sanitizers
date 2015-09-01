


declare i32 @x(i32*)
define i32 @b(i32* %a, i32* %b) {
entry:
        %tmp1 = load i32, i32* %a            
        %tmp3 = load i32, i32* %b           
        %add = add i32 %tmp1, %tmp3   
        %call = call i32 @x( i32* %a )
        %tobool = icmp ne i32 %add, 0
	
        %cond = select i1 %tobool, i32* %b, i32* %a             
        %tmp8 = load i32, i32* %cond       
        ret i32 %tmp8
}
