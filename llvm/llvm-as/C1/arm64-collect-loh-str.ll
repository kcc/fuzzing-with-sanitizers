







%struct.anon = type { i32*, i32** }

@pptp_wan_head = internal global %struct.anon zeroinitializer, align 8




define i32 @pptp_wan_init() {
entry:
  store i32* null, i32** getelementptr inbounds (%struct.anon, %struct.anon* @pptp_wan_head, i64 0, i32 0), align 8
  store i32** getelementptr inbounds (%struct.anon, %struct.anon* @pptp_wan_head, i64 0, i32 0), i32*** getelementptr inbounds (%struct.anon, %struct.anon* @pptp_wan_head, i64 0, i32 1), align 8
  ret i32 0
}


