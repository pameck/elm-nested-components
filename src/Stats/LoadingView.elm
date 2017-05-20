module Stats.LoadingView exposing (..)

import Html exposing (Html, div, text)

import Stats.Types exposing (..)

view : String -> Html Msg
view message =
    div []
      [ text message ]
