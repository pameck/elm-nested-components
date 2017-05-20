module Stats.ListView exposing (..)

import Html exposing (Html, div, text, p, table, thead, tbody, tr, th, td)
import Html.Attributes exposing (class, style)
import List exposing (map)

import Stats.Types exposing (..)

view : List Stats -> Html Msg
view statsList =
    div [class "panel panel-default"]
    [ div [class "panel-heading"]
      [ text "Stats"]
    , table [class "table table-striped table-bordered table-hover"]
      [ head
      , tbody []
        (map row statsList)
      ]
    ]


head =
  thead []
  [ headRow "Description"
  , headRow "Value"
  ]

headRow : String -> Html Msg
headRow title =
  th []
    [text title]

row : Stats -> Html Msg
row stats =
    tr []
      [ field stats.description
      , field stats.value
      ]

field : String -> Html Msg
field value =
  td []
    [ text value]
