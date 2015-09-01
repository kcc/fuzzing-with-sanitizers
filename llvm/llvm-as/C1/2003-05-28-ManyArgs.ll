



















	%struct..s_annealing_sched = type { i32, float, float, float, float }
	%struct..s_chan = type { i32, float, float, float, float }
	%struct..s_det_routing_arch = type { i32, float, float, float, i32, i32, i16, i16, i16, float, float }
	%struct..s_placer_opts = type { i32, float, i32, i32, i8*, i32, i32 }
	%struct..s_router_opts = type { float, float, float, float, float, i32, i32, i32, i32 }
	%struct..s_segment_inf = type { float, i32, i16, i16, float, float, i32, float, float }
	%struct..s_switch_inf = type { i32, float, float, float, float }

define i32 @main(i32 %argc.1, i8** %argv.1) {
entry:
	%net_file = alloca [300 x i8]		
	%place_file = alloca [300 x i8]		
	%arch_file = alloca [300 x i8]		
	%route_file = alloca [300 x i8]		
	%full_stats = alloca i32		
	%operation = alloca i32		
	%verify_binary_search = alloca i32		
	%show_graphics = alloca i32		
	%annealing_sched = alloca %struct..s_annealing_sched		
	%placer_opts = alloca %struct..s_placer_opts		
	%router_opts = alloca %struct..s_router_opts		
	%det_routing_arch = alloca %struct..s_det_routing_arch		
	%segment_inf = alloca %struct..s_segment_inf*		
	%timing_inf = alloca { i32, float, float, float, float, float, float, float, float, float, float }		
	%tmp.101 = getelementptr %struct..s_placer_opts, %struct..s_placer_opts* %placer_opts, i64 0, i32 4		
	%tmp.105 = getelementptr [300 x i8], [300 x i8]* %net_file, i64 0, i64 0		
	%tmp.106 = getelementptr [300 x i8], [300 x i8]* %arch_file, i64 0, i64 0		
	%tmp.107 = getelementptr [300 x i8], [300 x i8]* %place_file, i64 0, i64 0		
	%tmp.108 = getelementptr [300 x i8], [300 x i8]* %route_file, i64 0, i64 0		
	%tmp.109 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 0		
	%tmp.112 = getelementptr %struct..s_placer_opts, %struct..s_placer_opts* %placer_opts, i64 0, i32 0		
	%tmp.114 = getelementptr %struct..s_placer_opts, %struct..s_placer_opts* %placer_opts, i64 0, i32 6		
	%tmp.118 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 7		
	%tmp.135 = load i32, i32* %operation		
	%tmp.137 = load i32, i32* %tmp.112		
	%tmp.138 = getelementptr %struct..s_placer_opts, %struct..s_placer_opts* %placer_opts, i64 0, i32 1		
	%tmp.139 = load float, float* %tmp.138		
	%tmp.140 = getelementptr %struct..s_placer_opts, %struct..s_placer_opts* %placer_opts, i64 0, i32 2		
	%tmp.141 = load i32, i32* %tmp.140		
	%tmp.142 = getelementptr %struct..s_placer_opts, %struct..s_placer_opts* %placer_opts, i64 0, i32 3		
	%tmp.143 = load i32, i32* %tmp.142		
	%tmp.145 = load i8*, i8** %tmp.101		
	%tmp.146 = getelementptr %struct..s_placer_opts, %struct..s_placer_opts* %placer_opts, i64 0, i32 5		
	%tmp.147 = load i32, i32* %tmp.146		
	%tmp.149 = load i32, i32* %tmp.114		
	%tmp.154 = load i32, i32* %full_stats		
	%tmp.155 = load i32, i32* %verify_binary_search		
	%tmp.156 = getelementptr %struct..s_annealing_sched, %struct..s_annealing_sched* %annealing_sched, i64 0, i32 0		
	%tmp.157 = load i32, i32* %tmp.156		
	%tmp.158 = getelementptr %struct..s_annealing_sched, %struct..s_annealing_sched* %annealing_sched, i64 0, i32 1		
	%tmp.159 = load float, float* %tmp.158		
	%tmp.160 = getelementptr %struct..s_annealing_sched, %struct..s_annealing_sched* %annealing_sched, i64 0, i32 2		
	%tmp.161 = load float, float* %tmp.160		
	%tmp.162 = getelementptr %struct..s_annealing_sched, %struct..s_annealing_sched* %annealing_sched, i64 0, i32 3		
	%tmp.163 = load float, float* %tmp.162		
	%tmp.164 = getelementptr %struct..s_annealing_sched, %struct..s_annealing_sched* %annealing_sched, i64 0, i32 4		
	%tmp.165 = load float, float* %tmp.164		
	%tmp.166 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 0		
	%tmp.167 = load float, float* %tmp.166		
	%tmp.168 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 1		
	%tmp.169 = load float, float* %tmp.168		
	%tmp.170 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 2		
	%tmp.171 = load float, float* %tmp.170		
	%tmp.172 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 3		
	%tmp.173 = load float, float* %tmp.172		
	%tmp.174 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 4		
	%tmp.175 = load float, float* %tmp.174		
	%tmp.176 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 5		
	%tmp.177 = load i32, i32* %tmp.176		
	%tmp.178 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 6		
	%tmp.179 = load i32, i32* %tmp.178		
	%tmp.181 = load i32, i32* %tmp.118		
	%tmp.182 = getelementptr %struct..s_router_opts, %struct..s_router_opts* %router_opts, i64 0, i32 8		
	%tmp.183 = load i32, i32* %tmp.182		
	%tmp.184 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 0		
	%tmp.185 = load i32, i32* %tmp.184		
	%tmp.186 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 1		
	%tmp.187 = load float, float* %tmp.186		
	%tmp.188 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 2		
	%tmp.189 = load float, float* %tmp.188		
	%tmp.190 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 3		
	%tmp.191 = load float, float* %tmp.190		
	%tmp.192 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 4		
	%tmp.193 = load i32, i32* %tmp.192		
	%tmp.194 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 5		
	%tmp.195 = load i32, i32* %tmp.194		
	%tmp.196 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 6		
	%tmp.197 = load i16, i16* %tmp.196		
	%tmp.198 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 7		
	%tmp.199 = load i16, i16* %tmp.198		
	%tmp.200 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 8		
	%tmp.201 = load i16, i16* %tmp.200		
	%tmp.202 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 9		
	%tmp.203 = load float, float* %tmp.202		
	%tmp.204 = getelementptr %struct..s_det_routing_arch, %struct..s_det_routing_arch* %det_routing_arch, i64 0, i32 10		
	%tmp.205 = load float, float* %tmp.204		
	%tmp.206 = load %struct..s_segment_inf*, %struct..s_segment_inf** %segment_inf		
	%tmp.208 = load i32, i32* %tmp.109		
	%tmp.209 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 1		
	%tmp.210 = load float, float* %tmp.209		
	%tmp.211 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 2		
	%tmp.212 = load float, float* %tmp.211		
	%tmp.213 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 3		
	%tmp.214 = load float, float* %tmp.213		
	%tmp.215 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 4		
	%tmp.216 = load float, float* %tmp.215		
	%tmp.217 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 5		
	%tmp.218 = load float, float* %tmp.217		
	%tmp.219 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 6		
	%tmp.220 = load float, float* %tmp.219		
	%tmp.221 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 7		
	%tmp.222 = load float, float* %tmp.221		
	%tmp.223 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 8		
	%tmp.224 = load float, float* %tmp.223		
	%tmp.225 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 9		
	%tmp.226 = load float, float* %tmp.225		
	%tmp.227 = getelementptr { i32, float, float, float, float, float, float, float, float, float, float }, { i32, float, float, float, float, float, float, float, float, float, float }* %timing_inf, i64 0, i32 10		
	%tmp.228 = load float, float* %tmp.227		
	call void @place_and_route( i32 %tmp.135, i32 %tmp.137, float %tmp.139, i32 %tmp.141, i32 %tmp.143, i8* %tmp.145, i32 %tmp.147, i32 %tmp.149, i8* %tmp.107, i8* %tmp.105, i8* %tmp.106, i8* %tmp.108, i32 %tmp.154, i32 %tmp.155, i32 %tmp.157, float %tmp.159, float %tmp.161, float %tmp.163, float %tmp.165, float %tmp.167, float %tmp.169, float %tmp.171, float %tmp.173, float %tmp.175, i32 %tmp.177, i32 %tmp.179, i32 %tmp.181, i32 %tmp.183, i32 %tmp.185, float %tmp.187, float %tmp.189, float %tmp.191, i32 %tmp.193, i32 %tmp.195, i16 %tmp.197, i16 %tmp.199, i16 %tmp.201, float %tmp.203, float %tmp.205, %struct..s_segment_inf* %tmp.206, i32 %tmp.208, float %tmp.210, float %tmp.212, float %tmp.214, float %tmp.216, float %tmp.218, float %tmp.220, float %tmp.222, float %tmp.224, float %tmp.226, float %tmp.228 )
	%tmp.231 = load i32, i32* %show_graphics		
	%tmp.232 = icmp ne i32 %tmp.231, 0		
	br i1 %tmp.232, label %then.2, label %endif.2

then.2:		
	br label %endif.2

endif.2:		
	ret i32 0
}

declare i32 @printf(i8*, ...)

declare void @place_and_route(i32, i32, float, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, float, float, float, i32, i32, i16, i16, i16, float, float, %struct..s_segment_inf*, i32, float, float, float, float, float, float, float, float, float, float)
