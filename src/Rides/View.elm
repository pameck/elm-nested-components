module Rides.View exposing (..)
import Html exposing (Html, div, text)

import Rides.Types exposing (..)
import Rides.ListView as List

view : Model -> Html Msg
view model =
  List.view model.rides
