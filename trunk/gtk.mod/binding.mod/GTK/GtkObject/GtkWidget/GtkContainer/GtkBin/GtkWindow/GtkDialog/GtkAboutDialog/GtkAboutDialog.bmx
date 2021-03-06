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
Extern
	Function gtk_about_dialog_new:Byte Ptr()="gtk_about_dialog_new"
	Function gtk_about_dialog_get_name:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_name"
	Function gtk_about_dialog_set_name(about:Byte Ptr,name:Byte Ptr)="gtk_about_dialog_set_name"
	Function gtk_about_dialog_get_version:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_version"
	Function gtk_about_dialog_set_version(about:Byte Ptr,version:Byte Ptr)="gtk_about_dialog_set_version"
	Function gtk_about_dialog_get_copyright:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_copyright"
	Function gtk_about_dialog_set_copyright(about:Byte Ptr,copyright:Byte Ptr)="gtk_about_dialog_set_copyright"
	Function gtk_about_dialog_get_comments:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_comments"
	Function gtk_about_dialog_set_comments(about:Byte Ptr,comments:Byte Ptr)="gtk_about_dialog_set_comments"
	Function gtk_about_dialog_get_license:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_license"
	Function gtk_about_dialog_set_license(about:Byte Ptr,license:Byte Ptr)="gtk_about_dialog_set_license"
	Function gtk_about_dialog_get_wrap_license:Byte(about:Byte Ptr)="gtk_about_dialog_get_wrap_license"
	Function gtk_about_dialog_set_wrap_license(about:Byte Ptr,wrap_license:Byte)="gtk_about_dialog_set_wrap_license"
	Function gtk_about_dialog_get_website:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_website"
	Function gtk_about_dialog_set_website(about:Byte Ptr,website:Byte Ptr)="gtk_about_dialog_set_website"
	Function gtk_about_dialog_get_website_label:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_website_label"
	Function gtk_about_dialog_set_website_label(about:Byte Ptr,website_label:Byte Ptr)="gtk_about_dialog_set_website_label"
	Function gtk_about_dialog_get_authors:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_authors"
	Function gtk_about_dialog_set_authors(about:Byte Ptr,authors:Byte Ptr)="gtk_about_dialog_set_authors"
	Function gtk_about_dialog_get_artists:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_artists"
	Function gtk_about_dialog_set_artists(about:Byte Ptr,artists:Byte Ptr)="gtk_about_dialog_set_artists"
	Function gtk_about_dialog_get_documenters:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_documenters"
	Function gtk_about_dialog_set_documenters(about:Byte Ptr,documenters:Byte Ptr)="gtk_about_dialog_set_documenters"
	Function gtk_about_dialog_get_translator_credits:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_translator_credits"
	Function gtk_about_dialog_set_translator_credits(about:Byte Ptr,translator_credits:Byte Ptr)="gtk_about_dialog_set_translator_credits"
	Function gtk_about_dialog_get_logo:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_logo"
	Function gtk_about_dialog_set_logo(about:Byte Ptr,logo:Byte Ptr)="gtk_about_dialog_set_logo"
	Function gtk_about_dialog_get_logo_icon_name:Byte Ptr(about:Byte Ptr)="gtk_about_dialog_get_logo_icon_name"
	Function gtk_about_dialog_set_logo_icon_name(about:Byte Ptr,icon_name:Byte Ptr)="gtk_about_dialog_set_logo_icon_name"
	
	'Function gtk_about_dialog_set_email_hook:GtkAboutDialogActivateLinkFunc(func:GtkAboutDialogActivateLinkFunc,data:gpointer,destroy:GDestroyNotify)="gtk_about_dialog_set_email_hook"
	'Function gtk_about_dialog_set_url_hook:GtkAboutDialogActivateLinkFunc(func:GtkAboutDialogActivateLinkFunc,data:gpointer,destroy:GDestroyNotify)="gtk_about_dialog_set_url_hook"
	
	Function gtk_show_about_dialog(parent:Byte Ptr, first_property_name:Byte Ptr)="gtk_show_about_dialog"
End Extern
