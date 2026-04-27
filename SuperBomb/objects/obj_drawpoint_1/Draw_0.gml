with (obj_drawpoint_1)
{
	if (x == other.x or y == other.y)
	{
		switch (obj_herder.element) {
	case 0: draw_line_width_color(other.x, other.y, x, y, 10, #9E4C3F, #66281E); break //fire
	case 1: draw_line_width_color(other.x, other.y, x, y, 10, #00A99D, #0A5D66); break //water
	case 2: draw_line_width_color(other.x, other.y, x, y, 10, #8DC73F, #536620); break //life
	case 3: draw_line_width_color(other.x, other.y, x, y, 10, #B28900, #7F5C26); break //earth
}
		
	}
}

draw_self();


