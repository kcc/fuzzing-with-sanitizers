





%struct.large = type { i64, i64 }

@s2 = common global %struct.large zeroinitializer, align 8

define void @foo() nounwind {
entry:
  call void @bar(%struct.large* byval @s2)
  ret void
}

declare void @bar(%struct.large* byval)
