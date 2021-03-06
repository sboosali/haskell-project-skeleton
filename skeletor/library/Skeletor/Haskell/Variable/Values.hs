{-# LANGUAGE OverloadedStrings #-}

--------------------------------------------------
--------------------------------------------------

{-|



-}

module Skeletor.Haskell.Variable.Values where

--------------------------------------------------

import Skeletor.Haskell.Variable.Types

--------------------------------------------------

-- import qualified "" _ as _

--------------------------------------------------

-- import           "base" _

--------------------------------------------------

import Prelude_skeletor

--------------------------------------------------
--------------------------------------------------

{-| The default ("builtin") variable-environment of the templating engine (for Haskell templates).

Has known mappings from configuration-variables
(e.g. @"module"@, as in the command-line option @"--module=..."@),
to template-variables (e.g. @"XxxModulexxX"@).

-}

defaultTemplateEnvironment :: [TemplateVariable]
defaultTemplateEnvironment =

  [ TemplateVariable { name = "package"
                     , kind = HaskellPackageVariable
                     }
  , TemplateVariable { name = "module"
                     , kind = HaskellModuleVariable
                     }
  , TemplateVariable { name = "package-snake-case"         -- "package-as-module"
                     , kind = HaskellModuleAutogenVariable
                     }
  , TemplateVariable { name = "module-abbreviation"
                     , kind = HaskellModuleVariable
                     }
  , TemplateVariable { name = "module-path"
                     , kind = PathVariable
                     }
  , TemplateVariable { name = "target"
                     , kind = CabalComponentVariable
                     }
  , TemplateVariable { name = "program"
                     , kind = CabalExecutableVariable
                     }
  , TemplateVariable { name = "synopsis"
                     , kind = CabalTextVariable
                     }
  , TemplateVariable { name = "description"
                     , kind = CabalMultilineTextVariable
                     }
  , TemplateVariable { name = "categories"
                     , kind = CabalTextVariable
                     }
  , TemplateVariable { name = "copyright"
                     , kind = CopyrightVariable
                     }
  , TemplateVariable { name = "author-name"
                     , kind = TextVariable
                     }
  , TemplateVariable { name = "author-email"
                     , kind = EmailVariable
                     }
  , TemplateVariable { name = "github-user-name"
                     , kind = URLSegmentVariable
                     }
  , TemplateVariable { name = "github-repository-name"
                     , kind = URLSegmentVariable
                     }
  -- , TemplateVariable { name = ""
  --                    , kind = _
  --                    }
  -- , TemplateVariable { name = ""
  --                    , kind = _
  --                    }
  -- , TemplateVariable { name = ""
  --                    , kind = _
  --                    }
  -- , TemplateVariable { name = ""
  --                    , kind = _
  --                    }
  -- , TemplateVariable { name = ""
  --                    , kind = _
  --                    }
  -- , TemplateVariable { name = ""
  --                    , kind = _
  --                    }
  -- , TemplateVariable { name = ""
  --                    , kind = _
  --                    }
  ]

--------------------------------------------------

{-| The "builtin" /mapping-styles/ between /configuration-variables/ and /template-variables/.

These mapping-styles include:

* @HaskellModule@: Haskell Modules are class-cased (i.e. @ClassCase@).
* @HaskellPackage@: Haskell Packages are lisp-cased (i.e. @lisp-case@).
* @HaskellModuleAutogen@: Haskell Modules which should contain some non-@ClassCase@d identifier(frequently, they contain the name of their package, or otherwise are auto-generated) are TODO-cased (i.e. @To_do_case@). e.g. for the package @some-package@, there is @Paths_some_package@ that @Cabal@ can autogen.
*

The template variables' (ad-hoc) delimiter does "mirroring" whenever possible. By which we mean, when the delimiter is a pair of braces, like in other templating engine syntax (e.g. @{@ and @}@ in @Mustache@ templates), the left brace and right brace are single-character mirror-images. Since this templating engine (generally) uses some alphanumeric sequence for its delimeter, each "lexical context" (see below) specifies its own mirroring. Mirroring is ultimately optional, but it improves readability of the template, by making each template variable visually-distinct from the rest of the (non-variable) template (the "template constants").

That is:

* in the lexical context of @ClassCase@, the delimiter @"xxx"@ is mirrored as: @"Xxx"@ on the left and  @"xxX"@ on the right.
* in the lexical context of @lisp-case@, the delimiter @"xxx"@ is mirrored as: @"xxx-"@ on the left and  @"-xxx"@ on the right.
* in the lexical context of @snake_case@, the delimiter @"xxx"@ is mirrored as: @"xxx_"@ on the left and  @"_xxx"@ on the right (like @lisp-case@).

and so on. for example:

* a configuration-variable @"abc-def"@, with the @HaskellModule@ variable-type (corresponding to the @ClassCase@ variable-style), becomes template-variable @"XxxAbcDefxxX"@.
* a configuration-variable @"abc-def"@, with the @HaskellPackage@ variable-type (corresponding to the @lisp-case@ variable-style), becomes template-variable @"xxx-abc-def-xxx"@.
* a configuration-variable @"abc-def"@, with the @HaskellModuleAutogen@ variable-type (corresponding to the @TODO_case@ variable-style), becomes template-variable @"XxxAbc_DefxxX"@.
* a configuration-variable @"abc-def"@, with the @RawText@ variable-type (corresponding to the \"trivial\" variable-style), becomes template-variable @"xxxabcdefxxx"@.

-}

defaultVariableStyles :: [Variable]
defaultVariableStyles = []

--------------------------------------------------
--------------------------------------------------

{-|


= Naming

"Type" means: a "DSL-level" type (i.e. not a Haskell type).

@

@

-}

typeOfTemplateVariable :: TemplateVariableKind -> ConfigurationVariableType
typeOfTemplateVariable = \case

   HaskellModuleVariable        -> StringConfigurationVariable
   HaskellPackageVariable       -> StringConfigurationVariable
   HaskellModuleAutogenVariable -> StringConfigurationVariable

   CabalComponentVariable       -> StringConfigurationVariable
   CabalExecutableVariable      -> StringConfigurationVariable
   CabalTextVariable            -> StringConfigurationVariable
   CabalMultilineTextVariable   -> StringConfigurationVariable

   URIVariable                  -> StringConfigurationVariable
   URLSegmentVariable           -> StringConfigurationVariable
   EmailVariable                -> StringConfigurationVariable
   CopyrightVariable            -> StringConfigurationVariable

   PathVariable                 -> StringConfigurationVariable

   TextVariable                 -> StringConfigurationVariable
   RawTextVariable              -> StringConfigurationVariable

--------------------------------------------------
--------------------------------------------------
{- Code Templates


--------------------------------------------------

  , TemplateVariable { name = ""
                     , kind = _
                     }

--------------------------------------------------

-}
--------------------------------------------------
{- Notes / Old Code


-}
--------------------------------------------------