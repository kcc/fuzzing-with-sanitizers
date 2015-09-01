



%struct.float4 = type { float, float, float, float }



define void @bar(%struct.float4 %f) {
entry:
  ret void
}



define void @foo([5 x i32] %f) {
entry:
  ret void
}

