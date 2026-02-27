set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

list-txt:
	find compounds proteins -type f ! -name '.DS_Store' | sort > list.txt
	wc -l list.txt
	head -n 5 list.txt
