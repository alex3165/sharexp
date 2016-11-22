module Messages exposing (..)


type Msg number
    = Append Int
    | Delete number
    | UpdateFirstName Int String
    | UpdateLastName Int String
    | New
