module Stats.Commands exposing (..)

import RemoteData exposing (RemoteData)
import Http
import Json.Decode as Decode
import Json.Decode.Pipeline exposing (decode, required)

import Stats.Types exposing (..)

fetchStats : Cmd Msg
fetchStats =
    Http.get "http://localhost:4000/stats" statsListParser
        |> RemoteData.sendRequest
        |> Cmd.map OnFetchStats

statsListParser : Decode.Decoder (List Stats)
statsListParser =
    Decode.list statsParser

statsParser : Decode.Decoder Stats
statsParser =
    decode Stats
        |> required "description" Decode.string
        |> required "value" Decode.string
