module Messages exposing (..)

type Msg number =
  Noop
  | Append Int
  | Delete number
  | Update String Int String
  | New
