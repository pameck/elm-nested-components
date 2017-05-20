module State exposing (..)

import Types exposing (..)
import Commuting.Rides.State as CommutingRides
import Training.Rides.State as TrainingRides

initialModel : Model
initialModel =
  { commutingRides = CommutingRides.initialModel,
    trainingRides = TrainingRides.initialModel
  }

initialCommands : Cmd Msg
initialCommands =
  Cmd.batch [
    Cmd.map CommutingRidesMsg CommutingRides.initialCommands
  , Cmd.map TrainingRidesMsg TrainingRides.initialCommands
  ]

init: (Model, Cmd Msg)
init =
  (initialModel, initialCommands)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    CommutingRidesMsg commutingRidesMsg ->
      let
        (commutingRidesModel, commutingRidesCmd) =
          CommutingRides.update commutingRidesMsg model.commutingRides
      in
        ( { model | commutingRides = commutingRidesModel }, Cmd.map CommutingRidesMsg commutingRidesCmd)

    TrainingRidesMsg trainingRidesMsg ->
      let
        (trainingRidesModel, trainingRidesCmd) =
          TrainingRides.update trainingRidesMsg model.trainingRides
      in
        ( { model | trainingRides = trainingRidesModel }, Cmd.map TrainingRidesMsg trainingRidesCmd)

subscriptions: Model -> Sub Msg
subscriptions model =
  Sub.none
