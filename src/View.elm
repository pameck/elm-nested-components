module View exposing (..)

import Html exposing (Html, text)

import Types exposing (..)

view: Model -> Html Msg
view model =
  text model
