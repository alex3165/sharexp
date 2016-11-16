module Messages exposing (..)


type Msg number
    = NoOp
    | Append Int
    | Delete number
    | UpdateFirstName Int String
    | UpdateLastName Int String
    | New
