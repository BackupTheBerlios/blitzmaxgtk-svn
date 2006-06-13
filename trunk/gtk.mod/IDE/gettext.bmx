Strict

Extern
	Function gt_bindtextdomain(package:Byte Ptr, localedir:Byte Ptr)="bindtextdomain"
	Function gt_bind_textdomain_codeset(package:Byte Ptr, codeset:Byte Ptr)="bind_textdomain_codeset"
	Function gt_gettext:Byte Ptr(key:Byte Ptr)="gettext"
	Function gt_textdomain(package:Byte Ptr)="textdomain"
End Extern

Type Gettext
	Function BindTextDomain(Package:String, LocaleDir:String)
		gt_bindtextdomain(Package.ToCString(), LocaleDir.ToCString())
	End function
	
	Function BindTextDomainCodeset(Package:String, Codeset:String)
		gt_bind_textdomain_codeset(Package.ToCString(), Codeset.ToCString())
	End function

	Function TextDomain(Package:String)
		gt_textdomain(Package.ToCString())
	End Function

	Function Init(Package:String, LocaleDir:String, Codeset:String)
		Self.BindTextDomain(Package, LocaleDir)
		Self.BindTextDomainCodeset(Package, Codeset)
		Self.TextDomain(Package)
	End function
End Type

Function _:String(key:String)
	Return String.FromCString(gt_gettext(key.ToCString()))
End Function

