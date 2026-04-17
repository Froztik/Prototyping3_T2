with (obj_drawpoint_1)
{
	if (x == other.x or y == other.y)
	{
		switch (obj_herder.element) {
	case 0: draw_line_width_color(other.x, other.y, x, y, 10, c_orange, c_maroon); break //fire
	case 1: draw_line_width_color(other.x, other.y, x, y, 10, c_teal, c_blue); break //water
	case 2: draw_line_width_color(other.x, other.y, x, y, 10, c_olive, c_green); break //life
	case 3: draw_line_width_color(other.x, other.y, x, y, 10, c_orange, c_yellow); break //earth
}
		
	}
}

draw_self();


