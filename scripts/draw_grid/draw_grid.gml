var w = 2;

draw_set_color(c_orange);

for (var i = 0; i < room_height; i += 16)
{
	draw_line_width(0, i, room_width, i, w);
}

for (var i = 0; i < room_width; i += 16)
{
	draw_line_width(i, 0, i, room_height, w);
}