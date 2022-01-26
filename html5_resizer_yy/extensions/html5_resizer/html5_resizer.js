(function() {
	function resample_hermite(canvas_source, width, height, canvas_dest) {
		var width_source = canvas_source.width;
		var height_source = canvas_source.height;
		width = Math.round(width);
		height = Math.round(height);
	
		var ratio_w = width_source / width;
		var ratio_h = height_source / height;
		var ratio_w_half = Math.ceil(ratio_w / 2);
		var ratio_h_half = Math.ceil(ratio_h / 2);
	
		var ctx = canvas_source.getContext("2d");
		var img = ctx.getImageData(0, 0, width_source, height_source);
		var img2 = ctx.createImageData(width, height);
		var data = img.data;
		var data2 = img2.data;
	
		for (var j = 0; j < height; j++) {
			for (var i = 0; i < width; i++) {
				var x2 = (i + j * width) * 4;
				var weight = 0;
				var weights = 0;
				var weights_alpha = 0;
				var gx_r = 0;
				var gx_g = 0;
				var gx_b = 0;
				var gx_a = 0;
				var center_y = (j + 0.5) * ratio_h;
				var yy_start = Math.floor(j * ratio_h);
				var yy_stop = Math.ceil((j + 1) * ratio_h);
				for (var yy = yy_start; yy < yy_stop; yy++) {
					var dy = Math.abs(center_y - (yy + 0.5)) / ratio_h_half;
					var center_x = (i + 0.5) * ratio_w;
					var w0 = dy * dy; //pre-calc part of w
					var xx_start = Math.floor(i * ratio_w);
					var xx_stop = Math.ceil((i + 1) * ratio_w);
					for (var xx = xx_start; xx < xx_stop; xx++) {
						var dx = Math.abs(center_x - (xx + 0.5)) / ratio_w_half;
						var w = Math.sqrt(w0 + dx * dx);
						if (w >= 1) {
							//pixel too far
							continue;
						}
						//hermite filter
						weight = 2 * w * w * w - 3 * w * w + 1;
						var pos_x = 4 * (xx + yy * width_source);
						//alpha
						gx_a += weight * data[pos_x + 3];
						weights_alpha += weight;
						//colors
						if (data[pos_x + 3] < 255)
							weight = weight * data[pos_x + 3] / 250;
						gx_r += weight * data[pos_x];
						gx_g += weight * data[pos_x + 1];
						gx_b += weight * data[pos_x + 2];
						weights += weight;
					}
				}
				data2[x2] = gx_r / weights;
				data2[x2 + 1] = gx_g / weights;
				data2[x2 + 2] = gx_b / weights;
				data2[x2 + 3] = gx_a / weights_alpha;
			}
		}
		canvas_dest.getContext("2d").putImageData(img2, 0, 0);
	}
	
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
		this.canvasAlt = document.createElement("canvas");
		this.context = this.canvas.getContext("2d");
		this.contextAlt = this.canvasAlt.getContext("2d");
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
		q.canvasAlt = null;
	}
	window.html5_resizer_clear = function(q) {
		if (!valid(q)) return;
		q.image.src = "";
		q.canvas.width = q.canvas.height = 1;
		q.canvasAlt.width = q.canvasAlt.height = 1;
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
		if (smooth == 2) {
			q.canvasAlt.width = q.image.width;
			q.canvasAlt.height = q.image.height;
			q.contextAlt.drawImage(q.image, 0, 0);
			resample_hermite(q.canvasAlt, w, h, q.canvas);
		} else {
			q.imageSmoothingEnabled = smooth != null ? smooth : true;
			q.context.drawImage(q.image, 0, 0, w, h);
		}
		return q.canvas.toDataURL();
	}
})();