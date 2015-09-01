










declare i1 @foo()

declare i1 @bar(i32)

define i32 @test(i1 %a) {
Q:
        br i1 %a, label %N, label %M
N:              
        br label %M
M:              
        
        
        %W = phi i32 [ 2, %N ], [ 2, %Q ]               
        %R = add i32 %W, 1              
        ret i32 %R
}



define i8 @testundef(i32 %u) {
R:
  switch i32 %u, label %U [
    i32 0, label %S
    i32 1, label %T
    i32 2, label %T
  ]

S:                                            
  br label %U

T:                                           
  br label %U

U:                                        
  
  
  
  
  %val.0 = phi i8 [ undef, %R ], [ 1, %T ], [ 0, %S ]
  ret i8 %val.0
}



define i8 @testundef2(i32 %u, i32* %A) {
V:
  switch i32 %u, label %U [
    i32 0, label %W
    i32 1, label %X
    i32 2, label %X
    i32 3, label %Z
  ]

W:                                            
  br label %U

Z:
  store i32 0, i32* %A, align 4
  br label %X

X:                                           
  br label %U

U:                                        
  
  
  
  
  
  %val.0 = phi i8 [ undef, %V ], [ 1, %X ], [ 1, %W ]
  ret i8 %val.0
}

define i8 @testmergesome(i32 %u, i32* %A) {
V:
  switch i32 %u, label %Y [
    i32 0, label %W
    i32 1, label %X
    i32 2, label %X
    i32 3, label %Z
  ]

W:                                            
  store i32 1, i32* %A, align 4
  br label %Y

Z:
  store i32 0, i32* %A, align 4
  br label %X

X:                                           
  br label %Y

Y:                                        
  
  
  %val.0 = phi i8 [ 1, %V ], [ 1, %X ], [ 2, %W ]
  ret i8 %val.0
}


define i8 @testmergesome2(i32 %u, i32* %A) {
V:
  switch i32 %u, label %W [
    i32 0, label %W
    i32 1, label %Y
    i32 2, label %X
    i32 4, label %Y
  ]

W:                                            
  store i32 1, i32* %A, align 4
  br label %Y

X:                                           
  br label %Y

Y:                                        
  
  %val.0 = phi i8 [ undef, %V ], [ 1, %X ], [ 2, %W ], [ undef, %V ]
  ret i8 %val.0
}


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
