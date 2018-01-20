module Matcher
    ( Order
    ) where

data Order =
  Order
    {   sender :: Int
      , price :: Int
      , amount :: Int
    } deriving (Show)
