module Types exposing (..)

import Commuting.Rides.Types as CommutingRides
import Training.Rides.Types as TrainingRides
import Stats.Types as Stats

type alias Model =
  { commutingRides: CommutingRides.Model
  , trainingRides: TrainingRides.Model
  , stats: Stats.Model
  }

type Msg =
  CommutingRidesMsg CommutingRides.Msg
  | TrainingRidesMsg TrainingRides.Msg
  | StatsMsg Stats.Msg
