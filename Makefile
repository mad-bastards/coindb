test:
	node index.js

all: prep
	node index.js

prep:
	npm install
	touch prep
