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

filterUser = (\id -> (\u -> u.id /= id))

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
    Message.Update input userId value ->
        model
          | users = List.map (\user ->
            if user.id == userId then
              user
                | input = value
            else
              user)
    Messages.Delete id ->
      {
        model
        | users = List.filter (\u -> u.id /= id) model.users
      }

model = [{ id = 0; test = "Salut"; }]