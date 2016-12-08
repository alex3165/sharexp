module View exposing (..)

import Messages exposing (Msg)
import User.View exposing (user)
import Expense.Add exposing (add)
import Html.Attributes exposing (..)
import Html exposing (..)
import Model exposing (..)
import User.Model exposing (..)
import Editing exposing (editing)


containerStyle =
    style
        [ ( "margin", "0px" )
        , ( "padding", "0px" )
        , ( "listStyleType", "none" )
        ]


wrapperStyle =
    style
        [ ( "display", "flex" )
        , ( "min-height", "100%" )
        ]


sidepanStyle =
    style
        [ ( "flex", "4" )
        , ( "background-color", "#F9F9F9" )
        , ( "padding", "20px" )
        , ( "borderLeft", "1px solid #B9BCBC" )
        ]


contentStyle =
    style
        [ ( "flex", "8" )
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
    div [ wrapperStyle ]
        [ div [ contentStyle ]
            [ div [] <| List.map editing (List.filter isIncomplete model.users)
            , ul [ containerStyle ] <| List.map user (List.filter isCompleted model.users)
            ]
        , div [ sidepanStyle ]
            [ add model.users ]
        ]
