module User.Model exposing (..)

import User.Message exposing (Msg)


type alias User =
    { id : Int
    , firstName : String
    , lastName : String
    , completed : Bool
    }


type alias Users =
    List User


defaultUser : Int -> User
defaultUser id =
    { id = id
    , firstName = ""
    , lastName = ""
    , completed = False
    }


initialState =
    [ { id = 0
      , firstName = "Paul"
      , lastName = "Viscouri"
      , completed = True
      }
    , { id = 1
      , firstName = "Jacque"
      , lastName = "Alt"
      , completed = True
      }
    , { id = 2
      , firstName = ""
      , lastName = ""
      , completed = False
      }
    ]
