-- myparser.hs

module MyParser (main) where

import Text.Megaparsec
import Text.Megaparsec.String
import System.Environment

main = do
    --fmap head getArgs >>= 
    --   (\x -> parseTest singleLetterP x)
    input <- fmap head getArgs
    parseTest singleLetterP input
    -- fmap head getArgs >>= (\x -> input >>= (\y ->))

singleLetterP :: Parser Char
singleLetterP = char 'h'
