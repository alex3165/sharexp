module Editing exposing (..)

import Html exposing (..)
import Messages exposing (Msg)
import Model exposing (..)
import Html.Events exposing (onClick)

editing: Model -> Html (Msg Int)
editing user =
  div []
  [
    input [] [],
    input [] [],
    button [onClick Messages.Append] [Html.text "Add new user"]
  ]
