/// @desc get_input()
rKey = max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
lKey = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
dKey = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);
uKey = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
pauseKey = keyboard_check(vk_enter); // pause
shiftKey = keyboard_check(vk_shift); // sprint

lMouseClicked = mouse_check_button(mb_left);
lMousePressed = mouse_check_button_pressed(mb_left);
lMouseReleased = mouse_check_button_released(mb_left);
rMouseClicked = mouse_check_button(mb_right);
rMousePressed = mouse_check_button_pressed(mb_right);
rMouseReleased = mouse_check_button_released(mb_right);

qKey = keyboard_check(ord("Q")); // sword
eKey = keyboard_check(ord("E")); // bow & arrow
fKey = keyboard_check(ord("F")); // toggle building materials
oneKey = keyboard_check(ord("1")); // inventory slot 1
twoKey = keyboard_check(ord("2")); // inventory slot 2
threeKey = keyboard_check(ord("3")); // inventory slot 3
fourKey = keyboard_check(ord("4")); // inventory slot 4
fiveKey = keyboard_check(ord("5"));  // inventory slot 5


xaxis = (rKey - lKey);
yaxis = (dKey - uKey);
