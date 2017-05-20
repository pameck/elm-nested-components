module View exposing (..)

import Html exposing (Html, text)

import Types exposing (..)
import Commuting.Rides.View as Rides

view: Model -> Html Msg
view model =
  Html.map RidesMsg (Rides.view model.rides)
