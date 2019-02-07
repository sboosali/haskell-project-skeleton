{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE TypeApplications #-}

--------------------------------------------------
--------------------------------------------------

{-| Core types, functions, and constants.

-}

module Skeletor.Haskell.Core where

--------------------------------------------------
--------------------------------------------------

import Skeletor.Haskell.Types
import Skeletor.Haskell.Find.Types

--import Skeletor.Haskell.Variable

--------------------------------------------------

--import           "filemanip" System.FilePath.GlobPattern (GlobPattern)

--------------------------------------------------

import Prelude_skeletor

--------------------------------------------------
--------------------------------------------------

allKnownProjects :: [KnownProject]
allKnownProjects = genum

--------------------------------------------------

knownProjectNames :: [String]
knownProjectNames = printKnownProject <$> allKnownProjects

--------------------------------------------------

-- |
-- >>> defaultProjectName
-- "default"

defaultProjectName :: String
defaultProjectName = printKnownProject defaultKnownProject

--------------------------------------------------
--------------------------------------------------

{-|

-}

locateProject :: ProjectIdentifier -> FilePath
locateProject = either id locateKnownProject

--------------------------------------------------

{-|

-}

locateKnownProject :: KnownProject -> FilePath
locateKnownProject = \case

  DefaultHaskellProject -> "/home/sboo/haskell/skeletor/projects/default"     -- TODO data-files

--------------------------------------------------

{-|

-}

printKnownProject :: KnownProject -> String
printKnownProject = \case

  DefaultHaskellProject -> "default"

--------------------------------------------------

{-|

-}

parseKnownProject :: String -> Maybe KnownProject
parseKnownProject = \case

  "default" -> return DefaultHaskellProject
  _         -> Nothing           -- TODO MonadThrow and throwM

--------------------------------------------------
--------------------------------------------------

{- | Default blacklists.

For haskell (@cabal@ & @stack@), emacs, and @nix@ files that are
local and\/or temporary.

-}

defaultFileFilters :: FileFilters
defaultFileFilters = ignoredDirectories <> ignoredFiles

--------------------------------------------------

-- | from my standard @.gitignore@.

ignoredDirectories :: FileFilters
ignoredDirectories =

  [ blacklistedDirectory "dist"
  , blacklistedDirectory "dist-newstyle"
  , blacklistedDirectory "dist-*"
  , blacklistedDirectory ".stack-work"
  , blacklistedDirectory ".cabal-sandbox"
  , blacklistedDirectory "result"
  , blacklistedDirectory "result-*"

  , blacklistedDirectory "/home/sboo/haskell/skeletor/projects/default/dist-newstyle" --TODO
  ]

--------------------------------------------------

-- | from my standard @.gitignore@.

ignoredFiles :: FileFilters
ignoredFiles = fromList (blacklistedFile <$> allFiles)

  where

  allFiles = concat @[]
    [ haskellFiles
    , emacsFiles
    , nixFiles
    ]

  haskellFiles =
    [ ".ghc.environment.*"
    , "cabal.project.local"
    , "cabal.sandbox.config"
    , "*.o"
    , "*.hi"
    , "*.chi"
    , "*.chs.h"
    ]

  emacsFiles =
    [ "*~"
    , "\\#*"
    , "\\.\\#*"
    , "\\#*\\#"
    , "TAGS"
    ]

  nixFiles =
    [ "result"
    ]

--------------------------------------------------
--------------------------------------------------