# GitHub actions template for Magisk Modules

This is a template containing GitHub actions for releasing [Magisk](https://github.com/TopJohnWu/Magisk) modules and generate update JSONs (to support update through the Magisk App)

### Setup

1. Create a repository from this template
2. Add all your magisk module code (you can delete every file except those in .github/)
3. Add a `updateJson=https://github.com/<OWNER>/<REPO>/releases/latest/download/update.json` line in your module.prop file
4. Fill .github/config.prop with your `CHANGELOG` file path and the list of files that should be excluded from the .zip archive. Example config.prop:

```shell
changelog=CHANGELOG # Path to your CHANGELOG file, relative to repo root
zip_exclude=CHANGELOG # List of files that should NOT be included in the .zip module (NOTE: .github is automatically excluded)
```

5. Commit your changes and make a release with `git tag <VERSION>`
