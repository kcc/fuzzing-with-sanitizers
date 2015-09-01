

define zeroext i1 @testi1(i8 %in) nounwind {
entry:
  %c = icmp eq i8 %in, 5
  br i1 %c, label %true, label %false



true:
  br label %end




false:
  br label %end



end:
  %r = phi i1 [ 0, %false], [ 1, %true ]
  ret i1 %r


}

