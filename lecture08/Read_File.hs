module Read_File where

import System.IO

main = do
  handle <- openFile "girlfriends.txt" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle

{-
openFile :: FilePath -> IOMode -> IO Handle

it states: openFile takes a file path and an IOMode and returns an I/O action
that will open a file and have the file's associated handle encapsulated as its result.
-}
