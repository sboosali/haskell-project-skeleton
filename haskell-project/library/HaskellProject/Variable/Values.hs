--------------------------------------------------
--------------------------------------------------

{-|



-}

module HaskellProject.Variable.Values where

--------------------------------------------------

import HaskellProject.Variable.Types

--------------------------------------------------

-- import qualified "" _ as _

--------------------------------------------------

-- import           "base" _

--------------------------------------------------

import Prelude_haskell_project

--------------------------------------------------
--------------------------------------------------

{-| the default variable-environment of this templating engine.

known mappings between:

* configuration variables (e.g. @"module"@, as in @"--module=..."@); and
* template variables (e.g. @"XxxModulexxX"@).

-}

defaultTemplateEnvironment :: [Variable]
defaultTemplateEnvironment = []

--------------------------------------------------

{-|

the builtin mapping-styles between configuration variables and template variables.

these mapping-styles include:

* @HaskellModule@: Haskell Modules are class-cased (i.e. @ClassCase@).
* @HaskellPackage@: Haskell Packages are lisp-cased (i.e. @lisp-case@).
* @HaskellModuleAutogen@: Haskell Modules which should contain some non-@ClassCase@d identifier(frequently, they contain the name of their package, or otherwise are auto-generated) are TODO-cased (i.e. @To_do_case@). e.g. for the package @some-package@, there is @Paths_some_package@ that @Cabal@ can autogen.
*

the template variables' (ad-hoc) delimiter does "mirroring" whenever possible.
by which I mean, when the delimiter is a pair of braces, like in a normal templating engine syntax (i.e. @{@ and @}@), the left brace and right brace are single-character mirror-images. since this templating engine uses an alphanumeric sequence (generally) for its delimeter, each "lexical context" (see below) specifies its own mirroring. mirroring is ultimately optional, but itreally improves readability of the template, by making each template variable visually distincty from the rest of the (non-variable) template (the "template constants"?).

that is:

* in the lexical context of @ClassCase@, the delimiter @"xxx"@ is mirrored as: @"Xxx"@ on the left and  @"xxX"@ on the right.
* in the lexical context of @lisp-case@, the delimiter @"xxx"@ is mirrored as: @"xxx-"@ on the left and  @"-xxx"@ on the right.
* in the lexical context of @snake_case@, the delimiter @"xxx"@ is mirrored as: @"xxx_"@ on the left and  @"_xxx"@ on the right (like @lisp-case@).

and so on. for example:

* configuration variable @"abc-def"@ with the @HaskellModule@ variable-type (corresponding to the @ClassCase@ variable-style) becomes template variable @"XxxAbcDefxxX"@.
* configuration variable @"abc-def"@ with the @HaskellPackage@ variable-type (corresponding to the @lisp-case@ variable-style) becomes template variable @"xxx-abc-def-xxx"@.
* configuration variable @"abc-def"@ with the @HaskellModuleAutogen@ variable-type (corresponding to the @TODO_case@ variable-style) becomes template variable @"XxxAbc_DefxxX"@.
* configuration variable @"abc-def"@ with the @RawText@ variable-type (corresponding to the \"trivial\" variable-style) becomes template variable @"xxxabcdefxxx"@.

-}

defaultVariableStyles :: [Variable]
defaultVariableStyles = []

--------------------------------------------------
--------------------------------------------------