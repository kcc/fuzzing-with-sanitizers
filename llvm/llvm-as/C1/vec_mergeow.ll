










define void @check_merge_even_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:


        %tmp = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, 
	      		      <16 x i32> <i32 0, i32 1, i32 2, i32 3, 
			      	    	  i32 16, i32 17, i32 18, i32 19, 
					  i32 8, i32 9, i32 10, i32 11, 
					  i32 24, i32 25, i32 26, i32 27>


      	store <16 x i8> %tmp3, <16 x i8>* %A
	ret void


}






define void @check_merge_even_xx(<16 x i8>* %A) {
entry:


        %tmp = load <16 x i8>, <16 x i8>* %A
	%tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, 
	      		      <16 x i32> <i32 0, i32 1, i32 2, i32 3, 
			      	          i32 0, i32 1, i32 2, i32 3, 
					  i32 8, i32 9, i32 10, i32 11, 
					  i32 8, i32 9, i32 10, i32 11>


  	store <16 x i8> %tmp2, <16 x i8>* %A
	ret void


}







define void @check_merge_odd_xy(<16 x i8>* %A, <16 x i8>* %B) {
entry:


        %tmp = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp2, 
	      		      <16 x i32> <i32 4, i32 5, i32 6, i32 7, 
			      	    	  i32 20, i32 21, i32 22, i32 23, 
					  i32 12, i32 13, i32 14, i32 15, 
					  i32 28, i32 29, i32 30, i32 31>


        store <16 x i8> %tmp3, <16 x i8>* %A
	ret void


}






define void @check_merge_odd_xx(<16 x i8>* %A) {
entry:


        %tmp = load <16 x i8>, <16 x i8>* %A
	%tmp2 = shufflevector <16 x i8> %tmp, <16 x i8> %tmp, 
	      		      <16 x i32> <i32 4, i32 5, i32 6, i32 7, 
			      	    	  i32 4, i32 5, i32 6, i32 7, 
					  i32 12, i32 13, i32 14, i32 15, 
					  i32 12, i32 13, i32 14, i32 15>


        store <16 x i8> %tmp2, <16 x i8>* %A
	ret void


}

