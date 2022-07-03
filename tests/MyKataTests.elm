module MyKataTests exposing (testIdentity)

import Expect
import Fuzz exposing (string)
import MyKata
import Test exposing (Test, describe, fuzz, test)


testIdentity : Test
testIdentity =
    describe "MyKata.identity"
        [ test "returns input Bool parameter" <|
            \_ -> Expect.equal True (MyKata.identity True)
        , fuzz string "returns input String parameter" <|
            \str -> Expect.equal str (MyKata.identity str)
        ]
