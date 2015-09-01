



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
	%llvm.dbg.anchor.type = type { i32, i32 }
	%"struct.__gnu_cxx::hash<void*>" = type <{ i8 }>
	%struct.__sched_param = type { i32 }
	%struct._pthread_descr_struct = type opaque
	%struct.pthread_attr_t = type { i32, i32, %struct.__sched_param, i32, i32, i32, i32, i8*, i32 }
	%struct.pthread_mutex_t = type { i32, i32, %struct._pthread_descr_struct*, i32, %llvm.dbg.anchor.type }
	%"struct.std::_Rb_tree<void*,std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > >,std::_Select1st<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >,std::less<void*>,std::allocator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > > >" = type { %"struct.std::_Rb_tree<void*,std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > >,std::_Select1st<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >,std::less<void*>,std::allocator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > > >::_Rb_tree_impl<std::less<void*>,false>" }
	%"struct.std::_Rb_tree<void*,std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > >,std::_Select1st<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >,std::less<void*>,std::allocator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > > >::_Rb_tree_impl<std::less<void*>,false>" = type { %"struct.__gnu_cxx::hash<void*>", %"struct.std::_Rb_tree_node_base", i32 }
	%"struct.std::_Rb_tree_iterator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >" = type { %"struct.std::_Rb_tree_node_base"* }
	%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
	%"struct.std::pair<std::_Rb_tree_iterator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >,bool>" = type { %"struct.std::_Rb_tree_iterator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >", i8 }
	%"struct.std::pair<void* const,void*>" = type { i8*, i8* }

@_ZL20__gthrw_pthread_oncePiPFvvE = weak alias i32 (i32*, void ()*)* @pthread_once		
@_ZL27__gthrw_pthread_getspecificj = weak alias i8* (i32)* @pthread_getspecific		
@_ZL27__gthrw_pthread_setspecificjPKv = weak alias i32 (i32, i8*)* @pthread_setspecific		
@_ZL22__gthrw_pthread_createPmPK16__pthread_attr_sPFPvS3_ES3_ = weak alias i32 (i32*, %struct.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create		
@_ZL22__gthrw_pthread_cancelm = weak alias i32 (i32)* @pthread_cancel		
@_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t = weak alias i32 (%struct.pthread_mutex_t*)* @pthread_mutex_lock		
@_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t = weak alias i32 (%struct.pthread_mutex_t*)* @pthread_mutex_trylock		
@_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t = weak alias i32 (%struct.pthread_mutex_t*)* @pthread_mutex_unlock		
@_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t = weak alias i32 (%struct.pthread_mutex_t*, %struct.__sched_param*)* @pthread_mutex_init		
@_ZL26__gthrw_pthread_key_createPjPFvPvE = weak alias i32 (i32*, void (i8*)*)* @pthread_key_create		
@_ZL26__gthrw_pthread_key_deletej = weak alias i32 (i32)* @pthread_key_delete		
@_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t = weak alias i32 (%struct.__sched_param*)* @pthread_mutexattr_init		
@_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti = weak alias i32 (%struct.__sched_param*, i32)* @pthread_mutexattr_settype		
@_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t = weak alias i32 (%struct.__sched_param*)* @pthread_mutexattr_destroy		

declare fastcc void @_ZNSt10_Select1stISt4pairIKPvS1_EEC1Ev() nounwind readnone

define fastcc void @_ZNSt8_Rb_treeIPvSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE16_M_insert_uniqueERKS3_(%"struct.std::pair<std::_Rb_tree_iterator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >,bool>"* noalias nocapture sret %agg.result, %"struct.std::_Rb_tree<void*,std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > >,std::_Select1st<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > >,std::less<void*>,std::allocator<std::pair<void* const, std::vector<ShadowInfo, std::allocator<ShadowInfo> > > > >"* %this, %"struct.std::pair<void* const,void*>"* %__v) nounwind {
entry:
	br i1 false, label %bb7, label %bb

bb:		
	br i1 false, label %bb5, label %bb

bb5:		
	call fastcc void @_ZNSt10_Select1stISt4pairIKPvS1_EEC1Ev() nounwind
	br i1 false, label %bb11, label %bb7

bb7:		
	br label %bb11

bb11:		
	call fastcc void @_ZNSt10_Select1stISt4pairIKPvS1_EEC1Ev() nounwind
	unreachable
}

define i32 @pthread_once(i32*, void ()*) {
       ret i32 0
}

define i8* @pthread_getspecific(i32) {
       ret i8* null
}

define i32 @pthread_setspecific(i32, i8*) {
        ret i32 0
}

define i32 @pthread_create(i32*, %struct.pthread_attr_t*, i8* (i8*)*, i8*) {
       ret i32 0
}

define i32 @pthread_cancel(i32) {
      ret i32 0
}

define i32 @pthread_mutex_lock(%struct.pthread_mutex_t*) {
       ret i32 0
}

define i32 @pthread_mutex_trylock(%struct.pthread_mutex_t*) {
       ret i32 0
}

define i32 @pthread_mutex_unlock(%struct.pthread_mutex_t*) {
       ret i32 0
}

define i32 @pthread_mutex_init(%struct.pthread_mutex_t*, %struct.__sched_param*) {
        ret i32 0
}

define i32 @pthread_key_create(i32*, void (i8*)*) {
       ret i32 0
}

define i32 @pthread_key_delete(i32) {
        ret i32 0
}

define i32 @pthread_mutexattr_init(%struct.__sched_param*) {
        ret i32 0
}

define i32 @pthread_mutexattr_settype(%struct.__sched_param*, i32) {
        ret i32 0
}

define i32 @pthread_mutexattr_destroy(%struct.__sched_param*) {
       ret i32 0
}
