






@default.internal.var = internal global i32 0


@hidden.internal.var = internal hidden global i32 0


@protected.internal.var = internal protected global i32 0


@default.private.var = private global i32 0


@hidden.private.var = private hidden global i32 0


@protected.private.var = private protected global i32 0


@global = global i32 0

@default.internal.alias = alias internal i32* @global


@hidden.internal.alias = hidden alias internal i32* @global


@protected.internal.alias = protected alias internal i32* @global


@default.private.alias = alias private i32* @global


@hidden.private.alias = hidden alias private i32* @global


@protected.private.alias = protected alias private i32* @global


define internal void @default.internal() {

entry:
  ret void
}

define internal hidden void @hidden.internal() {

entry:
  ret void
}

define internal protected void @protected.internal() {

entry:
  ret void
}

define private void @default.private() {

entry:
  ret void
}

define private hidden void @hidden.private() {

entry:
  ret void
}

define private protected void @protected.private() {

entry:
  ret void
}
