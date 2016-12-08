module Model exposing (..)

import Messages exposing (Msg)
import User.Model exposing (..)
import Expense.Model exposing (..)


type alias Model =
    { users : Users
    , expenses : Expenses
    }


init : ( Model, Cmd (Msg Int) )
init =
    let
        users =
            User.Model.initialState

        expenses =
            Expense.Model.initialState
    in
        ( { users = users, expenses = expenses }, Cmd.none )
