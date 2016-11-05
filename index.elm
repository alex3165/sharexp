import Html.App as App
import Html exposing (..)
import Html.Events exposing (onClick)
import User.View exposing (user)
import Messages exposing (Msg)

main =
  App.beginnerProgram {
    view = view,
    model = model,
    update = update
  }

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

newUser: Int -> User
newUser id =
  {
    id = id,
    firstName = "Eddy",
    lastName = "Uh"
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

view: Model -> Html (Msg Int)
view model =
  div []
  [
    ul [] <| List.map user model.users,
    div [onClick Messages.Append] [text "Add new user"]
  ]
