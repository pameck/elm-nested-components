module Rides.ListView exposing (..)

import Html exposing (Html, div, text, p, table, thead, tbody, tr, th, td)
import Html.Attributes exposing (class, style)
import List exposing (map)

import Rides.Types exposing (..)

view : List Ride -> Html Msg
view rides =
    div [class "panel panel-default"]
    [ div [class "panel-heading"]
      [ text "Rides"]
    , table [class "table"]
      [ head
      , tbody []
        (map row rides)
      ]
    ]

head : Html Msg
head =
  thead []
  [ headRow "ID"
  , headRow "Distance"
  , headRow "Moving Time"
  , headRow "Average Speed"
  ]

headRow : String -> Html Msg
headRow title =
  th []
    [text title]

row : Ride -> Html Msg
row ride =
    tr []
      [ field (toString ride.id)
      , field ride.distance
      , field ride.movingTime
      , field ride.averageSpeed
      ]

field : String -> Html Msg
field value =
  td []
    [ text value]
