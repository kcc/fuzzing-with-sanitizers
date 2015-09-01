

	%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }

define void @main() {
entry:
	br i1 false, label %then.2.i, label %endif.2.i

then.2.i:		
	br label %dealwithargs.exit

endif.2.i:		
	br i1 false, label %then.3.i, label %dealwithargs.exit

then.3.i:		
	br label %dealwithargs.exit

dealwithargs.exit:		
	%n_nodes.4 = phi i32 [ 64, %then.3.i ], [ 64, %then.2.i ], [ 64, %endif.2.i ]		
	%tmp.14.i1134.i.i = icmp sgt i32 %n_nodes.4, 1		
	br i1 %tmp.14.i1134.i.i, label %no_exit.i12.i.i, label %fill_table.exit22.i.i

no_exit.i12.i.i:		
	br i1 false, label %fill_table.exit22.i.i, label %no_exit.i12.i.i

fill_table.exit22.i.i:		
	%cur_node.0.i8.1.i.i = phi %struct.node_t* [ undef, %dealwithargs.exit ], [ null, %no_exit.i12.i.i ]		
	br i1 %tmp.14.i1134.i.i, label %no_exit.i.preheader.i.i, label %make_tables.exit.i

no_exit.i.preheader.i.i:		
	ret void

make_tables.exit.i:		
	ret void
}
