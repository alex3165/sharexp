module Main exposing (..)

import Html exposing (Html)
import View exposing (view)
import Model exposing (model)
import Update exposing (update)


main =
    Html.beginnerProgram
        { view = view
        , model = model
        , update = update
        }
