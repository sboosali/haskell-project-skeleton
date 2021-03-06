--------------------------------------------------
--------------------------------------------------

{-|



-}

module Skeletor.Core.Path.Values where

--------------------------------------------------
--------------------------------------------------

import Skeletor.Core.Path.Types

--------------------------------------------------
--------------------------------------------------

-- import qualified "" _ as _

--------------------------------------------------

-- import           "base" _

--------------------------------------------------

import Prelude_skeletor

--------------------------------------------------
--------------------------------------------------

{-| 

-}

--------------------------------------------------

{-| 

-}

--------------------------------------------------

{-| 

-}

--------------------------------------------------
--------------------------------------------------

{-|

Resolve:

* 'RootPath'    — against 'makeAbsolute'.
* 'HomePath'    — against 'getHomeDirectory'.
* 'CurrentPath' — against 'getCurrentDirectory'.

-}

resolvePath :: Path -> IO FilePath
resolvePath = \case

  RootPath    filepath -> return $ filepath
  HomePath    filepath -> return $ filepath
  CurrentPath filepath -> return $ filepath

--------------------------------------------------
--------------------------------------------------

--------------------------------------------------
--------------------------------------------------
