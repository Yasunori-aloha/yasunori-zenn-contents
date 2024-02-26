run:
	npx zenn preview
article:
	npx zenn new:article --slug $(slug)
package.ci:
	npm ci