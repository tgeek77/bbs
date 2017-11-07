#!/usr/bin/env python

from os import system
import curses

def get_param(prompt_string):
	screen.clear()
	screen.border(0)
	screen.addstr(2, 2, prompt_string)
	screen.refresh()
	input = screen.getstr(10, 10, 60)
	return input

def execute_cmd(cmd_string):
	system("clear")
	a = system(cmd_string)
	print ""
	if a == 0:
		print "Command executed correctly"
	else:
		print "Command terminated with error"
	raw_input("Press enter")
	print ""

x = 0

while x != ord('5'):
	screen = curses.initscr()

	screen.clear()
	screen.border(0)
	screen.addstr(2, 2, "Please enter a number...")
	screen.addstr(4, 4, "1 - Read a Book")
	screen.addstr(5, 4, "2 - Play Worm")
	screen.addstr(6, 4, "3 - Enter the Chan")
	screen.addstr(7, 4, "4 - Enter the BBS")
	screen.addstr(8, 4, "5 - Exit")
	screen.refresh()

	x = screen.getch()

	if x == ord('1'):
		curses.endwin()
		execute_cmd("/opt/bbs/epub.py /opt/bbs/cheese.epub")
	if x == ord('2'):
		curses.endwin()
		execute_cmd("worm")
	if x == ord('3'):
		curses.endwin()
		execute_cmd("/usr/bin/links")
	if x == ord('4'):
		curses.endwin()
		execute_cmd("echo coming soon")
	if x == ord('5'):
		curses.endwin()
		execute_cmd("exit")

curses.endwin()

