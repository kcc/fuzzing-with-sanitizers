

	%struct.NSError = type opaque
	%struct.NSManagedObjectContext = type opaque
	%struct.NSString = type opaque
	%struct.NSURL = type opaque
	%struct._message_ref_t = type { %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...)*, %struct.objc_selector* }
	%struct.objc_object = type {  }
	%struct.objc_selector = type opaque
@"\01L_OBJC_MESSAGE_REF_2" = external global %struct._message_ref_t		
@"\01L_OBJC_MESSAGE_REF_6" = external global %struct._message_ref_t		
@NSXMLStoreType = external constant %struct.NSString*		
@"\01L_OBJC_MESSAGE_REF_4" = external global %struct._message_ref_t		

define %struct.NSManagedObjectContext* @"+[ListGenerator(Private) managedObjectContextWithModelURL:storeURL:]"(%struct.objc_object* %self, %struct._message_ref_t* %_cmd, %struct.NSURL* %modelURL, %struct.NSURL* %storeURL) {
entry:
	%tmp27 = load %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...)*, %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...)** getelementptr (%struct._message_ref_t, %struct._message_ref_t* @"\01L_OBJC_MESSAGE_REF_2", i32 0, i32 0), align 8		
	%tmp29 = call %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...) %tmp27( %struct.objc_object* null, %struct._message_ref_t* @"\01L_OBJC_MESSAGE_REF_2" )		
	%tmp33 = load %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...)*, %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...)** getelementptr (%struct._message_ref_t, %struct._message_ref_t* @"\01L_OBJC_MESSAGE_REF_6", i32 0, i32 0), align 8		
	%tmp34 = load %struct.NSString*, %struct.NSString** @NSXMLStoreType, align 8		
	%tmp40 = load %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...)*, %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...)** getelementptr (%struct._message_ref_t, %struct._message_ref_t* @"\01L_OBJC_MESSAGE_REF_4", i32 0, i32 0), align 8		
	%tmp42 = call %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...) %tmp40( %struct.objc_object* null, %struct._message_ref_t* @"\01L_OBJC_MESSAGE_REF_4", i32 1 )		
	%tmp48 = call %struct.objc_object* (%struct.objc_object*, %struct._message_ref_t*, ...) %tmp33( %struct.objc_object* null, %struct._message_ref_t* @"\01L_OBJC_MESSAGE_REF_6", %struct.NSString* %tmp34, i8* null, %struct.NSURL* null, %struct.objc_object* null, %struct.NSError** null )		
	unreachable
}
