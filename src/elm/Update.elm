module Update exposing (update, Msg(..))

import Model exposing (Model)


{-
   Update.elm contains our update code. This includes the Msg types for our view.
   Inside here most of our business logic lives.
-}


type Msg
    = NoOp
    | DeviceReady


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    ( model, Cmd.none )
