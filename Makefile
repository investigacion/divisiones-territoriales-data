CSVS := $(shell ls data/csv/*.csv)
JSON := $(CSVS:data/csv/%.csv=data/json/%.json)

update: node_modules $(JSON)

data/json/%.json: data/csv/%.csv scripts/csv2json.js
	node scripts/csv2json.js $< > $@

node_modules: package.json
	npm install
	touch $@

.PHONY: update
