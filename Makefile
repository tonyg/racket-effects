PACKAGENAME=effects
COLLECTS=effects

all: setup

clean:
	find . -name compiled -type d | xargs rm -rf

setup:
	raco setup $(COLLECTS)

link:
	raco pkg install --link -n $(PACKAGENAME) $$(pwd)

unlink:
	raco pkg remove $(PACKAGENAME)

test: setup testonly

testonly:
	raco test -p $(PACKAGENAME)
