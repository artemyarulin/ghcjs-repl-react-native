module Main where

import Lib
import Data.Time

main :: IO ()
main = do
  start <- getCurrentTime
  let r = map (+100) $ filter even $ [1..1000]
  print (show r)
  stop <- getCurrentTime
  print $ diffUTCTime stop start
