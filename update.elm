module Update exposing (update)

import User.Model exposing (..)
import Model exposing (..)
import User.Message exposing (..)
import Debug exposing (log)


increment : Int -> Int
increment id =
    id + 1


incrementNewUser =
    defaultUser << increment


update : Msg Int -> Model -> ( Model, Cmd (Msg Int) )
update msg model =
    case msg of
        Append userId ->
            let
                updateUser user =
                    if user.id == userId then
                        { user | completed = True }
                    else
                        user

                newModel =
                    { model
                        | users = List.append (List.map updateUser model.users) [ (incrementNewUser (List.length model.users)) ]
                    }
            in
                ( newModel, Cmd.none )

        New ->
            let
                newModel =
                    { model
                        | users = List.append model.users [ (incrementNewUser (List.length model.users)) ]
                    }
            in
                ( newModel, Cmd.none )

        UpdateFirstName userId value ->
            let
                updateUser user =
                    if user.id == userId then
                        { user
                            | firstName = value
                        }
                    else
                        user

                newModel =
                    { model | users = List.map updateUser model.users }
            in
                ( newModel, Cmd.none )

        UpdateLastName userId value ->
            let
                updateUser user =
                    if user.id == userId then
                        { user
                            | lastName = value
                        }
                    else
                        user

                newModel =
                    { model | users = List.map updateUser model.users }
            in
                ( newModel, Cmd.none )

        Delete id ->
            let
                newModel =
                    { model
                        | users = List.filter (\u -> u.id /= id) model.users
                    }
            in
                ( newModel, Cmd.none )
