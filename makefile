README.md:
	@echo "# guessing game" > README.md
	@echo "" >> README.md
	@echo "- **Date et heure d'execution de make:** $$(date)" >> README.md
	@echo "- **Nombre de lignes de code dans guessinggame.sh:** $$(wc -l < guessinggame.sh | tr -d '')" >> README.md
.PHONY: README.md
