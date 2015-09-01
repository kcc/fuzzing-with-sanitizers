


target datalayout = "n8:16:32:64"


define void @PR21651() {
  switch i2 0, label %out [
    i2 0, label %out
    i2 1, label %out
  ]

out:
  ret void
}









