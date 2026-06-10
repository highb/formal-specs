TLC_JAR := tla2tools.jar
TLC_URL := https://github.com/tlaplus/tlaplus/releases/latest/download/tla2tools.jar

$(TLC_JAR):
	curl -sL $(TLC_URL) -o $@

.PHONY: die-hard
die-hard: $(TLC_JAR)
	java -jar $(TLC_JAR) -config tla+/die-hard/DieHard.cfg tla+/die-hard/DieHard.tla

.PHONY: clean
clean:
	rm -f $(TLC_JAR)
