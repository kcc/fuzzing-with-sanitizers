






@common.var = common global i32 0


@appending.var = appending global [8 x i32] undef


@extern_weak.var = extern_weak global i32


@private.var = private constant i32 0


@linker_private.var = linker_private constant i32 0


@linker_private_weak.var = linker_private_weak constant i32 0


@linker_private_weak_def_auto.var = linker_private_weak_def_auto constant i32 0


@internal.var = internal constant i32 0


@available_externally.var = available_externally constant i32 0


@linkonce.var = linkonce constant i32 0


@weak.var = weak constant i32 0


@linkonce_odr.var = linkonce_odr constant i32 0


@linkonce_odr_auto_hide.var = linkonce_odr_auto_hide constant i32 0


@external.var = external constant i32


@dllexport.var = dllexport global i32 0


@dllimport.var = dllimport global i32


define private void @private()

{
  ret void
}

define linker_private void @linker_private()

{
  ret void
}

define linker_private_weak void @linker_private_weak()

{
  ret void
}

define linker_private_weak_def_auto void @linker_private_weak_def_auto()

{
  ret void
}

define internal void @internal()

{
  ret void
}

define available_externally void @available_externally()

{
  ret void
}

define linkonce void @linkonce()

{
  ret void
}

define weak void @weak()

{
  ret void
}

define linkonce_odr void @linkonce_odr()

{
  ret void
}

define linkonce_odr_auto_hide void @linkonce_odr_auto_hide()

{
  ret void
}

define external void @external()

{
  ret void
}

declare dllimport void @dllimport()


define dllexport void @dllexport()

{
  ret void
}
