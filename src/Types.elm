module Types exposing (..)

import Commuting.Rides.Types as Rides

type alias Model =
  { rides: Rides.Model }

type Msg =
  RidesMsg Rides.Msg
