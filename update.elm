module Update exposing (update)
import Model exposing (..)
import Messages exposing (..)
import Debug exposing (log)

increment: Int -> Int
increment id = id + 1

incrementNewUser = defaultUser << increment


update: (Msg Int) -> Model -> Model
update msg model =
  case msg of
    Messages.Append userId ->
      let
        updateUser user =
          if user.id == userId then
            { user | completed = True }
          else
            user
      in
        { model | users = List.map updateUser model.users }

    Messages.New ->
      {
        model | users = List.append model.users [(incrementNewUser (List.length model.users))]
      }

    Messages.NoOp ->
      model

    Messages.Update input userId value ->
      let
        updateUser user =
          if user.id == userId then
            { user |
                firstName = value,
                lastName = value
            }
          else
            user
      in
        { model | users = List.map updateUser model.users }

    Messages.Delete id ->
      {
        model
        | users = List.filter (\u -> u.id /= id) model.users
      }
