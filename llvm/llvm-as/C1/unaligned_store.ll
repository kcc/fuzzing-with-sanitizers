




define void @align1(i32* %p, i32 %val) nounwind {
entry:
	store i32 %val, i32* %p, align 1
	ret void
}





define void @align2(i32* %p, i32 %val) nounwind {
entry:
	store i32 %val, i32* %p, align 2
	ret void
}
