module User.View exposing (..)

import Messages exposing (Msg)
import Html exposing (..)
import Html.Events exposing (onClick)
import User.Model exposing (User)


user : User -> Html (Msg Int)
user u =
    li []
        [ div [] [ text <| u.firstName ++ u.lastName ]
        , div [ onClick <| Messages.Delete u.id ] [ text "delete" ]
        ]
