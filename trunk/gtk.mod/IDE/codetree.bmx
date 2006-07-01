Strict
Import BRL.Basic
Import GTK.OOP
Import GTK.Scintilla
Import "gettext.bmx"
Import "document.bmx"

Type TCodeTree
	Global TvCode:GtkETree, Notebook:GtkNotebook
	
	Function Init(Application:GladeXML, GNotebook:GtkNotebook)
		Self.Notebook = GNotebook
		TvCode = New GtkETree
		TvCode.addStoreColumn(G_TYPE_STRING) ' Beschreibung
		TvCode.addStoreColumn(G_TYPE_INT) ' Zeile
		TvCode.Init()
		TvCode.Tree.Destroy()
		TvCode.Tree = GtkTreeView.CreateFromHandle(Application.GetWidget("tvCODE"))
		TvCode.Tree.SetModel(TvCode.Store)
		TvCode.Tree.SignalConnect("row-activated", TCodeTree.RowActivated)
		TvCode.addViewColumn(0,_("Code"))
	End Function

	Function RowActivated()
	End Function

	Function Update()
		Print Notebook.GetCurrentPage()
		If Notebook.GetCurrentPage() > 1 Then
			gtk_tree_store_clear(TvCode.Store.Handle)
			Local globals:GtkETreeIter = TvCode.NewItem()
			globals.SetString(_("Globals"))
			Local functions:GtkETreeIter = TvCode.NewItem()
			functions.SetString(_("Functions"))
			Local types:GtkETreeIter = TvCode.NewItem()
			types.SetString(_("Types"))
			Local doc:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
			For Local i:Int = 0 Until doc.Scintilla.GetLineCount()
				Local line:String = doc.Scintilla.GetLine(i)
				line.Trim()
				If Lower(line).StartsWith("type") Then
					Local a:Int = line.Find(" ")
					If a <> -1 Then
						Local b:Int = line.Find(" ", a+1)
						If b =  -1 Then b = Len(line)-1
						Local c:String = Mid(line, a+1, b-a)
						Local glItem:GtkETreeIter = TvCode.NewItem(types)
						glItem.SetString(c)
						For Local l:Int = i Until doc.Scintilla.GetLineCount()
							Local line:String = doc.Scintilla.GetLine(l)
							line.Trim()
							If Lower(line).StartsWith("end type") Or Lower(line).StartsWith("endtype") Then Exit
							Local res1:Byte = Lower(line).StartsWith("field")
							Local res2:Byte = Lower(line).StartsWith("global")
							If res1 Or res2 Then
								Local a:Int = line.Find(" ")
								If a <> -1 Then
									Local b:Int = line.Find(" ", a+1)
									Local t:Int = line.Find(",", a+1)
									If t < b And t <>-1 Then b = t
									t = line.Find("=", a+1)
									If t < b And t <> -1 Then b = t
									If b = -1 Then b = Len(line)
									Local c:String = Mid(line, a+1, b-a)
									Local gglItem:GtkETreeIter = TvCode.NewItem(glItem)
									If res1 gglItem.SetString(_("Field") + " " + c) Else gglItem.SetString(_("Global") + " " + c)
									'glItem.
								endif									
							EndIf
							res1 = Lower(line).StartsWith("function")
							res2 = Lower(line).StartsWith("method")
							If res1 Or res2 Then
								Local a:Int = line.Find(" ")
								If a <> -1 Then
									Local b:Int = line.Find(")", a+1)
									If b <>-1 Then
										Local c:String = Mid(line, a+1, b-a+1)
										Local gglItem:GtkETreeIter = TvCode.NewItem(glItem)
										If res1 gglItem.SetString(_("Function") + " " + c) Else gglItem.SetString(_("Method") + " " + c)
										'glItem.
									endif
								endif
							endif
						Next
					endif
				endif
				If Lower(line).StartsWith("function") Then
					Local a:Int = line.Find(" ")
					If a <> -1 Then
						Local b:Int = line.Find(")", a+1)
						If b <>-1 Then
							Local c:String = Mid(line, a+1, b-a+1)
							Local glItem:GtkETreeIter = TvCode.NewItem(functions)
							glItem.SetString(c)
							'glItem.
						endif
					endif
				endif
				If Lower(line).StartsWith("global") Then
					' 1. Leerzeichen
					Local a:Int = line.Find(" ")
					If a <> -1 Then
						Local b:Int = line.Find(" ", a+1)
						Local t:Int = line.Find(",", a+1)
						If t < b And t <>-1 Then b = t
						t = line.Find("=", a+1)
						If t < b And t <> -1 Then b = t
						If b <>-1 Then
							Local c:String = Mid(line, a+1, b-a)
							Local glItem:GtkETreeIter = TvCode.NewItem(globals)
							glItem.SetString(c)
							'glItem.
						endif
					endif
				endif
			next
		endif
	End Function
End Type

