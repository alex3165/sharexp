module Model exposing (..)

import Messages exposing (Msg)


type alias User =
    { id : Int
    , firstName : String
    , lastName : String
    , completed : Bool
    }


type alias Model =
    { users : List User }


defaultUser : Int -> User
defaultUser id =
    { id = id
    , firstName = ""
    , lastName = ""
    , completed = False
    }


initUsers =
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


init : ( Model, Cmd (Msg Int) )
init =
    let
        model =
            Model initUsers
    in
        ( model, Cmd.none )
