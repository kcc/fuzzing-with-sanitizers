

@stored_label = global i8* null

define void @foo() {

  %lab = load i8*, i8** @stored_label
  indirectbr i8* %lab, [label  %otherlab, label %retlab]




otherlab:
  ret void
retlab:
  ret void
}
