module Rides.State exposing (..)

import Rides.Types exposing (..)

initialModel : Model
initialModel =
  { rides = [Ride 0 "1 km" "1:00" "60 km/h"]
  }

initialCommands : Cmd Msg
initialCommands =
    Cmd.none

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
      OnFetchRides response ->
          ( { model | rides = response }, Cmd.none )
