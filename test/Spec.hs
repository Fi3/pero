-- file doctests.hs
import Test.DocTest
main = doctest ["-isrc", "src/Utils.hs"]
