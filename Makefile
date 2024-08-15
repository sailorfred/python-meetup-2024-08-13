JINJA_CLI=venv3.11/bin/jinja

demo1: | venv3.11
	cat templates/simplest.jinja
	@echo
	@echo ================
	@echo
	$(JINJA_CLI) templates/simplest.jinja

demo2: | venv3.11
	cat templates/vars.jinja
	@echo
	@echo ================
	@echo
	$(JINJA_CLI) -D word first -D word2 second templates/vars.jinja

demo3: | venv3.11
	cat templates/loop.jinja
	@echo
	@echo ================
	@echo
	$(JINJA_CLI) -D word bird templates/loop.jinja

demo4: | venv3.11
	cat templates/struct.jinja
	@echo
	@echo ================
	@echo
	$(JINJA_CLI) -d data/struct.json templates/struct.jinja

demo5: | venv3.11
	cat templates/recurse.jinja
	@echo
	@echo ================
	@echo
	$(JINJA_CLI) -d data/recurse.json templates/recurse.jinja

demo6: | venv3.11
	./madlib

venv3.11:
	python3.11 -mvenv venv3.11
	. venv3.11/bin/activate && pip install -r requirements.txt
