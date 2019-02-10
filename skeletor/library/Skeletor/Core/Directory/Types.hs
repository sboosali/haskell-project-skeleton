
--------------------------------------------------
--------------------------------------------------

{-| 

-}

module Skeletor.Core.Directory.Types where

--------------------------------------------------

--import Skeletor.Core.

--------------------------------------------------
--------------------------------------------------

import qualified "unordered-containers" Data.HashMap.Lazy as HashMap
import           "unordered-containers" Data.HashMap.Lazy (HashMap)

--------------------------------------------------

import qualified "filepath" System.FilePath as FilePath

--------------------------------------------------

import qualified "text"       Data.Text    as T
import qualified "text"       Data.Text.IO as T

--------------------------------------------------

import qualified "bytestring" Data.ByteString as B

--import qualified "bytestring" Data.ByteString.Lazy as B

--------------------------------------------------

--import qualified "base" System.IO as IO

--------------------------------------------------

import Prelude_location

--------------------------------------------------
--------------------------------------------------

{-|

-}

--------------------------------------------------

{-| An in-memory directory (with all its children files).

-}

type UTF8Tree = Directory Text

--------------------------------------------------

{-| An on-disk directory.

-}

type PathTree = Directory Void

--------------------------------------------------
--------------------------------------------------

{-| An in-memory directory (with all its children files).

-}

newtype Directory a = Directory

  (HashMap FilePath (File a))

  -- TODO value should be (Maybe Text) to represent an empty directory?

  deriving stock    (Show,Read,Generic)
  deriving newtype  (Eq,Ord)
  deriving newtype  (Semigroup,Monoid)
  deriving newtype  (NFData,Hashable)

--------------------------------------------------

instance IsList (Directory a) where

  type Item (Directory a) = (FilePath, a)

  fromList = HashMap.fromList > coerce
  toList   = coerce           > HashMap.toList

--------------------------------------------------

-- instance (Semigroup a) => Semigroup (Directory a) where

--   (Directory xs) <> (Directory ys) = Directory zs

--     where
--     zs = HashMap.unionWith (<>) xs ys

--------------------------------------------------
--------------------------------------------------

{-|

@
≡ 'HashMap.empty'
@

-}

emptyDirectory :: Directory a
emptyDirectory = Directory HashMap.empty

--------------------------------------------------
--------------------------------------------------
{- Notes / Old Code


-}
--------------------------------------------------