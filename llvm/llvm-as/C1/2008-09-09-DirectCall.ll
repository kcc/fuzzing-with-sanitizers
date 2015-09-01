






define internal void @callee(...) {
entry:
	unreachable
}

define void @caller() {
entry:
	call void (...) @callee( void (...)* @callee )
	unreachable
}
