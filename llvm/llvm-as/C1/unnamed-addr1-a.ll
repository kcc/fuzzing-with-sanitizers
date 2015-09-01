


@global-a = common global i32 0

@global-b = common unnamed_addr global i32 0


define weak void @func-a() { ret void }

define weak void @func-b() unnamed_addr { ret void }



@global-c = common unnamed_addr global i32 0

@global-d = external global i32

@global-e = external unnamed_addr global i32

@global-f = weak global i32 42


@alias-a = weak global i32 42

@alias-b = weak unnamed_addr global i32 42


declare void @func-c()

define weak void @func-d() { ret void }

define weak void @func-e() unnamed_addr { ret void }



@global-g = common unnamed_addr global i32 0

@global-h = external global i32

@global-i = external unnamed_addr global i32

@global-j = weak global i32 42


@alias-c = weak global i32 42

@alias-d = weak unnamed_addr global i32 42



declare void @func-g()

define weak void @func-h() { ret void }

define weak void @func-i() unnamed_addr { ret void }

