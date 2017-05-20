module Stats.View exposing (..)
import Html exposing (Html, div, text)

import RemoteData exposing (WebData)

import Stats.Types exposing (..)
import Stats.ListView as List
import Stats.LoadingView as Loading

displayResponse : WebData(List Stats) -> Html Msg
displayResponse maybeStatsList =
  case maybeStatsList of
    RemoteData.NotAsked ->
      List.view []

    RemoteData.Loading ->
      Loading.view "Loading stats"

    RemoteData.Failure error ->
      List.view []
    RemoteData.Success response ->
      List.view response

view : Model -> Html Msg
view model =
  displayResponse model.stats
