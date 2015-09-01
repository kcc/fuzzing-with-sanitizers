




declare i1 @foo()

declare i1 @bar(i32)


define void @a() {
entry:
	br label %BB.nomerge

BB.nomerge:		
        
        
	%a = phi i32 [ 1, %entry ], [ 0, %Common ]		
	br label %Succ

Succ:		
	%b = phi i32 [ %a, %BB.nomerge ], [ 2, %Common ]		
	%conde = call i1 @foo( )		
	br i1 %conde, label %Common, label %Exit

Common:		
	%cond = call i1 @foo( )		
	br i1 %cond, label %BB.nomerge, label %Succ

Exit:		
	ret void
}


define void @b() {
entry:
	br label %BB.nomerge

BB.nomerge:		
	br label %Succ

Succ:		
        
        
	%b = phi i32 [ 1, %BB.nomerge ], [ 2, %Common ]		
	%conde = call i1 @foo( )		
	br i1 %conde, label %Common, label %Exit

Common:		
	%cond = call i1 @foo( )		
	br i1 %cond, label %BB.nomerge, label %Succ

Exit:		
	ret void
}


define void @c() {
entry:
	br label %BB.tomerge

BB.tomerge:		
	br label %Succ

Succ:		
        
        
	%b = phi i32 [ 1, %BB.tomerge ], [ 1, %Common ], [ 2, %Pre-Exit ]
	%conde = call i1 @foo( )		
	br i1 %conde, label %Common, label %Pre-Exit

Common:		
	%cond = call i1 @foo( )		
	br i1 %cond, label %BB.tomerge, label %Succ

Pre-Exit:       
        
        
	%cond2 = call i1 @foo( )		
	br i1 %cond2, label %Succ, label %Exit
        
Exit:		
	ret void
}


define void @d() {
entry:
	br label %BB.tomerge

BB.tomerge:		
        
        
	%a = phi i32 [ 1, %entry ], [ 0, %Common ]		
	br label %Succ

Succ:		
	%b = phi i32 [ %a, %BB.tomerge ], [ 0, %Common ]		
	%conde = call i1 @foo( )		
	br i1 %conde, label %Common, label %Exit

Common:		
	%cond = call i1 @foo( )		
	br i1 %cond, label %BB.tomerge, label %Succ

Exit:		
	ret void
}


define void @e() {
entry:
	br label %BB.tomerge

BB.tomerge:		
        
        
	%a = phi i32 [ 1, %entry ], [ 0, %Use ]		
	br label %Succ

Succ:		
	%conde = call i1 @foo( )		
	br i1 %conde, label %Use, label %Exit

Use:		
	%cond = call i1 @bar( i32 %a )		
	br i1 %cond, label %BB.tomerge, label %Exit

Exit:		
	ret void
}
