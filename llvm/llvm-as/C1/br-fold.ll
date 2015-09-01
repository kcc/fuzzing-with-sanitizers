
















@_ZN11xercesc_2_513SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [33 x i16], align 32 
@_ZN11xercesc_2_56XMLUni16fgNotationStringE = external constant [9 x i16], align 16 

define fastcc void @foo() {
entry:
  br i1 icmp eq (i64 or (i64 ptrtoint ([33 x i16]* @_ZN11xercesc_2_513SchemaSymbols21fgURI_SCHEMAFORSCHEMAE to i64),
                         i64 ptrtoint ([9 x i16]* @_ZN11xercesc_2_56XMLUni16fgNotationStringE to i64)), i64 0),
     label %bb8.i329, label %bb4.i.i318.preheader

bb4.i.i318.preheader:                             
  unreachable

bb8.i329:                                         
  unreachable
}
