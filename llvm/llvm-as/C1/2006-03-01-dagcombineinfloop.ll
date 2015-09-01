

%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
	%struct.anon = type { i32 }
	%struct.lang_decl = type opaque
	%struct.lang_type = type { i32, [1 x %struct.tree_node*] }
	%struct.obstack = type { i32, %struct._obstack_chunk*, i8*, i8*, i8*, i32, i32, %struct._obstack_chunk* (...)*, void (...)*, i8*, i8 }
	%struct.rtx_def = type { i16, i8, i8, [1 x %struct.anon] }
	%struct.tree_common = type { %struct.tree_node*, %struct.tree_node*, i8, i8, i8, i8 }
	%struct.tree_decl = type { [12 x i8], i8*, i32, %struct.tree_node*, i32, i8, i8, i8, i8, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.rtx_def*, %struct.anon, { %struct.rtx_def* }, %struct.tree_node*, %struct.lang_decl* }
	%struct.tree_list = type { [12 x i8], %struct.tree_node*, %struct.tree_node* }
	%struct.tree_node = type { %struct.tree_decl }
	%struct.tree_type = type { [12 x i8], %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, i32, i8, i8, i8, i8, i32, %struct.tree_node*, %struct.tree_node*, %struct.anon, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.obstack*, %struct.lang_type* }
@void_type_node = external global %struct.tree_node*		
@char_type_node = external global %struct.tree_node*		
@short_integer_type_node = external global %struct.tree_node*		
@short_unsigned_type_node = external global %struct.tree_node*		
@float_type_node = external global %struct.tree_node*		
@signed_char_type_node = external global %struct.tree_node*		
@unsigned_char_type_node = external global %struct.tree_node*		

define fastcc i32 @self_promoting_args_p(%struct.tree_node* %parms) {
entry:
	%tmp915 = icmp eq %struct.tree_node* %parms, null		
	br i1 %tmp915, label %return, label %cond_true92.preheader

cond_true:		
	%tmp9.not = icmp ne %struct.tree_node* %tmp2, %tmp7		
	%tmp14 = icmp eq %struct.tree_node* %tmp2, null		
	%bothcond = or i1 %tmp9.not, %tmp14		
	br i1 %bothcond, label %return, label %cond_next18

cond_next12:		
	%tmp14.old = icmp eq %struct.tree_node* %tmp2, null		
	br i1 %tmp14.old, label %return, label %cond_next18

cond_next18:		
	%tmp20 = bitcast %struct.tree_node* %tmp2 to %struct.tree_type*		
	%tmp21 = getelementptr %struct.tree_type, %struct.tree_type* %tmp20, i32 0, i32 17		
	%tmp22 = load %struct.tree_node*, %struct.tree_node** %tmp21		
	%tmp24 = icmp eq %struct.tree_node* %tmp22, %tmp23		
	br i1 %tmp24, label %return, label %cond_next28

cond_next28:		
	%tmp30 = bitcast %struct.tree_node* %tmp2 to %struct.tree_common*		
	%tmp = getelementptr %struct.tree_common, %struct.tree_common* %tmp30, i32 0, i32 2		
	%tmp.upgrd.1 = bitcast i8* %tmp to i32*		
	%tmp.upgrd.2 = load i32, i32* %tmp.upgrd.1		
	%tmp32 = trunc i32 %tmp.upgrd.2 to i8		
	%tmp33 = icmp eq i8 %tmp32, 7		
	br i1 %tmp33, label %cond_true34, label %cond_next84

cond_true34:		
	%tmp40 = icmp eq %struct.tree_node* %tmp22, %tmp39		
	%tmp49 = icmp eq %struct.tree_node* %tmp22, %tmp48		
	%bothcond6 = or i1 %tmp40, %tmp49		
	%tmp58 = icmp eq %struct.tree_node* %tmp22, %tmp57		
	%bothcond7 = or i1 %bothcond6, %tmp58		
	%tmp67 = icmp eq %struct.tree_node* %tmp22, %tmp66		
	%bothcond8 = or i1 %bothcond7, %tmp67		
	%tmp76 = icmp eq %struct.tree_node* %tmp22, %tmp75		
	%bothcond9 = or i1 %bothcond8, %tmp76		
	%brmerge = or i1 %bothcond9, %tmp.upgrd.6		
	%bothcond9.upgrd.3 = zext i1 %bothcond9 to i32		
	%.mux = xor i32 %bothcond9.upgrd.3, 1		
	br i1 %brmerge, label %return, label %cond_true92

cond_next84:		
	br i1 %tmp.upgrd.6, label %return, label %cond_true92

cond_true92.preheader:		
	%tmp7 = load %struct.tree_node*, %struct.tree_node** @void_type_node		
	%tmp23 = load %struct.tree_node*, %struct.tree_node** @float_type_node		
	%tmp39 = load %struct.tree_node*, %struct.tree_node** @char_type_node		
	%tmp48 = load %struct.tree_node*, %struct.tree_node** @signed_char_type_node		
	%tmp57 = load %struct.tree_node*, %struct.tree_node** @unsigned_char_type_node		
	%tmp66 = load %struct.tree_node*, %struct.tree_node** @short_integer_type_node		
	%tmp75 = load %struct.tree_node*, %struct.tree_node** @short_unsigned_type_node		
	br label %cond_true92

cond_true92:		
	%t.0.0 = phi %struct.tree_node* [ %parms, %cond_true92.preheader ], [ %tmp6, %cond_true34 ], [ %tmp6, %cond_next84 ]		
	%tmp.upgrd.4 = bitcast %struct.tree_node* %t.0.0 to %struct.tree_list*		
	%tmp.upgrd.5 = getelementptr %struct.tree_list, %struct.tree_list* %tmp.upgrd.4, i32 0, i32 2		
	%tmp2 = load %struct.tree_node*, %struct.tree_node** %tmp.upgrd.5		
	%tmp4 = bitcast %struct.tree_node* %t.0.0 to %struct.tree_common*		
	%tmp5 = getelementptr %struct.tree_common, %struct.tree_common* %tmp4, i32 0, i32 0		
	%tmp6 = load %struct.tree_node*, %struct.tree_node** %tmp5		
	%tmp.upgrd.6 = icmp eq %struct.tree_node* %tmp6, null		
	br i1 %tmp.upgrd.6, label %cond_true, label %cond_next12

return:		
	%retval.0 = phi i32 [ 1, %entry ], [ 1, %cond_next84 ], [ %.mux, %cond_true34 ], [ 0, %cond_next18 ], [ 0, %cond_next12 ], [ 0, %cond_true ]		
	ret i32 %retval.0
}
