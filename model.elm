module Model exposing (..)


type alias User =
    { id : Int
    , firstName : String
    , lastName : String
    , completed : Bool
    }


type alias Model =
    { users : List User
    }


defaultUser : Int -> User
defaultUser id =
    { id = id
    , firstName = ""
    , lastName = ""
    , completed = False
    }


model : Model
model =
    { users =
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
    }
