
@b = external global i32, align 4
@fn3.i = external global i32, align 4

declare i32 @g() nounwind

define i32 @f() {
entry:
  br label %for.cond

for.cond:                                         


  store i32 0, i32* @b, align 4
  br i1 true, label %for.body.preheader, label %for.end

for.body.preheader:                               
  br label %for.body

for.body:                                         
  %g.15 = phi i32 [ undef, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx2 = getelementptr inbounds i32, i32* @fn3.i, i64 0
  %0 = load i32, i32* %arrayidx2, align 4
  %call = call i32 @g()
  br i1 false, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  %whatever = phi i32 [ %call, %for.end.loopexit ], [ undef, %for.cond ]
  br i1 false, label %for.cond, label %if.then

if.then:                                          




  ret i32 %whatever
}
