

@var = external global i64		

define i32 @main() nounwind {
entry:



	atomicrmw sub i64* @var, i64 1 monotonic
	unreachable
}
