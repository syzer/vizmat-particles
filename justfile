set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

list-txt:
	printf "compounds/water.xyz\n" > list.txt
	find compounds proteins -type f ! -name ".DS_Store" ! -path "compounds/water.xyz" | sort >> list.txt
	wc -l list.txt
	head -n 6 list.txt
