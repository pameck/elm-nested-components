module Types exposing (..)

import Commuting.Rides.Types as Rides
import Training.Rides.Types as TrainingRides

type alias Model =
  { rides: Rides.Model
  , trainingRides: TrainingRides.Model
  }

type Msg =
  RidesMsg Rides.Msg
  | TrainingRidesMsg TrainingRides.Msg
