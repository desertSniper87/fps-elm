module Sandbox exposing (..)
import Html exposing (..)
import Browser exposing (sandbox)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)

type alias Model = 
    { message: String }

type Msg = 
    Message  String


initialModel : Model
initialModel = 
    Model "Hello"

update : Msg -> Model -> Model

update msg model = 
    case msg of
        Message newMessage -> 
            { model | message = newMessage }

view : Model -> Html Msg
view model = 
    div [] 
    [
        input [ placeholder "Type Here", onInput Message  ] []
    ,   div [] [ text model.message ]
    ]

main : Program () Model Msg
main = 
    sandbox
    {
        init=initialModel
    ,   view=view
    ,   update=update
    }

