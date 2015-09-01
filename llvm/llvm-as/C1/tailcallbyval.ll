
%struct.s = type {i32, i32, i32, i32, i32, i32, i32, i32,
                  i32, i32, i32, i32, i32, i32, i32, i32,
                  i32, i32, i32, i32, i32, i32, i32, i32 }

define  fastcc i32 @tailcallee(%struct.s* byval %a) nounwind {
entry:
        %tmp2 = getelementptr %struct.s, %struct.s* %a, i32 0, i32 0
        %tmp3 = load i32, i32* %tmp2
        ret i32 %tmp3


}

define  fastcc i32 @tailcaller(%struct.s* byval %a) nounwind {
entry:
        %tmp4 = tail call fastcc i32 @tailcallee(%struct.s* byval %a )
        ret i32 %tmp4


}
