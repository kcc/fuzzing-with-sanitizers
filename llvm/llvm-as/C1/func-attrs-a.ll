





%struct.S0 = type <{ i8, i8, i8, i8 }>

define void @a() {
  call void @check0(%struct.S0* sret null, %struct.S0* byval align 4 null, %struct.S0* align 4 null, %struct.S0* byval align 4 null)
  ret void
}

declare void @check0(%struct.S0*, %struct.S0*, %struct.S0*, %struct.S0*)
