module Messages exposing (..)

type Msg number =
  Noop
  | Append
  | Delete number
  | Update String Int String
