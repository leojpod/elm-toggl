module View exposing (view)

import Html exposing (Html, div, h1, p, text, section)
import Html.Attributes exposing (class)
import BulmaClasses exposing (bulma)
import Model
import Update


view : Model.State -> Html Update.Msg
view model =
    div []
        [ header
        , section
            [ class bulma.section.container
            , class bulma.section.spacing.isLarge
            ]
            [ div [ class bulma.feature.container ]
                [ (case model of
                    Model.Loading ->
                        p [] [ text "Connecting to Device" ]

                    Model.Ready _ ->
                        p [] [ text "Device is Ready" ]
                  )
                , p [] [ text "powered by elm" ]
                ]
            ]
        ]


header : Html msg
header =
    section [ class bulma.hero.container, class bulma.hero.color.isPrimary ]
        [ div [ class bulma.hero.body ]
            [ div [ class bulma.feature.container ]
                [ h1 [ class bulma.heading.title ] [ text "elm-toggle" ]
                ]
            ]
        ]
