time_left -= 1

if time_left < 1 {gameover = true}

if gameover = true && gameover_check = false  {
	alarm_set(1, 180)
	gameover_check = true
}
