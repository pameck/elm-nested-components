module State exposing (..)

import Types exposing (..)

init : (Model, Cmd Msg)
init =
  ("Hello", Cmd.none)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

subscriptions: Model -> Sub Msg
subscriptions model =
  Sub.none
