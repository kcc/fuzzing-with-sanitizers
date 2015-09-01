




	
%CHESS_POSITION = type { i32, i32 }
@pawn_probes = external global i32		
@pawn_hash_mask = external global i32		
@search = external global %CHESS_POSITION		

define void @Evaluate() {
	%reg1321 = getelementptr %CHESS_POSITION, %CHESS_POSITION* @search, i64 0, i32 1		
	%reg114 = load i32, i32* %reg1321		
	%reg1801 = getelementptr %CHESS_POSITION, %CHESS_POSITION* @search, i64 0, i32 0		
	%reg182 = load i32, i32* %reg1801		
	ret void
}
