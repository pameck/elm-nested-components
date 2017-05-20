module State exposing (..)

import Types exposing (..)
import Commuting.Rides.State as CommutingRides
import Training.Rides.State as TrainingRides
import Stats.State as Stats

initialModel : Model
initialModel =
  { commutingRides = CommutingRides.initialModel,
    trainingRides = TrainingRides.initialModel,
    stats = Stats.initialModel
  }

initialCommands : Cmd Msg
initialCommands =
  Cmd.batch [
    Cmd.map CommutingRidesMsg CommutingRides.initialCommands
  , Cmd.map TrainingRidesMsg TrainingRides.initialCommands
  , Cmd.map StatsMsg Stats.initialCommands
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

    StatsMsg statsMsg ->
      let
        (statsModel, statsCmd) =
          Stats.update statsMsg model.stats
      in
        ( { model | stats = statsModel }, Cmd.map StatsMsg statsCmd)

subscriptions: Model -> Sub Msg
subscriptions model =
  Sub.none
