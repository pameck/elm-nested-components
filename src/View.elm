module View exposing (..)

import Html exposing (Html, text, div, h2)
import Html.Attributes exposing (class)

import Types exposing (..)
import Commuting.Rides.View as Rides
import Training.Rides.View as TrainingRides
import Stats.View as Stats

view: Model -> Html Msg
view model =
  div [class "container-fluid"]
  [
    header "Elm - Single page App with Nested Components"
  , Html.map CommutingRidesMsg (Rides.view model.commutingRides)
  , Html.map TrainingRidesMsg (TrainingRides.view model.trainingRides)
  , Html.map StatsMsg (Stats.view model.stats) ]

header: String -> Html Msg
header title =
  div [class "page-header"]
  [
    h2 []
    [text title ]
  ]
