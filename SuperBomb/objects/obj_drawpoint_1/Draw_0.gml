with (obj_drawpoint_1)
{
	if (x == other.x or y == other.y)
	{
		draw_line_width_color(other.x, other.y, x, y, 10, c_white, c_gray);
	}
}

draw_self();