

	%struct.anon = type { i32 (i32, i32, i32)*, i32, i32, [3 x i32], i8*, i8*, i8* }
@r = external global [14 x i32]		
@isa = external global [13 x %struct.anon]		
@pgm = external global [2 x { i32, [3 x i32] }]		
@numi = external global i32		
@counter = external global [2 x i32]		




define void @main_bb_2E_i_bb205_2E_i_2E_i_bb115_2E_i_2E_i() {
newFuncRoot:
	br label %bb115.i.i

bb115.i.i.bb170.i.i_crit_edge.exitStub:		
	ret void

bb115.i.i.bb115.i.i_crit_edge:		
	br label %bb115.i.i

bb115.i.i:		
	%i_addr.3210.0.i.i = phi i32 [ %tmp166.i.i, %bb115.i.i.bb115.i.i_crit_edge ], [ 0, %newFuncRoot ]		
	%tmp124.i.i = getelementptr [2 x { i32, [3 x i32] }], [2 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %i_addr.3210.0.i.i, i32 1, i32 0		
	%tmp125.i.i = load i32, i32* %tmp124.i.i		
	%tmp126.i.i = getelementptr [14 x i32], [14 x i32]* @r, i32 0, i32 %tmp125.i.i		
	%tmp127.i.i = load i32, i32* %tmp126.i.i		
	%tmp131.i.i = getelementptr [2 x { i32, [3 x i32] }], [2 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %i_addr.3210.0.i.i, i32 1, i32 1		
	%tmp132.i.i = load i32, i32* %tmp131.i.i		
	%tmp133.i.i = getelementptr [14 x i32], [14 x i32]* @r, i32 0, i32 %tmp132.i.i		
	%tmp134.i.i = load i32, i32* %tmp133.i.i		
	%tmp138.i.i = getelementptr [2 x { i32, [3 x i32] }], [2 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %i_addr.3210.0.i.i, i32 1, i32 2		
	%tmp139.i.i = load i32, i32* %tmp138.i.i		
	%tmp140.i.i = getelementptr [14 x i32], [14 x i32]* @r, i32 0, i32 %tmp139.i.i		
	%tmp141.i.i = load i32, i32* %tmp140.i.i		
	%tmp143.i.i = add i32 %i_addr.3210.0.i.i, 12		
	%tmp146.i.i = getelementptr [2 x { i32, [3 x i32] }], [2 x { i32, [3 x i32] }]* @pgm, i32 0, i32 %i_addr.3210.0.i.i, i32 0		
	%tmp147.i.i = load i32, i32* %tmp146.i.i		
	%tmp149.i.i = getelementptr [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i32 %tmp147.i.i, i32 0		
	%tmp150.i.i = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %tmp149.i.i		
	%tmp154.i.i = tail call i32 %tmp150.i.i( i32 %tmp127.i.i, i32 %tmp134.i.i, i32 %tmp141.i.i )		
	%tmp155.i.i = getelementptr [14 x i32], [14 x i32]* @r, i32 0, i32 %tmp143.i.i		
	store i32 %tmp154.i.i, i32* %tmp155.i.i
	%tmp159.i.i = getelementptr [2 x i32], [2 x i32]* @counter, i32 0, i32 %i_addr.3210.0.i.i		
	%tmp160.i.i = load i32, i32* %tmp159.i.i		
	%tmp161.i.i = add i32 %tmp160.i.i, 1		
	store i32 %tmp161.i.i, i32* %tmp159.i.i
	%tmp166.i.i = add i32 %i_addr.3210.0.i.i, 1		
	%tmp168.i.i = load i32, i32* @numi		
	icmp slt i32 %tmp166.i.i, %tmp168.i.i		
	br i1 %0, label %bb115.i.i.bb115.i.i_crit_edge, label %bb115.i.i.bb170.i.i_crit_edge.exitStub
}

define void @PR15520(void ()* %fn) {
  call void %fn()
  ret void




}
