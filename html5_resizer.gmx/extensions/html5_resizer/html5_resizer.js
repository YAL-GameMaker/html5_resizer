(function() {
	function html5_resizer() {
		var self = this;
		this.image = document.createElement("img");
		this.image.onload = function(_) {
			console.log("load");
			if (self.isLoading) {
				self.isLoading = false;
				self.isLoaded = true;
			}
		}
		this.canvas = document.createElement("canvas");
		this.context = this.canvas.getContext("2d");
		this.isLoading = false;
		this.isLoaded = false;
	}
	function valid(q) {
		return q && (q instanceof html5_resizer) && q.image;
	}
	window.html5_resizer_create = function() {
		return new html5_resizer();
	}
	window.html5_resizer_destroy = function(q) {
		if (!valid(q)) return;
		q.image = null;
		q.canvas = null;
	}
	window.html5_resizer_clear = function(q) {
		if (!valid(q)) return;
		q.image.src = "";
		q.canvas.width = q.canvas.height = 1;
		q.isLoading = false;
		q.isLoaded = false;
	}
	window.html5_resizer_load = function(q, url) {
		if (!valid(q)) return;
		q.isLoading = true;
		q.isLoaded = false;
		q.image.src = url;
	}
	window.html5_resizer_is_loading = function(q) {
		return valid(q) && q.isLoading;
	}
	window.html5_resizer_is_loaded = function(q) {
		return valid(q) && q.isLoaded;
	}
	window.html5_resizer_get_width = function(q) {
		return valid(q) && q.isLoaded ? q.image.width : 0;
	}
	window.html5_resizer_get_height = function(q) {
		return valid(q) && q.isLoaded ? q.image.height : 0;
	}
	window.html5_resizer_resize = function(q, w, h, smooth) {
		if (!valid(q) || !q.isLoaded) return "";
		q.canvas.width = w;
		q.canvas.height = h;
		q.imageSmoothingEnabled = smooth != null ? smooth : true;
		q.context.drawImage(q.image, 0, 0, w, h);
		return q.canvas.toDataURL();
	}
})();