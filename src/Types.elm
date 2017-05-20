module Types exposing (..)

import Rides.Types as Rides

type alias Model =
  { rides: Rides.Model }

type Msg =
  RidesMsg Rides.Msg
