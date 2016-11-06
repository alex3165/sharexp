module View exposing (..)

import Messages exposing (Msg)
import User.View exposing (user)
import Html.Attributes exposing (..)
import Html exposing (..)
import Model exposing (..)
import Editing exposing (editing)

containerStyle = style
  [
    ("margin", "0px"),
    ("padding", "0px"),
    ("listStyleType", "none")
  ]

mapFilterUsers = List.map user << List.filter (\user -> user.completed == True)

view: Model -> Html (Msg Int)
view model =
  div []
  [
    div []
    [
      editing model
    ],
    ul [containerStyle] <| mapFilterUsers model.users
  ]
