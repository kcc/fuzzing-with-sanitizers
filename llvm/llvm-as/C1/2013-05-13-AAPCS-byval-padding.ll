


%struct.S227 = type { [49 x i32], i32 }

define void @check227(
                      i32 %b,
                      %struct.S227* byval nocapture %arg0,
                      %struct.S227* %arg1) {




entry:












  %0 = ptrtoint %struct.S227* %arg1 to i32
  tail call void @useInt(i32 %0)
  ret void
}

declare void @useInt(i32)

