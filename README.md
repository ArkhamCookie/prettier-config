# `@arkhamcookie/prettier-config`

> **My** [Prettier](https://prettier.io) config.

## Integrate into a New Project

1. Install this package as a [devDependency](https://docs.npmjs.com/specifying-dependencies-and-devdependencies-in-a-package-json-file)
```sh
# Using npm
$ npm install --save-dev @arkhamcookie/prettier-config

# Using pnpm
$ pnpm add --save-dev @arkhamcookie/prettier-config
```
2. Install peer dependencies using [install-peerdeps](https://github.com/nathanhleung/install-peerdeps)
```sh
# Using npm
$ npx install-peerdeps --dev @arkhamcookie/prettier-config

# Using pnpm
$ pnpm dlx install-peerdeps --dev @arkhamcookie/prettier-config
```
3. Use Prettier config
Create the following `.prettierrc` file in the project root:
```json
{
    "@arkhamcookie/prettier-config"
}
```