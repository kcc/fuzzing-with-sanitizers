

@global = global i32 0
@alias1 = alias i32* @global
@alias2 = alias i32* @global
@alias3 = alias i32* @global
uselistorder i32* @global, { 0, 3, 1 }
