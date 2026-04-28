with (obj_drawpoint_1)
{
	if (x == other.x or y == other.y)
	{ if particle = false {
		switch (obj_herder.element) {
	case 0: draw_line_width_color(other.x, other.y, x, y, 10, #9E4C3F, #66281E); break //fire
	case 1: draw_line_width_color(other.x, other.y, x, y, 10, #00A99D, #0A5D66); break //water
	case 2: draw_line_width_color(other.x, other.y, x, y, 10, #8DC73F, #536620); break //life
	case 3: draw_line_width_color(other.x, other.y, x, y, 10, #B28900, #7F5C26); break //earth
			}
		}
	}
}

draw_self();

//alla färger incase man använde draw_clear:
		//draw_clear(#9E4C3F) draw_clear(#66281E)
		//draw_clear(#00A99D) draw_clear(#0A5D66)
		//draw_clear(#8DC73F) draw_clear(#536620)
		//draw_clear(#B28900) draw_clear(#7F5C26)
		
		