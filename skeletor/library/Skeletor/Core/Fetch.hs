--------------------------------------------------
--------------------------------------------------

{-| Fetch a directory tree

Possibly downloading a url, decompressing a tarball, or cloning a repository.

-}

module Skeletor.Core.Fetch where

--------------------------------------------------
-- Imports (Project) -----------------------------
--------------------------------------------------

import Skeletor.Core.Location

--------------------------------------------------
-- Imports (External) ----------------------------
--------------------------------------------------

import qualified "filepath" System.FilePath as File

--------------------------------------------------
-- Imports (Standard Library) --------------------
--------------------------------------------------

import qualified "base" System.IO as IO

--------------------------------------------------

import Prelude_skeletor

--------------------------------------------------
-- Definitions -----------------------------------
--------------------------------------------------

{-|

-}

fetchLocation :: String -> IO FilePath      -- TODO Managed or Cont
fetchLocation = _

--------------------------------------------------

{-|

-}

resolveLocation :: String -> IO Location
resolveLocation = _

--------------------------------------------------

{-|

-}

parseLocation :: String -> Maybe Location
parseLocation = _

--------------------------------------------------

{-|

-}

--------------------------------------------------

{-|

-}

--------------------------------------------------
--------------------------------------------------