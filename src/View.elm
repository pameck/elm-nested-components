module View exposing (..)

import Html exposing (Html, text, div)

import Types exposing (..)
import Commuting.Rides.View as Rides
import Training.Rides.View as TrainingRides
import Stats.View as Stats

view: Model -> Html Msg
view model =
  div []
  [ Html.map CommutingRidesMsg (Rides.view model.commutingRides)
  , Html.map TrainingRidesMsg (TrainingRides.view model.trainingRides)
  , Html.map StatsMsg (Stats.view model.stats) ]
