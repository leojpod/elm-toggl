module View exposing (view)

import Html exposing (Html, div, h1, p, text)
import Model
import Update


view : Model.State -> Html Update.Msg
view model =
    div []
        [ h1 [] [ text "Apache Cordova with Elm and browserSync" ]
        , div []
            [ (case model of
                Model.Loading ->
                    p [] [ text "Connecting to Device" ]

                Model.Ready _ ->
                    p [] [ text "Device is Ready" ]
              )
            , p [] [ text "powered by elm" ]
            ]
        ]
