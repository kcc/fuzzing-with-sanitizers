






define internal fastcc zeroext i8 @handle_compress() nounwind {
entry:
  br label %outer

outer:
  br label %body

body:
  br i1 1, label %exit172, label %end

exit172:
  br i1 1, label %end, label %outer

end:
  ret i8 1
}











