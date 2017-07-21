module Update exposing (update, Msg(..))

import Model exposing (State)


{-
   Update.elm contains our update code. This includes the Msg types for our view.
   Inside here most of our business logic lives.
-}


type Msg
    = NoOp
    | DeviceReady ()


update : Msg -> State -> ( State, Cmd Msg )
update message model =
    case message of
        DeviceReady _ ->
            ( Model.Ready Model.init, Cmd.none )

        NoOp ->
            ( model, Cmd.none )
