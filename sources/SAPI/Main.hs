module SAPI.Main where
import SAPI()
import SAPI.Bindings

main :: IO ()
main = do
 print =<< example
