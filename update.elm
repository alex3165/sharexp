module Update exposing (update)
import Model exposing (..)
import Messages exposing (..)

newUser: Int -> User
newUser id =
  {
    id = id,
    firstName = "Eddy",
    lastName = "Uh",
    completed = True
  }

increment: Int -> Int
increment id = id + 1

incrementNewUser = newUser << increment

update: (Msg Int) -> Model -> Model
update msg model =
  case msg of
    Messages.Append ->
      {
        model
        | users = List.append [incrementNewUser <| List.length model.users] model.users
      }
    Messages.Noop ->
      model
    Messages.Delete id ->
      {
        model
        | users = List.filter (\u -> u.id /= id) model.users
      }
