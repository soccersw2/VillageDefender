/// @description Draw bow's parameter values

draw_set_font(fnt_small);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var ammoText = "Ammo: " + string(ammo) + "/" + string(maxAmmo);

draw_set_color(c_white);
draw_text(0 + gui_margin, 0 + gui_margin, ammoText)

