module Model exposing (..)

type alias User = {
  id: Int,
  firstName: String,
  lastName: String
}

type alias Model = {
  users: List User
}

model: Model
model =
  {
    users = [{
      id = 0,
      firstName = "Paul",
      lastName = "Viscouri"
    },
    {
      id = 1,
      firstName = "Jacque",
      lastName = "Alt"
    }]
  }
