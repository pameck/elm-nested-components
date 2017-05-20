module State exposing (..)

import Types exposing (..)
import Rides.State as Rides

initialModel : Model
initialModel =
  { rides = Rides.initialModel
  }

initialCommands : Cmd Msg
initialCommands =
  Cmd.batch [
    Cmd.map RidesMsg Rides.initialCommands
  ]

init: (Model, Cmd Msg)
init =
  (initialModel, initialCommands)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    RidesMsg ridesMsg ->
      let
        (ridesModel, ridesCmd) =
          Rides.update ridesMsg model.rides
      in
        ( { model | rides = ridesModel }, Cmd.map RidesMsg ridesCmd)

subscriptions: Model -> Sub Msg
subscriptions model =
  Sub.none
