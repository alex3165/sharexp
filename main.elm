module Main exposing (..)

import Html exposing (Html)
import View exposing (view)
import Model exposing (..)
import Update exposing (update)
import Messages exposing (Msg)


main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = (always Sub.none)
        }
