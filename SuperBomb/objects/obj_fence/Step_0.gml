
if place_meeting(x + global.tile, y, obj_fence) and place_meeting(x, y + global.tile, obj_fence) {
	image_index = fence_top_l
} else if place_meeting(x - global.tile, y, obj_fence) and place_meeting(x, y + global.tile, obj_fence) {
	image_index = fence_top_r
} else if place_meeting(x + global.tile, y, obj_fence) and place_meeting(x, y - global.tile, obj_fence) {
	image_index = fence_bot_l
} else if place_meeting(x - global.tile, y, obj_fence) and place_meeting(x, y - global.tile, obj_fence) {
	image_index = fence_bot_r
} else if place_meeting(x - global.tile, y, obj_fence) or place_meeting(x + global.tile, y, obj_fence) {
		image_index = fence_hor
} else if place_meeting(x, y - global.tile, obj_fence) or place_meeting(x, y + global.tile, obj_fence) {
		image_index = fence_ver
} else { image_index = 0}