





define void @BZ2_blockSort() nounwind {
start:
  br label %while

while:
  br label %while.body134.i.i

while.body134.i.i:
  br i1 1, label %end, label %w

w:
  br label %if.end140.i.i

if.end140.i.i:
  br i1 1, label %while.end186.i.i, label %if.end183.i.i

if.end183.i.i:
  br label %while.body134.i.i

while.end186.i.i:
  br label %while

end:
  ret void
}












