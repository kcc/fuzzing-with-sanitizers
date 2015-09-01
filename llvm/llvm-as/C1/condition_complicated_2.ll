





define internal fastcc void @compress() nounwind {
end33:
  br i1 1, label %end124, label %lor.lhs.false95

lor.lhs.false95:
  br i1 1, label %then107, label %end172

then107:
  br i1 1, label %end124, label %then113

then113:
  br label %end124

end124:
  br label %exit

end172:
  br label %exit


exit:
  unreachable


}














