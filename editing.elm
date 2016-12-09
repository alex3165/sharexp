module Editing exposing (..)

import Html exposing (..)
import User.Message exposing (..)
import User.Model exposing (..)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (..)


editing : User -> Html (Msg Int)
editing user =
    div []
        [ input
            [ onInput (UpdateFirstName user.id)
            , value user.firstName
            ]
            []
        , input
            [ onInput (UpdateLastName user.id)
            , value user.lastName
            ]
            []
        , button [ onClick (Append user.id) ] [ Html.text "Add new user" ]
        ]
