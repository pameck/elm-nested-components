module Main exposing (main)

import Html exposing (Html, program, text)

type alias Model = String

type Msg = NoOp

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

view: Model -> Html Msg
view model =
  text model

main : Program Never Model Msg
main =
    program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }
