module Commuting.Rides.State exposing (..)

import Commuting.Rides.Types exposing (..)
import Commuting.Rides.Commands exposing(fetchRides)

initialModel : Model
initialModel =
  { rides = []
  }

initialCommands : Cmd Msg
initialCommands =
    fetchRides

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
      OnFetchRides (Ok response) ->
          ( { model | rides = response }, Cmd.none )
      OnFetchRides (Err response) ->
          ( { model | rides = [] }, Cmd.none )
