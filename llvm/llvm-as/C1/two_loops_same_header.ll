





define internal fastcc zeroext i8 @handle_compress() nounwind {
entry:
  br label %outer

outer:
  br label %body

body:
  br i1 1, label %else, label %true77

true77:
  br i1 1, label %then83, label %else

then83:
  br label %outer

else:
  br label %else106

else106:
  br i1 1, label %end, label %outer

end:
  ret i8 1
}
















