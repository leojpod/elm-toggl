module Main exposing (main)

{-| Main module for this app: create the init and trigger everything
# Entry point
@docs main
-}

import Html
import Model
import View
import Update
import Ports


-- local imports
{-
   - Main.elm
       - Our entry point. Decodes the flags, creates the initial model, calls `Html.programWithFlags` and sets up ports.
       - Compile target for `elm-make`
       - Imports `Model`, `Update`, `View` and `Flags`.
-}


{-| kick off the application
-}
main : Program Never Model.State Update.Msg
main =
    Html.program
        ({ init = ( Model.initialState, Cmd.none )
         , update = Update.update
         , subscriptions = (\_ -> Ports.deviceReady Update.DeviceReady)
         , view = View.view
         }
        )
