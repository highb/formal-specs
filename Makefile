TLC_JAR  := tla2tools.jar
TLC_URL  := https://github.com/tlaplus/tlaplus/releases/latest/download/tla2tools.jar
JVM_OPTS := -XX:+UseParallelGC
TLC_OPTS := -workers auto

$(TLC_JAR):
	curl -sL $(TLC_URL) -o $@

.PHONY: die-hard
die-hard: $(TLC_JAR)
	java $(JVM_OPTS) -jar $(TLC_JAR) $(TLC_OPTS) -config tla+/die-hard/DieHard.cfg tla+/die-hard/DieHard.tla

.PHONY: clean
clean:
	rm -f $(TLC_JAR)
