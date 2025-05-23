module Main where

import Prelude

import Effect (Effect)
import Plotly (newPlot)

main :: Effect Unit
main = do
  newPlot "d0" [1, 2, 3] true
  newPlot "d1" [4, 5, 6] false
