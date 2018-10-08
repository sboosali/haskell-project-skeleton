# the `default` project

## TODO my configuration

```ini
########################################
[default]
Name=Spiros Boosalis
LegalName=Sam Boosalis

User=sboo
HackageUser=sboo
GithubUser=sboosali

########################################
```


## core template-variables

- `xxx-package-xxx`: the package name.
- `Xxx_Module_xxX`: the primary module (i.e. all other `exposed-modules` are its submodules).
- `__Project__`: the project name (a project has one-or-more packages).


## recommended template-variables

`__Name__`: your name.
`__LegalName__`: your legal name (for copyright).
`__Year__`" defaults to the current year.
`__Copyright__`: defaults to `__Year__ __LegalName__` (e.g. `"2018 Spiros Boosalis"`)
`__Synopsis__`: the `.cabal` `synopsis` field.
`__Description__`: the `.cabal` `description` field.
`__Categories__`: the `.cabal` `category` field.


## derived template-variables

- `xxx-package-directory-xxx`: defaults to `xxx-package-xxx`.
- `xxx-executable-xxx`: defaults to `xxx-package-xxx`.
- `Xxx_ModuleAbbreviation_xxX`: defaults to (the constant) `"Z"`.
- `__Project__`: defaults to `xxx-package-directory-xxx`.
- `__GithubUser__`: defaults to `__User__`.
- `__GithubRepository__`: defaults to `__Project__`.
- `__ProjectDirectory__`: defaults to `~/haskell/__Project__`.

