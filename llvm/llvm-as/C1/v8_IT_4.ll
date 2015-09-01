




%"struct.__gnu_cxx::__normal_iterator<char*,std::basic_string<char, std::char_traits<char>, std::allocator<char> > >" = type { i8* }
%"struct.__gnu_cxx::new_allocator<char>" = type <{ i8 }>
%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >" = type { %"struct.__gnu_cxx::__normal_iterator<char*,std::basic_string<char, std::char_traits<char>, std::allocator<char> > >" }
%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Rep" = type { %"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Rep_base" }
%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >::_Rep_base" = type { i32, i32, i32 }


define weak arm_aapcs_vfpcc i32 @_ZNKSs7compareERKSs(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %this, %"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %__str) {






entry:
  %0 = tail call arm_aapcs_vfpcc  i32 @_ZNKSs4sizeEv(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %this) 
  %1 = tail call arm_aapcs_vfpcc  i32 @_ZNKSs4sizeEv(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %__str) 
  %2 = icmp ult i32 %1, %0                        
  %3 = select i1 %2, i32 %1, i32 %0               
  %4 = tail call arm_aapcs_vfpcc  i8* @_ZNKSs7_M_dataEv(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %this) 
  %5 = tail call arm_aapcs_vfpcc  i8* @_ZNKSs4dataEv(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %__str) 
  %6 = tail call arm_aapcs_vfpcc  i32 @memcmp(i8* %4, i8* %5, i32 %3) nounwind readonly 
  %7 = icmp eq i32 %6, 0                          
  br i1 %7, label %bb, label %bb1

bb:                                               
  %8 = sub i32 %0, %1                             
  ret i32 %8

bb1:                                              
  ret i32 %6
}

declare arm_aapcs_vfpcc i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare arm_aapcs_vfpcc i32 @_ZNKSs4sizeEv(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %this)

declare arm_aapcs_vfpcc i8* @_ZNKSs7_M_dataEv(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %this)

declare arm_aapcs_vfpcc i8* @_ZNKSs4dataEv(%"struct.std::basic_string<char,std::char_traits<char>,std::allocator<char> >"* %this)
