module Expense.Add exposing (..)

import Messages exposing (Msg)
import Html exposing (..)
import Html.Attributes exposing (..)
import User.Model exposing (..)


checkbox : User -> Html (Msg Int)
checkbox user =
    label
        []
        [ input [ type_ "checkbox" ] []
        , text user.firstName
        ]


add : Users -> Html (Msg Int)
add users =
    div []
        [ input [] []
        , div [] <| List.map checkbox users
        , button [] [ Html.text "Add an expense" ]
        ]
