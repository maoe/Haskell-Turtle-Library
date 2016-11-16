{-# LANGUAGE OverloadedStrings #-}
import Control.Monad
import System.Timeout
import Turtle

main :: IO ()
main = do
    echo "proc"
    void $ timeout duration $ forever $ proc "true" [] message
    echo "procStrict"
    void $ timeout duration $ forever $ procStrict "true" [] message
    echo "procStrictWithErr"
    void $ timeout duration $ forever $ procStrictWithErr "true" [] message
  where
    message = "foobarbaz"
    duration = 3 * 10^ (6 :: Int)
