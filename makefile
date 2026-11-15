
all: README.md

README.md: guessinggame.sh makefile
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "This project is a Bash guessing game." >> README.md
	@echo "" >> README.md
	@echo "## Date and Time" >> README.md
	@date >> README.md
	@echo "" >> README.md
	@echo "## Number of Lines" >> README.md
	@wc -l < guessinggame.sh >> README.md

clean:
	rm -f README.md
