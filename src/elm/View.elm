module View exposing (view)

import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (class, id)
import Model
import Update


view : Model.Model -> Html Update.Msg
view model =
    div []
        [ h1 [] [ text "Apache Cordova" ]
        , div [ id "deviceready", class "blink" ]
            [ p [ class "event listening" ] [ text "Connecting to Device" ]
            , p [ class "event received" ] [ text "Device is Ready" ]
            , p [ class "" ] [ text "powered by elm" ]
            ]
        ]
