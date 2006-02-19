Type TProcShape Abstract
	Function Init(TopWidget:GtkContainer) Abstract
	Function CreateProcess:Int(Path:String,ArgV:String[]) Abstract
	Function ProcessRunning(pid:Int) Abstract
End Type
