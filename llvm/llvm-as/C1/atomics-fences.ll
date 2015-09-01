




define void @fence_acquire() {




  fence acquire
  ret void
}
define void @fence_release() {




  fence release
  ret void
}
define void @fence_seq_cst() {



  fence seq_cst
  ret void
}
