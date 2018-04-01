#! /usr/bin/env python

import i3ipc
import time

hide_border_delay = .1

i3 = i3ipc.Connection()

def on_window_focus(i3, event):
	window_id = event.container.props.id
	i3.command('[con_id=' + str(window_id) + '] border pixel 1')
        time.sleep(hide_border_delay)
	i3.command('[con_id=' + str(window_id) + '] border pixel 0')	

i3.on('window::focus', on_window_focus)

i3.main()
