module Lib (someFunc, alert) where

import GHCJS.Types (JSVal)
import GHCJS.Marshal (ToJSVal(..),FromJSVal(..))

alert :: String -> Maybe String -> IO ()
alert title msg =
  toJSVal title >>= \t -> (case msg of
                            Just m -> toJSVal m
                            Nothing -> toJSVal " ") >>= \m -> js_alert t m

foreign import javascript unsafe
    "Alert.alert($1,$2)"
  js_alert :: JSVal -> JSVal -> IO ()

someFunc :: IO ()
someFunc = putStrLn "someFunc"
