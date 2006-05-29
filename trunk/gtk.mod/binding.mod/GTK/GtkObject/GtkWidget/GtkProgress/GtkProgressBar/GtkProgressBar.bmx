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
	Function gtk_progress_bar_new:Byte Ptr()="gtk_progress_bar_new"
	Function gtk_progress_bar_pulse(pbar:Byte Ptr)="gtk_progress_bar_pulse"
	Function gtk_progress_bar_set_text(pbar:Byte Ptr,text:Byte Ptr)="gtk_progress_bar_set_text"
	Function gtk_progress_bar_set_fraction(pbar:Byte Ptr,fraction:double)="gtk_progress_bar_set_fraction"
	Function gtk_progress_bar_set_pulse_step(pbar:Byte Ptr,fraction:double)="gtk_progress_bar_set_pulse_step"
	Function gtk_progress_bar_set_orientation(pbar:Byte Ptr,orientation:int)="gtk_progress_bar_set_orientation"
	Function gtk_progress_bar_set_ellipsize(pbar:Byte Ptr,mode:int)="gtk_progress_bar_set_ellipsize"
	Function gtk_progress_bar_get_text:byte ptr(pbar:Byte Ptr)="gtk_progress_bar_get_text"
	Function gtk_progress_bar_get_fraction:double(pbar:Byte Ptr)="gtk_progress_bar_get_fraction"
	Function gtk_progress_bar_get_pulse_step:double(pbar:Byte Ptr)="gtk_progress_bar_get_pulse_step"
	Function gtk_progress_bar_get_orientation:int(pbar:Byte Ptr)="gtk_progress_bar_get_orientation"
	Function gtk_progress_bar_get_ellipsize:int(pbar:Byte Ptr)="gtk_progress_bar_get_ellipsize"
	Function gtk_progress_bar_new_with_adjustment:Byte Ptr(adjustment:Byte Ptr)="gtk_progress_bar_new_with_adjustment"
	Function gtk_progress_bar_set_bar_style(pbar:Byte Ptr,style:Int)="gtk_progress_bar_set_bar_style"
	Function gtk_progress_bar_set_discrete_blocks(pbar:Byte Ptr,blocks:int)="gtk_progress_bar_set_discrete_blocks"
	Function gtk_progress_bar_set_activity_step(pbar:Byte Ptr,dstep:int)="gtk_progress_bar_set_activity_step"
	Function gtk_progress_bar_set_activity_blocks(pbar:Byte Ptr,blocks:int)="gtk_progress_bar_set_activity_blocks"
	Function gtk_progress_bar_update(pbar:Byte Ptr,percentage:double)="gtk_progress_bar_update"
End Extern
