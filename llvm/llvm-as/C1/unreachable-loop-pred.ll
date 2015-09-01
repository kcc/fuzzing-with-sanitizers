






define void @is_extract_cab() nounwind {
entry:
  br label %header

header:                                       
  br label %while.body115

while.body115:                                    
  br i1 undef, label %header, label %while.body115

foo:
  br label %while.body115
}
