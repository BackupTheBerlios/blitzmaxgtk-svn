Strict
Import Gtk.OOP
Import Gtk.Scintilla

Type TDocument
	Field Name:String
	Field File:String
	Field Label:GtkLabel
	Field Scintilla:GtkScintilla
	Field Hidden:Byte
End Type

Global DocumentList:TList
