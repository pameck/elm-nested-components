module Commuting.Rides.Commands exposing (fetchRides)

import Http
import Commuting.Rides.Types exposing (..)

import Json.Decode as Decode
import Json.Decode.Pipeline exposing (decode, required)

ridesUrl: String
ridesUrl =
  "http://localhost:4000/rides"

fetchRides : Cmd Msg
fetchRides =
    Http.send OnFetchRides (Http.get ridesUrl ridesParser)

ridesParser : Decode.Decoder (List Ride)
ridesParser =
    Decode.list singleRideParser


singleRideParser : Decode.Decoder Ride
singleRideParser =
    decode Ride
        |> required "id" Decode.int
        |> required "distance" Decode.string
        |> required "movingTime" Decode.string
        |> required "averageSpeed" Decode.string
