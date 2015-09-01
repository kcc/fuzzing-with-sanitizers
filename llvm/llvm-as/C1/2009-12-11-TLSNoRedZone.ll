

target datalayout = "e-p:64:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { [1 x i64] }
%link = type { %0* }
%test = type { i32, %link }

@data = global [2 x i64] zeroinitializer, align 64 
@ptr = linkonce thread_local global [1 x i64] [i64 ptrtoint ([2 x i64]* @data to i64)], align 64 
@link_ptr = linkonce thread_local global [1 x i64] zeroinitializer, align 64 
@_dm_my_pe = external global [1 x i64], align 64  
@_dm_pes_in_prog = external global [1 x i64], align 64 
@_dm_npes_div_mult = external global [1 x i64], align 64 
@_dm_npes_div_shift = external global [1 x i64], align 64 
@_dm_pe_addr_loc = external global [1 x i64], align 64 
@_dm_offset_addr_mask = external global [1 x i64], align 64 

define void @leaf() nounwind {




"file foo2.c, line 14, bb1":
  %p = alloca %test*, align 8                     
  br label %"file foo2.c, line 14, bb2"

"file foo2.c, line 14, bb2":                      
  br label %"@CFE_debug_label_0"

"@CFE_debug_label_0":                             
  %r = load %test*, %test** bitcast ([1 x i64]* @ptr to %test**), align 8 
  store %test* %r, %test** %p, align 8
  br label %"@CFE_debug_label_2"

"@CFE_debug_label_2":                             
  %r1 = load %link*, %link** bitcast ([1 x i64]* @link_ptr to %link**), align 8 
  %r2 = load %test*, %test** %p, align 8                  
  %r3 = ptrtoint %test* %r2 to i64                
  %r4 = inttoptr i64 %r3 to %link**               
  %r5 = getelementptr %link*, %link** %r4, i64 1          
  store %link* %r1, %link** %r5, align 8
  br label %"@CFE_debug_label_3"

"@CFE_debug_label_3":                             
  %r6 = load %test*, %test** %p, align 8                  
  %r7 = ptrtoint %test* %r6 to i64                
  %r8 = inttoptr i64 %r7 to %link*                
  %r9 = getelementptr %link, %link* %r8, i64 1           
  store %link* %r9, %link** bitcast ([1 x i64]* @link_ptr to %link**), align 8
  br label %"@CFE_debug_label_4"

"@CFE_debug_label_4":                             
  %r10 = load %test*, %test** %p, align 8                 
  %r11 = ptrtoint %test* %r10 to i64              
  %r12 = inttoptr i64 %r11 to i32*                
  store i32 1, i32* %r12, align 4
  br label %"@CFE_debug_label_5"

"@CFE_debug_label_5":                             
  ret void
}
