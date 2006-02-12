Type GtkFileChooserDialog Extends GtkDialog
	Function CreateFCD:GtkFileChooserDialog(Title:String="",Parent:GtkWindow=Null,action:Int,firstbtntext:String,firstbtnresponse:Int,secondbtntext:String="",secondbtnresponse:Int=0,thirdbtntext:String="",thirdbtnresponse:Int=0)
		Local Dialog:GtkFileChooserDialog = New GtkFileChooserDialog
		Local PHandle:Byte Ptr=Null
		If Parent <> Null PHandle = Parent.Handle
		Local SBText:Byte Ptr = Null
		If secondbtntext <> "" SBText = secondbtntext.ToCString()
		Local TBText:Byte Ptr = Null
		If thirdbtntext <> "" TBText = thirdbtntext.ToCString()
		Dialog.Handle = gtk_file_chooser_dialog_new(Title.ToCString(),PHandle,action,firstbtntext.ToCString(),firstbtnresponse,sbtext,secondbtnresponse,tbtext,thirdbtnresponse)
		Return Dialog
	End Function
End Type
