import Html.App as App
import View exposing (view)
import Model exposing (model)
import Update exposing (update)

main =
  App.beginnerProgram {
    view = view,
    model = model,
    update = update
  }
