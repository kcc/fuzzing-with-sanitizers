


target triple = "i386-pc-mingw32"
define void @_ZNK18qdesigner_internal10TreeWidget12drawBranchesEP8QPainterRK5QRectRK11QModelIndex() nounwind {
entry:
	br label %_ZNK11QModelIndex7isValidEv.exit.i

bb.i:		
	%indvar.next = add i32 %result.0.i, 1		
	br label %_ZNK11QModelIndex7isValidEv.exit.i

_ZNK11QModelIndex7isValidEv.exit.i:		
	%result.0.i = phi i32 [ 0, %entry ], [ %indvar.next, %bb.i ]		
	%0 = load i32*, i32** null, align 4		
	br i1 false, label %_ZN18qdesigner_internalL5levelEP18QAbstractItemModelRK11QModelIndex.exit, label %bb.i

_ZN18qdesigner_internalL5levelEP18QAbstractItemModelRK11QModelIndex.exit:		
	%1 = call i32 @_ZNK9QTreeView11indentationEv(i32* null) nounwind		
	%2 = mul i32 %1, %result.0.i		
	%3 = add i32 %2, -2		
	%4 = add i32 %3, 0		
	store i32 %4, i32* null, align 8
	unreachable
}

declare i32 @_ZNK9QTreeView11indentationEv(i32*)
