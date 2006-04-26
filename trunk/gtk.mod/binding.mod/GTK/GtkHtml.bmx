extern
	function gtk_html_get_type:byte ptr()
	function gtk_html_new:byte ptr()
	function gtk_html_set_editor_api(gtkhtml:byte ptr, gtkhtmleditorapi:byte ptr, data:byte ptr)
	function gtk_html_set_iframe_parent(gtkhtml:byte ptr, parent:byte ptr, htmlobject:byte ptr)
	function gtk_html_get_top_html:byte ptr(gtkhtml:byte ptr)
	function gtk_html_enable_debug(gtkhtml:byte ptr, debug:byte)
	function gtk_html_allow_selection(gtkhtml:byte ptr, allow:byte)
	function gtk_html_select_word(gtkhtmL:byte ptr)
	function gtk_html_select_line(gkthtml:byte ptr)
	function gtk_html_select_paragraph(gtkhtml:byte ptr)
	function gtk_html_seelct_paragraph_extended(gtkhtml:byte ptr)
	function gtk_html_select_all(gtkhtml:byte ptr)
	function gtk_html_request_paste:int(gtkhtml:byte ptr, selection:byte ptr, ttype:int, time:long, as_cite:byte)
	function gtk_html_begin:byte ptr(gtkhtml:byte ptr)
	function gtk_html_begin_full:byte ptr(gtkhtml:byte ptr, target_frame:byte ptr, content_type:byte ptr, flags:int)
	function gtk_html_write(html:byte ptr, handle:byte ptr, buffer:byte ptr, size:int)
	function gtk_html_end(html:byte ptr, handle: byte ptr, status:int)
	function gtk_html_flush(html:byte ptr)
	function gtk_html_stop(html:byte ptr)
	function gtk_html_load_from_string(html:byte ptr, str:byte ptr, tlen:int)
	function gtk_html_export:byte(html:byte ptr, ttype:byte ptr, receiver:byte ptr, data: byte ptr)
	function gtk_html_get_selection_html:byte ptr(html:byte ptr, tlen:int)
	function gtk_html_set_editable(html:byte ptr, editable:byte)
	function gtk_html_get_editable:byte(html:byte ptr)
	function gtk_html_set_inline_spelling(html:byte ptr, inline_spell:byte)
	function gtk_html_get_inline_spelling:byte(html:byte ptr)
	function gtk_html_set_magic_links(html:byte ptr, magic_links:byte)
	function gtk_html_get_magic_links:byte (html:byte ptr)
	function gtk_html_set_magic_smileys(html:byte ptr, magic_smileys:byte)
	function gtk_html_get_magic_smileys(html:byte ptr)
	function gtk_html_set_caret_mode(html:byte ptr, caret_mode:byte)
	function gtk_html_get_caret_mode(html:byte ptr)
	function gtk_html_set_animate(htmL:byte ptr, animate:byte)
	function gtk_html_get_animate(html:byte ptr)
	function gtk_html_get_title:byte ptr(html:byte ptr)
	function gtk_html_set_title(html:byte ptr, title:byte ptr)
	function gtk_html_jump_to_anchor:byte(html:byte ptr, anchor:byte ptr)
	function gtk_html_get_paragraph_style:byte ptr(html:byte ptr)
	function gtk_html_set_paragraph_style(html:byte ptr, paragraphstyle:byte ptr)
	function gtk_html_set_indent(html:byte ptr, levels:byte ptr)
	function gtk_html_indent_push_level(html:byte ptr, level_type:byte ptr)
	function gtk_html_indent_pop_level(html:byte ptr)
	function gtk_html_get_paragraph_indentation:int(html:byte ptr)
	function gtk_html_set_font_style(html:byte ptr, and_mask:byte, or_mask:byte )
	function gtk_html_set_color(html:byte ptr, color:byte ptr)
	function gtk_html_toggle_font_style(html:byte ptr, fontstyle:byte ptr)
	function gtk_html_get_paragraph_alignment:byte ptr(html:byte ptr)
	function gtk_html_set_paragraph_alignment(html:byte ptr, alignment:byte ptr)
	function gtk_html_cut(html:byte ptr)
	function gtk_html_copy(html:byte ptr)
	function gtk_html_paste(html:byte ptr, as_cite:byte)
	function gtk_html_undo(html:byte ptr)
	function gtk_html_redo(html:byte ptr)
	function gtk_html_insert_html(html:byte ptr, html_src:byte ptr)
	function gtk_html_insert_gtk_html(html:byte ptr, to_be_destroyed:byte ptr)
	function gtk_html_append_html(html:byte ptr, html_src:byte ptr)
	function gtk_html_get_object_by_id:byte ptr(html:byte ptr, id:byte ptr)
	function gtk_html_get_object_id_at:byte ptr(html:byte ptr, x:int, y:int)
	function gtk_html_command:byte(html:byte ptr, command:byte ptr)
	function gtk_html_edit_make_cursor_visible:byte(html:byte ptr)
	function gtk_html_set_magnification(html:byte ptr, magnification:double)
	function gtk_html_zoom_in(html:byte ptr)
	function gtk_html_zoom_out(html:byte ptr)
	function gtk_html_zoom_reset(html:byte ptr)
	function gtk_html_update_styles(html:byte ptr)
	function gtk_html_set_allow_frameset(html:byte ptr, allow:byte)
	function gtk_html_get_allow_frameset:byte(html:byte ptr)
	function gtk_html_set_base(html:byte ptr, url:byte ptr)
	function gtk_html_get_base:byte ptr(html:byte ptr)
	function gtk_html_get_url_base_relative:byte ptr(html:byte ptr, url:byte ptr)
	function gtk_html_get_url_object_relative:byte ptr(html:byte ptr, htmlobject:byte ptr, url:byte ptr)
	function gtk_html_images_ref(html:byte ptr)
	function gtk_html_images_unref(html:byte ptr)
	function gtk_html_image_ref(html:byte ptr, url:byte ptr)
	function gtk_html_image_unref(html:byte ptr, url:byte ptr)
	function gtk_html_image_preload(html:byte ptr, url:byte ptr)
	function gtk_html_set_blocking(html:byte ptr, block:byte)
	function gtk_html_set_images_blocking(html:byte ptr, block:byte)
	function gtk_html_has_undo:byte(html:byte ptr)
	function gtk_html_drop_undo(html:byte ptr)
	function gtk_html_get_url_at:byte ptr(html:byte ptr, x:int, y:int)
	function gtk_html_get_cursor_url:byte ptr(htmL:byte ptr)
end extern

const GTK_HTML_FONT_STYLE_SHIFT_FIRST:int = 3
const GTK_HTML_FONT_STYLE_SHIFT_BOLD:int = GTK_HTML_FONT_STYLE_SHIFT_FIRST
const GTK_HTML_FONT_STYLE_SHIFT_ITALIC:int = GTK_HTML_FONT_STYLE_SHIFT_BOLD + 1
const GTK_HTML_FONT_STYLE_SHIFT_UNDERLINE:int = GTK_HTML_FONT_STYLE_SHIFT_ITALIC + 1
const GTK_HTML_FONT_STYLE_SHIFT_STRIKEOUT:int = GTK_HTML_FONT_STYLE_SHIFT_UNDERLINE + 1
const GTK_HTML_FONT_STYLE_SHIFT_FIXED:int = GTK_HTML_FONT_STYLE_SHIFT_STRIKEOUT + 1
const GTK_HTML_FONT_STYLE_SHIFT_SUBSCRIPT:int = GTK_HTML_FONT_STYLE_SHIFT_FIXED + 1
const GTK_HTML_FONT_STYLE_SHIFT_SUPERSCRIPT:int = GTK_HTML_FONT_STYLE_SHIFT_SUBSCRIPT + 1
const GTK_HTML_FONT_STYLE_SHIFT_LAST = GTK_HTML_FONT_STYLE_SHIFT_SUPERSCRIPT

const GTK_HTML_STREAM_OK:int = 0
const GTK_HTML_STREAM_ERROR:int = 1


