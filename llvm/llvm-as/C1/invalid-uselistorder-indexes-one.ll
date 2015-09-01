

@global = global i32 0
@alias = alias i32* @global
uselistorder i32* @global, { 1, 0 }
