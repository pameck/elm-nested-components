module Rides.Types exposing (..)

type alias Model =
    { rides : List Ride }

type alias Ride =
  { id : Int
  , distance : String
  , movingTime : String
  , averageSpeed : String
  }

type Msg
  = OnFetchRides (List Ride)
