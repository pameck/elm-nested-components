module Types exposing (..)

import Commuting.Rides.Types as CommutingRides
import Training.Rides.Types as TrainingRides

type alias Model =
  { commutingRides: CommutingRides.Model
  , trainingRides: TrainingRides.Model
  }

type Msg =
  CommutingRidesMsg CommutingRides.Msg
  | TrainingRidesMsg TrainingRides.Msg
