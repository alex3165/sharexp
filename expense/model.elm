module Expense.Model exposing (..)


type alias Expense =
    { id : Int
    , userPaid : Int
    , userOwe : List Int
    , amount : Int
    }


type alias Expenses =
    List Expense


initialState =
    []
