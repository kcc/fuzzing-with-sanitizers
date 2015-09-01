



%M = type opaque


global void (%M*)* @foo		

define void @foo.upgrd.1(i32* %V) {
	ret void
}

declare void @foo(%M*)

