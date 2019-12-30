#! /usr/bin/env python3
import sys
import subprocess

def print_error(*args, **kwargs):
	print(*args, file=sys.stderr, **kwargs)

def run_command(command, input=None):
	result = subprocess.run(command, check=True, capture_output=True, text=True, input=input)
	return result.stdout.strip("\n").split("\n")

def list_windows():
	window_ids = run_command(["bspc", "query", "-N", "-n", ".window"])
	window_names = run_command(["xtitle", *window_ids])
	return list(zip(window_ids, window_names))

def select_window(dmenu_options):
	windows = list_windows()
	selections = {
		"({}) {}".format(i, wname): wid
		for i, (wid, wname) in enumerate(windows)
	}
	selected_windows = run_command(["dmenu", *dmenu_options], input="\n".join(wname for wname in selections.keys()))
	print_error("selections:", repr(selected_windows))
	yield from (selections[sel] for sel in selected_windows)


if __name__ == "__main__":
	dmenu_options = sys.argv[1:]
	for w in select_window(dmenu_options):
		print(w)

