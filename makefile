makefile.md:

	touch README.md
	echo "Title of the project: GuessingGame" > README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md
