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
	Function gtk_tree_item_new:Byte Ptr()="gtk_tree_item_new"
	Function gtk_tree_item_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_tree_item_new_with_label"
	Function gtk_tree_item_set_subtree(tree_item:Byte Ptr,subtree:Byte Ptr)="gtk_tree_item_set_subtree"
	Function gtk_tree_item_remove_subtree(tree_item:Byte Ptr)="gtk_tree_item_remove_subtree"
	Function gtk_tree_item_select(tree_item:Byte Ptr)="gtk_tree_item_select"
	Function gtk_tree_item_deselect(tree_item:Byte Ptr)="gtk_tree_item_deselect"
	Function gtk_tree_item_expand(tree_item:Byte Ptr)="gtk_tree_item_expand"
	Function gtk_tree_item_collapse(tree_item:Byte Ptr)="gtk_tree_item_collapse"
End Extern
