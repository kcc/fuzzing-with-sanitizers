







%struct.A = type {}

define i32 @main() {
entry:
  tail call void @"\01?sayhi@A@@QBEXXZ"(%struct.A* null)
  ret i32 0
}

declare void @"\01?sayhi@A@@QBEXXZ"(%struct.A*)
