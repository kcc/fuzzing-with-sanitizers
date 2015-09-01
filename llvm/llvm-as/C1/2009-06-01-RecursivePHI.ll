
target datalayout = "E-p:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128"

	%struct.s_annealing_sched = type { i32, float, float, float, float }
	%struct.s_bb = type { i32, i32, i32, i32 }
	%struct.s_net = type { i8*, i32, i32*, float, float }
	%struct.s_placer_opts = type { i32, float, i32, i32, i8*, i32, i32 }
@net = internal global %struct.s_net* null		

define fastcc void @alloc_and_load_placement_structs(i32 %place_cost_type, i32 %num_regions, float %place_cost_exp, float*** nocapture %old_region_occ_x, float*** nocapture %old_region_occ_y) nounwind ssp {
entry:
	br i1 undef, label %bb.i, label %my_malloc.exit

bb.i:		
	unreachable

my_malloc.exit:		
	br i1 undef, label %bb.i81, label %my_malloc.exit83

bb.i81:		
	unreachable

my_malloc.exit83:		
	br i1 undef, label %bb.i.i57, label %my_calloc.exit.i

bb.i.i57:		
	unreachable

my_calloc.exit.i:		
	br i1 undef, label %bb.i4.i, label %my_calloc.exit5.i

bb.i4.i:		
	unreachable

my_calloc.exit5.i:		
	%.pre.i58 = load %struct.s_net*, %struct.s_net** @net, align 4		
	br label %bb17.i78

bb1.i61:		
	br i1 undef, label %bb1.i61, label %bb5.i62

bb5.i62:		
	br i1 undef, label %bb6.i64, label %bb15.preheader.i

bb15.preheader.i:		
	br label %bb16.i77

bb6.i64:		
	br i1 undef, label %bb7.i65, label %bb8.i67

bb7.i65:		
	unreachable

bb8.i67:		
	br i1 undef, label %bb.i1.i68, label %my_malloc.exit.i70

bb.i1.i68:		
	unreachable

my_malloc.exit.i70:		
	%0 = load %struct.s_net*, %struct.s_net** @net, align 4		
	br i1 undef, label %bb9.i71, label %bb16.i77

bb9.i71:		
	%1 = load %struct.s_net*, %struct.s_net** @net, align 4		
	br i1 undef, label %bb9.i71, label %bb16.i77

bb16.i77:		
	%.pre41.i.rle244 = phi %struct.s_net* [ %.pre41.i, %bb15.preheader.i ], [ %0, %my_malloc.exit.i70 ], [ %1, %bb9.i71 ]		
	br label %bb17.i78

bb17.i78:		
	%.pre41.i = phi %struct.s_net* [ %.pre41.i.rle244, %bb16.i77 ], [ %.pre.i58, %my_calloc.exit5.i ]		
	br i1 undef, label %bb4.preheader.i, label %alloc_and_load_unique_pin_list.exit

bb4.preheader.i:		
	br i1 undef, label %bb1.i61, label %bb15.preheader.i

alloc_and_load_unique_pin_list.exit:		
	ret void
}

define void @read_net(i8* %net_file) nounwind ssp {
entry:
	br i1 undef, label %bb3.us.us.i, label %bb6.preheader

bb6.preheader:		
	br i1 undef, label %bb7, label %bb

bb3.us.us.i:		
	unreachable

bb:		
	br i1 undef, label %bb.i34, label %bb1.i38

bb.i34:		
	unreachable

bb1.i38:		
	%mallocsize = mul i64 28, undef                  
	%malloccall = tail call i8* @malloc(i64 %mallocsize)      
	%0 = bitcast i8* %malloccall to %struct.s_net*  
	br i1 undef, label %bb.i1.i39, label %my_malloc.exit2.i

bb.i1.i39:		
	unreachable

my_malloc.exit2.i:		
	store %struct.s_net* %0, %struct.s_net** @net, align 4
	br i1 undef, label %bb.i7.i40, label %my_malloc.exit8.i

bb.i7.i40:		
	unreachable

my_malloc.exit8.i:		
	unreachable

bb7:		
	unreachable
}

declare noalias i8* @malloc(i64)
