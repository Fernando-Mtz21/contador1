fun main()
{
    var Horas: Int
    var Minutos: Int
    var Segundos: Int
    do
    {
        println("Ingrese las horas: ")
        Horas = readLine()!!.toInt()
        if(Horas < 0)
        {
            println("Las horas deben ser mayor a 0")
        }
    }
    while(Horas < 0)
    do
    {
        println("Ingrese los minutos: ")
        Minutos = readLine()!!.toInt()
        if(Minutos !in 0..59)
        {
            println("Los minutos deben estar entre 0 y 59")
        }
    }
    while(Minutos !in 0..59)
    do{
        println("Ingrese los segundos: ")
        Segundos = readLine()!!.toInt()
        if(Segundos !in 0..59)
        {
            println("Los minutos deben estar entre 0 y 59")
        }
    }
    while(Segundos !in 0..59)
    
}