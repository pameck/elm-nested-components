module Stats.Types exposing (..)

import RemoteData exposing (WebData)

type alias Model =
    { stats : WebData (List Stats) }

type alias Stats =
  { description : String
  , value: String
  }

type Msg
  = OnFetchStats (WebData(List Stats))
