module Editing exposing (..)

import Html exposing (..)
import Messages exposing (Msg)
import Model exposing (..)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (..)


editing : User -> Html (Msg Int)
editing user =
    div []
        [ input
            [ onInput (Messages.UpdateFirstName user.id)
            , value user.firstName
            ]
            []
        , input
            [ onInput (Messages.UpdateLastName user.id)
            , value user.lastName
            ]
            []
        , button [ onClick (Messages.Append user.id) ] [ Html.text "Add new user" ]
        ]
