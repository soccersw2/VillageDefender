/// @Control bow movement & firing procedures

x = obj_player.x;
y = obj_player.y + 5;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingDelay -= 1;
recoil = max(0,recoil - 1);

if (mouse_check_button_pressed(mb_left) &&  (firingDelay < 0) && (ammo > 0))
{
	recoil = 4;
	firingDelay = 5;
	with (instance_create_layer(x, y, "Arrows", obj_arrow))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
	ammo--;
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if ((image_angle > 90) && (image_angle < 270))
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

