{-
main = do
  contents <- getContents
  putStr (shortLinesOnly contents)

shortLinesOnly :: String -> String
shortLinesOnly input =
  let allLines = lines input
      shortLines = filter (\line -> length line < 10) allLines
      result = unlines shortLines
  in result
-}


-- | rewrite with less code
main = interact $ unlines . filter ((<10) . length) . lines
{-
interact can be used to make programs that are
piped some contents into them and then dump some
result out or it can be used to make programs that
appear to take a line of input from the user,
give back some result based on that line and then take another line and so on.
-}

