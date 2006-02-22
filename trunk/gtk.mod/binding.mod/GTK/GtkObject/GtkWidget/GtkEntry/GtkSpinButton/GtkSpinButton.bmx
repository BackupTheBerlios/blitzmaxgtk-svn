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
'GtkSpinButtonUpdatePolicy
Const GTK_UPDATE_ALWAYS=1
Const GTK_UPDATE_IF_VALID=2

'GtkSpinType
Const GTK_SPIN_STEP_FORWARD=1
Const GTK_SPIN_STEP_BACKWARD=2
Const GTK_SPIN_PAGE_FORWARD=3
Const GTK_SPIN_PAGE_BACKWARD=4
Const GTK_SPIN_HOME=5
Const GTK_SPIN_END=6
Const GTK_SPIN_USER_DEFINED=7



Extern
	Function gtk_spin_button_configure(spin_button:Byte Ptr,adjustment:Byte Ptr,climb_rate:Double,digits:Int)="gtk_spin_button_configure"
	Function gtk_spin_button_new:Byte Ptr(adjustment:Byte Ptr,climb_rate:Double,digits:Int)="gtk_spin_button_new"
	Function gtk_spin_button_new_with_range:Byte Ptr(RMin:Double,RMax:Double,RStep:Double)="gtk_spin_button_new_with_range"
	Function gtk_spin_button_set_adjustment(spin_button:Byte Ptr,adjustment:Byte Ptr)="gtk_spin_button_set_adjustment"
	Function gtk_spin_button_get_adjustment:Byte Ptr(spin_button:Byte Ptr)="gtk_spin_button_get_adjustment"
	Function gtk_spin_button_set_digits(spin_button:Byte Ptr,digits:Int)="gtk_spin_button_set_digits"
	Function gtk_spin_button_set_increments(spin_button:Byte Ptr,RStep:Double,page:Double)="gtk_spin_button_set_increments"
	Function gtk_spin_button_set_range(spin_button:Byte Ptr,RMin:Double,RMax:Double)="gtk_spin_button_set_range"
	Function gtk_spin_button_get_value_as_int:Int(spin_button:Byte Ptr)="gtk_spin_button_get_value_as_int"
	Function gtk_spin_button_set_value(spin_button:Byte Ptr,value:Double)="gtk_spin_button_set_value"
	Function gtk_spin_button_set_update_policy(spin_button:Byte Ptr,policy:Byte)="gtk_spin_button_set_update_policy"
	Function gtk_spin_button_set_numeric(spin_button:Byte Ptr,numeric:Byte)="gtk_spin_button_set_numeric"
	Function gtk_spin_button_spin(spin_button:Byte Ptr,direction:Byte,increment:Double)="gtk_spin_button_spin"
	Function gtk_spin_button_set_wrap(spin_button:Byte Ptr,wrap:Byte)="gtk_spin_button_set_wrap"
	Function gtk_spin_button_set_snap_to_ticks(spin_button:Byte Ptr,snap_to_ticks:Byte)="gtk_spin_button_set_snap_to_ticks"
	Function gtk_spin_button_update(spin_button:Byte Ptr)="gtk_spin_button_update"
	Function gtk_spin_button_get_digits:Int(spin_button:Byte Ptr)="gtk_spin_button_get_digits"
	Function gtk_spin_button_get_increments(spin_button:Byte Ptr,RStep:Byte Ptr,page:Byte Ptr)="gtk_spin_button_get_increments"
	Function gtk_spin_button_get_numeric:Byte(spin_button:Byte Ptr)="gtk_spin_button_get_numeric"
	Function gtk_spin_button_get_range(spin_button:Byte Ptr,RMin:Byte Ptr,RMax:Byte Ptr)="gtk_spin_button_get_range"
	Function gtk_spin_button_get_snap_to_ticks:Byte(spin_button:Byte Ptr)="gtk_spin_button_get_snap_to_ticks"
	Function gtk_spin_button_get_update_policy:Byte(spin_button:Byte Ptr)="gtk_spin_button_get_update_policy"
	Function gtk_spin_button_get_value:Double(spin_button:Byte Ptr)="gtk_spin_button_get_value"
	Function gtk_spin_button_get_wrap:Byte(spin_button:Byte Ptr)="gtk_spin_button_get_wrap"
End Extern
