/// @description Insert description here
// You can write your code in this editor
#region Clamped Camera

halfViewW = camera_get_view_width(view_camera[0]) / 2
halfViewH = camera_get_view_height(view_camera[0]) / 2

cx = x - halfViewW
cy = y - halfViewH

cx = clamp(cx,min_view_x,max_view_x);
cy = clamp(cy,min_view_y,max_view_y);


camera_set_view_pos(view_camera[0],cx,cy);

#endregion