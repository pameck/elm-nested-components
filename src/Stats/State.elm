module Stats.State exposing (..)

import RemoteData exposing (WebData)

import Stats.Types exposing (..)
import Stats.Commands exposing (fetchStats)

initialModel : Model
initialModel =
  { stats = RemoteData.Loading
  }

initialCommands : Cmd Msg
initialCommands =
    fetchStats

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnFetchStats response ->
            ( { model | stats = response }, Cmd.none )
