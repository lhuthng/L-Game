/// @description Insert description here
// You can write your code in this editor

if (not token_typing) exit;

if (keyboard_lastchar >= "0" && keyboard_lastchar <= "9") {
    if (string_length(token) < 3) {
        token = string_insert(keyboard_lastchar, token, cursor_position + 1);
        cursor_position += 1;
    }
}
if (keyboard_check_pressed(vk_backspace)) {
    if (cursor_position > 0) {
        token = string_delete(token, cursor_position, 1);
        cursor_position -= 1;
    }
}

if (keyboard_check_pressed(vk_left)) {
    cursor_position = max(0, cursor_position - 1);
}

if (keyboard_check_pressed(vk_right)) {
    cursor_position = min(string_length(token), cursor_position + 1);
}