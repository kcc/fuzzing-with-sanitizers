
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-bgq-linux"

%"class.std::__1::__tree_node.130.151" = type { %"class.std::__1::__tree_node_base.base.128.149", %"class.boost::serialization::extended_type_info.129.150"* }
%"class.std::__1::__tree_node_base.base.128.149" = type <{ %"class.std::__1::__tree_end_node.127.148", %"class.std::__1::__tree_node_base.126.147"*, %"class.std::__1::__tree_node_base.126.147"*, i8 }>
%"class.std::__1::__tree_end_node.127.148" = type { %"class.std::__1::__tree_node_base.126.147"* }
%"class.std::__1::__tree_node_base.126.147" = type <{ %"class.std::__1::__tree_end_node.127.148", %"class.std::__1::__tree_node_base.126.147"*, %"class.std::__1::__tree_node_base.126.147"*, i8, [7 x i8] }>
%"class.boost::serialization::extended_type_info.129.150" = type { i32 (...)**, i32, i8* }


define void @_ZN5boost13serialization18extended_type_info4findEPKc() #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  br i1 undef, label %cond.true, label %cond.false



cond.true:                                        
  br label %cond.end

cond.false:                                       
  unreachable
                                                  
  br label %cond.end

cond.end:                                         
  invoke void @_ZNKSt3__16__treeIPKN5boost13serialization18extended_type_infoENS2_6detail11key_compareENS_9allocatorIS5_EEE4findIS5_EENS_21__tree_const_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEERKT_()
          to label %_ZNKSt3__18multisetIPKN5boost13serialization18extended_type_infoENS2_6detail11key_compareENS_9allocatorIS5_EEE4findERKS5_.exit unwind label %lpad

_ZNKSt3__18multisetIPKN5boost13serialization18extended_type_infoENS2_6detail11key_compareENS_9allocatorIS5_EEE4findERKS5_.exit: 
  br label %invoke.cont

invoke.cont:                                      
  %1 = load %"class.std::__1::__tree_node.130.151"*, %"class.std::__1::__tree_node.130.151"** undef, align 8
  %cmp.i = icmp eq %"class.std::__1::__tree_node.130.151"* undef, %1
  br label %invoke.cont.2

invoke.cont.2:                                    
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          
  br label %cleanup

lpad:                                             
  %2 = landingpad { i8*, i32 }
          cleanup
  br label %eh.resume

if.end:                                           
  br label %invoke.cont.4

invoke.cont.4:                                    
  br label %cleanup

cleanup:                                          
  ret void

eh.resume:                                        
  resume { i8*, i32 } undef
}

declare i32 @__gxx_personality_v0(...)


declare void @_ZNKSt3__16__treeIPKN5boost13serialization18extended_type_infoENS2_6detail11key_compareENS_9allocatorIS5_EEE4findIS5_EENS_21__tree_const_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEERKT_() #0 align 2

attributes #0 = { noinline "target-cpu"="a2q" }

!llvm.module.flags = !{!0}

!0 = !{i32 1, !"PIC Level", i32 2}

