test:
	vi-node index.mjs

all: prep
	node index.mjs

prep:
	npm install
	touch prep
