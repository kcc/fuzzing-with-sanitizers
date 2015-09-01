




define i8 *@f1(i8 *%addr) {





entry:
  store i8 1, i8 *%addr
  br label %b.lab

b.lab:
  ret i8 *blockaddress(@f1, %b.lab)
}
