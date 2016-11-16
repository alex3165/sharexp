module Editing exposing (..)

import Html exposing (..)
import Messages exposing (Msg)
import Model exposing (..)
import Html.Events exposing (onClick, onInput)


editing : User -> Html (Msg Int)
editing user =
    div []
        [ input [ onInput (Messages.UpdateFirstName user.id) ] []
        , input [ onInput (Messages.UpdateLastName user.id) ] []
        , button [ onClick (Messages.Append user.id) ] [ Html.text "Add new user" ]
        ]
