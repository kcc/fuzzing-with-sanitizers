





define internal fastcc zeroext i8 @handle_compress() nounwind {
end165:
  br i1 1, label %false239, label %true181

true181:
  br i1 1, label %then187, label %else232

then187:
  br label %end265

else232:
  br i1 1, label %false239, label %then245

false239:
  br i1 1, label %then245, label %else259

then245:
  br i1 1, label %then251, label %end253

then251:
  br label %end253

end253:
  br label %end265

else259:
  br label %end265

end265:
  br i1 1, label %then291, label %end298

then291:
  br label %end298

end298:
  ret i8 1
}


















