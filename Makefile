test: vendor
	php -d zend.assertions=1 -d assert.exception=1 vendor/bin/peridot ./specs

vendor: composer.json composer.lock
	composer install

composer.lock: composer.json
	composer install
