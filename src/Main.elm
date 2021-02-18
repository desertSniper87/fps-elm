module Main exposing (..)
import Html exposing (..)
import Browser exposing (sandbox)

type alias Model = 
    { message: String }

type Msg = 
    Message  String


initialModel : Model
initialModel = 
    Model ""

update : Msg -> Model -> Model

update msg model = 
    case msg of
        Message newMessage -> 
            { model | message = newMessage }

view : Model -> Html Msg
view model = 
    div [] [ text "Hello World!" ]

main : Program () Model Msg
main = 
    sandbox
    {
        init=initialModel
    ,   view=view
    ,   update=update
    }

