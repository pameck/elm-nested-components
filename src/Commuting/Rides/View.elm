module Commuting.Rides.View exposing (..)
import Html exposing (Html, div, text)

import Commuting.Rides.Types exposing (..)
import Commuting.Rides.ListView as List

view : Model -> Html Msg
view model =
  List.view model.rides
