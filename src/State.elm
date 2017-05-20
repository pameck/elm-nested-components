module State exposing (..)

import Types exposing (..)
import Commuting.Rides.State as Rides
import Training.Rides.State as TrainingRides

initialModel : Model
initialModel =
  { rides = Rides.initialModel,
    trainingRides = TrainingRides.initialModel
  }

initialCommands : Cmd Msg
initialCommands =
  Cmd.batch [
    Cmd.map RidesMsg Rides.initialCommands
  , Cmd.map TrainingRidesMsg TrainingRides.initialCommands
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

    TrainingRidesMsg trainingRidesMsg ->
      let
        (trainingRidesModel, trainingRidesCmd) =
          TrainingRides.update trainingRidesMsg model.trainingRides
      in
        ( { model | trainingRides = trainingRidesModel }, Cmd.map TrainingRidesMsg trainingRidesCmd)

subscriptions: Model -> Sub Msg
subscriptions model =
  Sub.none
