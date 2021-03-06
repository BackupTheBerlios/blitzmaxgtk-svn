Rem
	This file is part of the BlitzMax GTK-modules.
	The BlitzMax GTK-modules are free software; you can redistribute and/or modify
	them under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	at your option) any later version.
	
	The BlitzMax GTK-modules are distributed in the hope that they will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with the BlitzMax GTK-modules; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
End Rem

Type GtkProgressBar extends GtkProgress
	Function Create:GtkProgressBar()
		local tempbar:GtkProgressBar = new GtkProgressBar
		tempbar.Handle = gtk_progress_bar_new()
		return tempbar
	end function
	
	function CreateFromHandle:Gtkprogressbar(handle:byte ptr)
		local tempbar:GtkProgressBar = new GtkProgressBar
		tempbar.Handle = Handle
		return tempbar
	end function

	method Pulse()
		gtk_progress_bar_pulse(handle)
	end method
	
	method SetText(text:string)
		gtk_progress_bar_set_text(handle,text.ToCString())
	end method
	
	method SetFraction(fraction:double)
		gtk_progress_bar_set_fraction(handle,fraction)
	end method
	
	method SetPulseStep(fraction:double)
		gtk_progress_bar_set_pulse_step(handle,fraction)
	end method
	
	method SetOrientation(orientation:int)
		gtk_progress_bar_set_orientation(handle,orientation)
	end method
	
	method SetEllipsize(mode:int)
		gtk_progress_bar_set_ellipsize(handle,mode)
	end method
	
	method GetText:String()
		return String.FromCString(gtk_progress_bar_get_text(handle))
	end method
	
	method GetFraction:Double()
		return gtk_progress_bar_get_fraction(handle)
	end method
	
	method GetPulseStep:double()
		return gtk_progress_bar_get_pulse_step(handle)
	end method
	
	method GetOrientation:int()
		return gtk_progress_bar_get_orientation(handle)
	end method
	
	method GetEllipsize:int()
		return gtk_progress_bar_get_ellipsize(handle)
	end method
end type

