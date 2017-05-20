module Training.Rides.View exposing (..)
import Html exposing (Html, div, text)

import Training.Rides.Types exposing (..)
import Training.Rides.ListView as List

view : Model -> Html Msg
view model =
  List.view model.rides
