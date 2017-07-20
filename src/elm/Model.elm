module Model exposing (Model, State(Loading, Ready), initialState, init)

{-
   Inside Model.elm, we contain the actual model for the view state of our program.
   Note that we generally don't include non-view state inside here, preferring to
   instead generalize things away from the view where possible. For example, we
   might have a record with a list of assignments in our Model file, but the
   assignment type itself would be in a module called Data.Assignment.

   - Model.elm
    - Contains the `Model` type for the view alone.
    - Imports nothing but generalized types that are used in the model
    - Exports `Model`
-}


type State
    = Loading
    | Ready Model


type alias Model =
    {}


initialState : State
initialState =
    Loading


init : Model
init =
    {}
