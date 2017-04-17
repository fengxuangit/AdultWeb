$.fn.extend({		
	slide: function(i) {
		var a = $.extend({
			container: "ul",
			item: "li",
			prev: ".prev",
			next: ".next",
			num: 1,
			speed: 500,
			auto: true,
			time: 3000
		}, i),
			m = this,
			p = m.find(a.container),
			k = p.find(a.item),
			d = m.find(a.prev),
			g = m.find(a.next),
			f = k.outerWidth(true),
			j = k.length,
			l = Math.ceil(j / a.num),
			b = false,
			e = 0,
			c;
		o();
		d.bind("click", function(n) {
			n.preventDefault();
			b || h(e--)
		});
		g.bind("click", function(n) {
			n.preventDefault();
			b || h(e++)
		});
		if (a.auto) {
			c = setInterval(function() {
				h(e++)
			}, a.time);
			$.each([d, g], function() {
				$(this).bind("click", function() {
					clearInterval(c);
					c = setInterval(function() {
						h(e++)
					}, a.time)
				})
			})
		}
		function o() {
			k.clone().appendTo(p)
		}
		function h() {
			if (e > l) {
				e = 1;
				p.css("margin-left", 0)
			}
			if (e < 0) {
				e = l - 1;
				p.css("margin-left", -l * f)
			}
			b = true;
			p.animate({
				marginLeft: -e * f * a.num
			}, a.speed, function() {
				b = false
			})
		}
	},
	tooltip: function(f) {
		var a = $.extend({
			direction: "top",
			evt: "default",
			close: true,
			offset: null,
			msg: "",
			callback: null
		}, f);
		var i = this,
			g = $('<div class="tooltip"><div class="tooltip-content">' + a.msg + (a.close ? '<i class="close"></i>' : "") + '</div><div class="tooltip-arrow"></div></div>').insertAfter(i),
			j = i.position(),
			k = g.find(".tooltip-arrow"),
			b = i.outerWidth(),
			c = i.outerHeight(),
			d = g.width(),
			l = g.height();
		if (!i.length) {
			return
		}
		switch (a.direction) {
		case "top":
			g.css({
				top: j.top - l - k.height(),
				left: j.left - (d - b) / 2
			});
			break;
		case "left":
			g.css({
				left: -d - k.width(),
				top: (c - l) / 2
			});
			k.addClass("right");
			break;
		case "right":
			g.css({
				right: -d - k.width(),
				top: (c - l) / 2
			});
			k.addClass("left");
			break;
		case "bottom":
			g.css({
				top: j.top + c + k.height(),
				left: j.left - (d - b) / 2
			});
			k.addClass("up");
			break
		}
		a.offset && g.css(a.offset);
		switch (a.evt) {
		case "hover":
			g.hide();
			i.unbind("mouseenter.tooltip").unbind("mouseleave.tooltip").bind("mouseenter.tooltip", function() {
				g.show()
			}).bind("mouseleave.tooltip", function(n) {
				var m = n.pageX,
					p = n.pageY,
					o = g.offset();
				switch (a.direction) {
				case "left":
					m > o.left + d + k.width() && g.hide();
					break;
				case "top":
					p > o.top + l + k.height() && g.hide();
					break;
				case "right":
					m < o.left - k.width() && g.hide();
					break;
				case "bottom":
					p < o.top - k.height() && g.hide();
					break
				}
			});
			g.unbind("mouseleave.tooltip").bind("mouseleave.tooltip", function(n) {
				var m = n.pageX,
					p = n.pageY,
					o = g.offset();
				switch (a.direction) {
				case "left":
					m < o.left + d && g.hide();
					break;
				case "top":
					p < o.top + l && g.hide();
					break;
				case "right":
					m > o.left && g.hide();
					break;
				case "bottom":
					p > o.top && g.hide();
					break
				}
			});
			break;
		case "click":
			i.unbind("click.tooltip").bind("click.tooltip", function() {
				g.toggle()
			});
			break
		}
		g.find(".close").bind("click", function() {
			g.remove()
		});
		if ($.type(a.callback) === "function") {
			try {
				a.callback.call(g, null)
			} catch (h) {
				console && console.log(h)
			}
		}
		return this
	}
});



