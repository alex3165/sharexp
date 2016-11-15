module View exposing (..)

import Messages exposing (Msg)
import User.View exposing (user)
import Html.Attributes exposing (..)
import Html exposing (..)
import Model exposing (..)
import Editing exposing (editing)


containerStyle =
    style
        [ ( "margin", "0px" )
        , ( "padding", "0px" )
        , ( "listStyleType", "none" )
        ]


increment : Int -> Int
increment id =
    id + 1


incrementNewUser =
    defaultUser << increment


isCompleted =
    (\user -> user.completed == True)


isIncomplete =
    (\user -> user.completed == False)


view : Model -> Html (Msg Int)
view model =
    div []
        [ div [] <| List.map editing (List.filter isIncomplete model.users)
        , ul [ containerStyle ] <| List.map user (List.filter isCompleted model.users)
        ]
