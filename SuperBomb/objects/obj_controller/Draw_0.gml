

draw_self()
draw_set_font(fnt_score)

if gameover = false {
	draw_text(50, 40, "Time left: "+string(time_left / 30))
}
if gameover = true {
	draw_text(550, 380, "Game Over!")
	draw_text(540, 420, "Final score:" + string(global.score))
}