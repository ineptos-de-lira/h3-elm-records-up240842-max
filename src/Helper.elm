module Helper exposing (..)

import Html exposing (i)



-- SIMPLE EXCERCISES


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



--EJERCICIO 1


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "Java"
      , releaseYear = 1995
      , currentVersion = "11"
      }
    , { name = "Python"
      , releaseYear = 1994
      , currentVersion = "3.14"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list



--EJERCICIO 2


users : List { name : String, uType : String }
users =
    [ { name = "Mitsiu"
      , uType = "Professor"
      }
    , { name = "Yael"
      , uType = "Student"
      }
    , { name = "Ramses"
      , uType = "Professor"
      }
    , { name = "Gaby"
      , uType = "Student"
      }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        list



--EJERCICIO 3


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


vg : List Videogame
vg =
    [ { title = "Hollow Knight"
      , releaseYear = 2017
      , available = True
      , downloads = 15000000
      , genres = [ "Adventure", "Action" ]
      }
    , { title = "Ori and the Blind Forest"
      , releaseYear = 2015
      , available = True
      , downloads = 15000000
      , genres = [ "Adventure", "Action" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list



--EJERCICIO 4


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "MacBook Pro"
    , brand = "Apple"
    , screenSize = "14"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 []
            [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ myLaptop.ram) ]
                , Html.li [] [ Html.text ("Modelo: " ++ myLaptop.model) ]
                , Html.li [] [ Html.text ("Marca: " ++ myLaptop.brand) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
