/// @desc Initialize
spd = 1;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;

state = move_state;
player_stats();

steps = 1000;

// GUI
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

// Materials & Weapons
current_weapon = instance_create_layer(x, y, "Weapons", obj_bow);

// Sprites
face = 0;

#macro RIGHT spr_player_right;
#macro DOWNRIGHT spr_player_downright;
#macro DOWN spr_player_down;
#macro DOWNLEFT spr_player_downleft;
#macro LEFT spr_player_left;
#macro UPLEFT spr_player_upleft;
#macro UP spr_player_up;
#macro UPRIGHT spr_player_upright;
