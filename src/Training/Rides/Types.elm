module Training.Rides.Types exposing (..)

import Http

type alias Model =
    { rides : List Ride }

type alias Ride =
  { id : Int
  , distance : String
  , movingTime : String
  , averageSpeed : String
  }

type Msg
  = OnFetchRides (Result Http.Error (List Ride))
