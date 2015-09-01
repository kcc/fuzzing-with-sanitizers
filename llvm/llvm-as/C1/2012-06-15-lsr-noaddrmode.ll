




































%s = type { i32* }

@ncol = external global i32, align 4

declare i32* @getptr() nounwind
declare %s* @getstruct() nounwind







define i32 @main() nounwind ssp {
entry:
  %v0 = load i32, i32* @ncol, align 4
  %v1 = tail call i32* @getptr() nounwind
  %cmp10.i = icmp eq i32 %v0, 0
  br label %while.cond.outer

while.cond.outer:
  %call18 = tail call %s* @getstruct() nounwind
  br label %while.cond

while.cond:
  %cmp20 = icmp eq i32* %v1, null
  br label %while.body

while.body:
  %v3 = load i32, i32* @ncol, align 4
  br label %end_of_chain

end_of_chain:
  %state.i = getelementptr inbounds %s, %s* %call18, i32 0, i32 0
  %v4 = load i32*, i32** %state.i, align 4
  br label %while.cond.i.i

while.cond.i.i:
  %counter.0.i.i = phi i32 [ %v3, %end_of_chain ], [ %dec.i.i, %land.rhs.i.i ]
  %dec.i.i = add nsw i32 %counter.0.i.i, -1
  %tobool.i.i = icmp eq i32 %counter.0.i.i, 0
  br i1 %tobool.i.i, label %where.exit, label %land.rhs.i.i

land.rhs.i.i:
  %arrayidx.i.i = getelementptr inbounds i32, i32* %v4, i32 %dec.i.i
  %v5 = load i32, i32* %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, i32* %v1, i32 %dec.i.i
  %v6 = load i32, i32* %arrayidx1.i.i, align 4
  %cmp.i.i = icmp eq i32 %v5, %v6
  br i1 %cmp.i.i, label %while.cond.i.i, label %equal_data.exit.i

equal_data.exit.i:
  ret i32 %counter.0.i.i

where.exit:
  br label %while.end.i

while.end.i:
  ret i32 %v3
}
