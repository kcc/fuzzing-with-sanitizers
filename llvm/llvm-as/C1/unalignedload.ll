





%struct.S2 = type { %struct.S1, %struct.S1 }
%struct.S1 = type { i8, i8 }
%struct.S4 = type { [7 x i8] }

@s2 = common global %struct.S2 zeroinitializer, align 1
@s4 = common global %struct.S4 zeroinitializer, align 1

define void @bar1() nounwind {
entry:

















  tail call void @foo2(%struct.S1* byval getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 1)) nounwind
  ret void
}

define void @bar2() nounwind {
entry:








































  tail call void @foo4(%struct.S4* byval @s4) nounwind
  ret void
}

declare void @foo2(%struct.S1* byval)

declare void @foo4(%struct.S4* byval)
