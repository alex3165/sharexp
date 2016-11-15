module Messages exposing (..)


type Msg number
    = NoOp
    | Append Int
    | Delete number
    | Update String Int String
    | New
