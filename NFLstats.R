estad <- function(equipo = "dal"){
     fileurl <- paste0("http://www.espn.com.mx/futbol-americano/nfl/equipo/estadisticas/_/nombre/",equipo)
     print(fileurl)
     doc <<- htmlTreeParse(fileurl, useInternalNodes = TRUE) #carga el xml
     rootnode <- xmlRoot(doc)
     names(rootnode)
}