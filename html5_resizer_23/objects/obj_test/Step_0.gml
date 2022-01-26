if (html5_resizer_is_loaded(rz)) {
	var url = html5_resizer_resize(rz,
		html5_resizer_get_width(rz) * 2,
		html5_resizer_get_height(rz) * 2,
		2
	)
	trace("loaded", url);
	sprite_index = sprite_add(url, 1, 0, 0, 0, 0);
	html5_resizer_clear(rz);
}
