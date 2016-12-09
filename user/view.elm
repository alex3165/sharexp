module User.View exposing (..)

import User.Message exposing (..)
import Html exposing (..)
import Html.Events exposing (onClick)
import User.Model exposing (User)


user : User -> Html (Msg Int)
user u =
    li []
        [ div [] [ text <| u.firstName ++ u.lastName ]
        , div [ onClick <| Delete u.id ] [ text "delete" ]
        ]
