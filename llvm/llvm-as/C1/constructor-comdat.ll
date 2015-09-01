


$_ZN3fooIiEC5Ev = comdat any


@_ZN3fooIiEC1Ev = weak_odr alias void ()* @_ZN3fooIiEC2Ev



define weak_odr void @_ZN3fooIiEC2Ev() comdat($_ZN3fooIiEC5Ev) {
  ret void
}
