



@.str = internal constant [48 x i8] c"transformed bounds: (%.2f, %.2f), (%.2f, %.2f)\0A\00"		

define void @minmax(float* %result) nounwind optsize {
entry:
	%tmp2 = load float, float* %result, align 4		
	%tmp4 = getelementptr float, float* %result, i32 2		
	%tmp5 = load float, float* %tmp4, align 4		
	%tmp7 = getelementptr float, float* %result, i32 4		
	%tmp8 = load float, float* %tmp7, align 4		
	%tmp10 = getelementptr float, float* %result, i32 6		
	%tmp11 = load float, float* %tmp10, align 4		
	%tmp12 = fcmp olt float %tmp8, %tmp11		
	br i1 %tmp12, label %bb, label %bb21

bb:		
	%tmp23469 = fcmp olt float %tmp5, %tmp8		
	br i1 %tmp23469, label %bb26, label %bb30

bb21:		
	%tmp23 = fcmp olt float %tmp5, %tmp11		
	br i1 %tmp23, label %bb26, label %bb30

bb26:		
	%tmp52471 = fcmp olt float %tmp2, %tmp5		
	br i1 %tmp52471, label %bb111, label %bb59

bb30:		
	br i1 %tmp12, label %bb40, label %bb50

bb40:		
	%tmp52473 = fcmp olt float %tmp2, %tmp8		
	br i1 %tmp52473, label %bb111, label %bb59

bb50:		
	%tmp52 = fcmp olt float %tmp2, %tmp11		
	br i1 %tmp52, label %bb111, label %bb59

bb59:		
	br i1 %tmp12, label %bb72, label %bb80

bb72:		
	%tmp82475 = fcmp olt float %tmp5, %tmp8		
	%brmerge786 = or i1 %tmp82475, %tmp12		
	%tmp4.mux787 = select i1 %tmp82475, float* %tmp4, float* %tmp7		
	br i1 %brmerge786, label %bb111, label %bb103

bb80:		
	%tmp82 = fcmp olt float %tmp5, %tmp11		
	%brmerge = or i1 %tmp82, %tmp12		
	%tmp4.mux = select i1 %tmp82, float* %tmp4, float* %tmp7		
	br i1 %brmerge, label %bb111, label %bb103

bb103:		
	br label %bb111

bb111:		
	%iftmp.0.0.in = phi float* [ %tmp10, %bb103 ], [ %result, %bb26 ], [ %result, %bb40 ], [ %result, %bb50 ], [ %tmp4.mux, %bb80 ], [ %tmp4.mux787, %bb72 ]		
	%iftmp.0.0 = load float, float* %iftmp.0.0.in		
	%tmp125 = fcmp ogt float %tmp8, %tmp11		
	br i1 %tmp125, label %bb128, label %bb136

bb128:		
	%tmp138477 = fcmp ogt float %tmp5, %tmp8		
	br i1 %tmp138477, label %bb141, label %bb145

bb136:		
	%tmp138 = fcmp ogt float %tmp5, %tmp11		
	br i1 %tmp138, label %bb141, label %bb145

bb141:		
	%tmp167479 = fcmp ogt float %tmp2, %tmp5		
	br i1 %tmp167479, label %bb226, label %bb174

bb145:		
	br i1 %tmp125, label %bb155, label %bb165

bb155:		
	%tmp167481 = fcmp ogt float %tmp2, %tmp8		
	br i1 %tmp167481, label %bb226, label %bb174

bb165:		
	%tmp167 = fcmp ogt float %tmp2, %tmp11		
	br i1 %tmp167, label %bb226, label %bb174

bb174:		
	br i1 %tmp125, label %bb187, label %bb195

bb187:		
	%tmp197483 = fcmp ogt float %tmp5, %tmp8		
	%brmerge790 = or i1 %tmp197483, %tmp125		
	%tmp4.mux791 = select i1 %tmp197483, float* %tmp4, float* %tmp7		
	br i1 %brmerge790, label %bb226, label %bb218

bb195:		
	%tmp197 = fcmp ogt float %tmp5, %tmp11		
	%brmerge788 = or i1 %tmp197, %tmp125		
	%tmp4.mux789 = select i1 %tmp197, float* %tmp4, float* %tmp7		
	br i1 %brmerge788, label %bb226, label %bb218

bb218:		
	br label %bb226

bb226:		
	%iftmp.7.0.in = phi float* [ %tmp10, %bb218 ], [ %result, %bb141 ], [ %result, %bb155 ], [ %result, %bb165 ], [ %tmp4.mux789, %bb195 ], [ %tmp4.mux791, %bb187 ]		
	%iftmp.7.0 = load float, float* %iftmp.7.0.in		
	%tmp229 = getelementptr float, float* %result, i32 1		
	%tmp230 = load float, float* %tmp229, align 4		
	%tmp232 = getelementptr float, float* %result, i32 3		
	%tmp233 = load float, float* %tmp232, align 4		
	%tmp235 = getelementptr float, float* %result, i32 5		
	%tmp236 = load float, float* %tmp235, align 4		
	%tmp238 = getelementptr float, float* %result, i32 7		
	%tmp239 = load float, float* %tmp238, align 4		
	%tmp240 = fcmp olt float %tmp236, %tmp239		
	br i1 %tmp240, label %bb243, label %bb251

bb243:		
	%tmp253485 = fcmp olt float %tmp233, %tmp236		
	br i1 %tmp253485, label %bb256, label %bb260

bb251:		
	%tmp253 = fcmp olt float %tmp233, %tmp239		
	br i1 %tmp253, label %bb256, label %bb260

bb256:		
	%tmp282487 = fcmp olt float %tmp230, %tmp233		
	br i1 %tmp282487, label %bb341, label %bb289

bb260:		
	br i1 %tmp240, label %bb270, label %bb280

bb270:		
	%tmp282489 = fcmp olt float %tmp230, %tmp236		
	br i1 %tmp282489, label %bb341, label %bb289

bb280:		
	%tmp282 = fcmp olt float %tmp230, %tmp239		
	br i1 %tmp282, label %bb341, label %bb289

bb289:		
	br i1 %tmp240, label %bb302, label %bb310

bb302:		
	%tmp312491 = fcmp olt float %tmp233, %tmp236		
	%brmerge793 = or i1 %tmp312491, %tmp240		
	%tmp232.mux794 = select i1 %tmp312491, float* %tmp232, float* %tmp235		
	br i1 %brmerge793, label %bb341, label %bb333

bb310:		
	%tmp312 = fcmp olt float %tmp233, %tmp239		
	%brmerge792 = or i1 %tmp312, %tmp240		
	%tmp232.mux = select i1 %tmp312, float* %tmp232, float* %tmp235		
	br i1 %brmerge792, label %bb341, label %bb333

bb333:		
	br label %bb341

bb341:		
	%iftmp.14.0.in = phi float* [ %tmp238, %bb333 ], [ %tmp229, %bb280 ], [ %tmp229, %bb270 ], [ %tmp229, %bb256 ], [ %tmp232.mux, %bb310 ], [ %tmp232.mux794, %bb302 ]		
	%iftmp.14.0 = load float, float* %iftmp.14.0.in		
	%tmp355 = fcmp ogt float %tmp236, %tmp239		
	br i1 %tmp355, label %bb358, label %bb366

bb358:		
	%tmp368493 = fcmp ogt float %tmp233, %tmp236		
	br i1 %tmp368493, label %bb371, label %bb375

bb366:		
	%tmp368 = fcmp ogt float %tmp233, %tmp239		
	br i1 %tmp368, label %bb371, label %bb375

bb371:		
	%tmp397495 = fcmp ogt float %tmp230, %tmp233		
	br i1 %tmp397495, label %bb456, label %bb404

bb375:		
	br i1 %tmp355, label %bb385, label %bb395

bb385:		
	%tmp397497 = fcmp ogt float %tmp230, %tmp236		
	br i1 %tmp397497, label %bb456, label %bb404

bb395:		
	%tmp397 = fcmp ogt float %tmp230, %tmp239		
	br i1 %tmp397, label %bb456, label %bb404

bb404:		
	br i1 %tmp355, label %bb417, label %bb425

bb417:		
	%tmp427499 = fcmp ogt float %tmp233, %tmp236		
	%brmerge797 = or i1 %tmp427499, %tmp355		
	%tmp232.mux798 = select i1 %tmp427499, float* %tmp232, float* %tmp235		
	br i1 %brmerge797, label %bb456, label %bb448

bb425:		
	%tmp427 = fcmp ogt float %tmp233, %tmp239		
	%brmerge795 = or i1 %tmp427, %tmp355		
	%tmp232.mux796 = select i1 %tmp427, float* %tmp232, float* %tmp235		
	br i1 %brmerge795, label %bb456, label %bb448

bb448:		
	br label %bb456

bb456:		
	%iftmp.21.0.in = phi float* [ %tmp238, %bb448 ], [ %tmp229, %bb395 ], [ %tmp229, %bb385 ], [ %tmp229, %bb371 ], [ %tmp232.mux796, %bb425 ], [ %tmp232.mux798, %bb417 ]		
	%iftmp.21.0 = load float, float* %iftmp.21.0.in		
	%tmp458459 = fpext float %iftmp.21.0 to double		
	%tmp460461 = fpext float %iftmp.7.0 to double		
	%tmp462463 = fpext float %iftmp.14.0 to double		
	%tmp464465 = fpext float %iftmp.0.0 to double		
	%tmp467 = tail call i32 (i8*, ...) @printf( i8* getelementptr ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), double %tmp464465, double %tmp462463, double %tmp460461, double %tmp458459 ) nounwind 		
	ret void
}

declare i32 @printf(i8*, ...) nounwind 
