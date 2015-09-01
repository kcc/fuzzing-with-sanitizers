














%A   = type { i8 }
%B   = type { %A }
%C   = type { %B }
%C.0 = type { %B }
define void @f1() {
  getelementptr %C, %C* null, i64 0, i32 0, i32 0
  ret void
}
@g1 = external global %C.0
