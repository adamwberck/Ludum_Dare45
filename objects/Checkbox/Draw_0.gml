/// @description Checkbox
image_index = is_checked ? 1 : 0;
image_alpha = is_locked ? .5 : 1;

if(instance_exists(check_obj)){
	label = check_obj.label;
}

if(!is_locked){
	image_alpha = c_hover ? 1 : .8;
}
draw_self();
draw_set_font(CheckboxFont1);
draw_set_valign(fa_middle)
draw_set_halign(fa_left)
draw_set_color(image_blend)
draw_text(x+sprite_width+10,y,label);