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
Strict

Module GTK.OOP

ModuleInfo "Name: GTK.OOP"
ModuleInfo "Description: GTK"
ModuleInfo "License: GNU/GPL"
ModuleInfo "Version: 0.01"
ModuleInfo "Author: bigmichi and phiker"

Import GTK.Binding 
Import BRL.Math

import "-I/usr/include/glib-2.0"
'import "GValue.c"

Extern
	Function create_gvalue:byte ptr()
End Extern

Include "Glade.bmx"
Include "GladeXML.bmx"

Include "GTKUtil.bmx"

Include "GObject.bmx"
Include "GtkObject.bmx"
Include "GtkAdjustment.bmx"
Include "GtkWidget.bmx"
Include "VteTerminal.bmx"
Include "GtkRange.bmx"
Include "GtkScale.bmx"
Include "GtkHScale.bmx"
Include "GtkVScale.bmx"
Include "GtkContainer.bmx"
Include "GtkBox.bmx"
Include "GtkHBox.bmx"
Include "GtkFileChooserButton.bmx"
Include "GtkVBox.bmx"
Include "GtkPaned.bmx"
Include "GtkHPaned.bmx"
Include "GtkVPaned.bmx"
Include "GtkBin.bmx"
include "GtkItem.bmx"
include "GtkMenuItem.bmx"
include "GtkCheckMenuItem.bmx"
Include "GtkWindow.bmx"
Include "GtkDialog.bmx"
Include "GtkFileChooserDialog.bmx"
Include "GtkFixed.bmx"
Include "GtkButton.bmx"
Include "GtkColorButton.bmx"
Include "GtkFontButton.bmx"
Include "GtkToggleButton.bmx"
Include "GdkColor.bmx"
Include "GtkEntry.bmx"
Include "GtkSpinButton.bmx"
Include "GtkNotebook.bmx"
Include "GtkMisc.bmx"
Include "GtkLabel.bmx"
Include "GtkImage.bmx"
'include "GtkTree.bmx"
'include "GValue.bmx"
'include "GtkListStore.bmx"
