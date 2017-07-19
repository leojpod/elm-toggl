port module Ports exposing (deviceReady)


port deviceReady : (() -> msg) -> Sub msg
