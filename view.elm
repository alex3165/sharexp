module View exposing (..)

import Messages exposing (Msg)
import User.View exposing (user)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import Html exposing (..)
import Model exposing (..)

containerStyle = style
  [
    ("margin", "0px"),
    ("padding", "0px"),
    ("listStyleType", "none")
  ]


view: Model -> Html (Msg Int)
view model =
  div []
  [
    ul [containerStyle] <| List.map user model.users,
    button [onClick Messages.Append] [Html.text "Add new user"]
  ]
