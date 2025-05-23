module Plotly (newPlot) where

import Prelude

import Effect (Effect)
import Data.Argonaut.Core (Json)
import Data.Argonaut.Encode.Class (encodeJson)
import Data.Function.Uncurried (Fn3, runFn3)

newPlot :: String -> Array Int -> Boolean -> Effect Unit
newPlot divId traceData layout = runFn3 _newPlot
  (encodeJson divId)
  (encodeJson traceData)
  (encodeJson layout)

foreign import _newPlot :: Fn3 Json Json Json (Effect Unit)
