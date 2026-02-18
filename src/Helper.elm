module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List number -> List GradeStatus
categoricalGrade list =
    List.map
        (\grade ->
            if grade >= 7 then
                Approved

            else if grade >= 0 && grade < 7 then
                Failed

            else
                Pending
        )
        list


-----------------------------------------------


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction list =
    List.map airplaneScheduleAction list
