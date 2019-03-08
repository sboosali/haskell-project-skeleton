--------------------------------------------------
--------------------------------------------------

{-|

'Skeletor.Haskell.Main' glues:

* 'Program.Skeletor.Haskell.CLI': the command-line options (parsing, defaulting, etc). See 'getCommand'.
* 'Program.Skeletor.Haskell.IO': the program effects (the logic, filesystem interaction, etc). See 'runCommand'.

-}

module Program.Skeletor.Haskell.Main

  ( main
  , runCommand
  , getCommand
  ) where

--------------------------------------------------
--------------------------------------------------

import Program.Skeletor.Haskell.CLI (getCommand)
import Program.Skeletor.Haskell.IO  (runCommand)

--------------------------------------------------
--------------------------------------------------

import Prelude_exe

--------------------------------------------------
--------------------------------------------------

{-| the @main@ procedure of the @skeletor-haskell@ executable.

@≡ 'getCommand' >>= 'runCommand'
@

-}

main :: IO ()
main = do

  command <- getCommand

  runCommand command

--------------------------------------------------

-- cli :: IO ()
-- cli = do
--   nothing

--------------------------------------------------
--------------------------------------------------