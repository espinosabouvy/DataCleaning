## first commands to lear

#getwd - carpeta default trabajo
#setwd - definir carpeta default

#directorio existe y si no, crealo
if (!file.exists("data")){
     file.create("data")
}

#DOWNLOAD FILES
download.file (siempre crear una variable con la fecha en que se descarga
Excel - library("openxlsx")
var <- read.xlsx("archivo", sheets = 1, header=TRUE, colIndex = 2:3, rowIndex = 6:12)

#XML Y HTML
library(XML)
fileurl <- "http://www.w3schools.com/xml/simple.xml"  #nombre
doc <- xmlTreeParse(fileurl, useInternalNodes = TRUE) #carga el xml
doc <<- htmlTreeParse(fileurl, useInternalNodes = TRUE) #carga el html
rootnode <- xmlRoot(doc)
#rootnode[1] or rootnode[[1]][[1]]
xpathSApply(rootnode, "//name", xmlValue)  #nombre de los titulos del nodo name // (2do nivel)

#JSON
library(jsonlite)

#MySQL
a <- dbConnect(MySQL(), dbname = "", username = "", password = "", host = "")
result <- dbGetQuery(a, "show databases;")
dbDisconnect(a)
tablas <- dbListTables(db)
campos <- dbListFields(db, "tabla")
GET <- dbGetQuery(db, "SELECT count(*()  FROM XXX"
consulta <- dbSendQuery(db, "SELECT * FROM TABLE WHERE XXX = 1")
obtener_consulta <- fetch(consulta, n = 10) ##solo los primeros 10 registros se descargan
dbClearResult(a)  #limpia la consulta

#HDF5
source("http://bioconductor.org/biocLiteR")
biocLite("rhdf5")
library(rdhf5)
created = h5createFile("nombre.h5")
created = h5createGroup("nombre.h5", "grupo/subgrupo")
h5ls("nombre.h5")  ## como ls pero de hdf5
h5write(matrix(1:10, nr=5, nc=2), "nombre.h5","grupo/subrupo")
readA = h5read("nombre.h5", "grupo/subrupo")
h5write(c(11,12,13),"nombre.h5", "grupo", index = list(1:3,1))  #elige en que renglones y en que columna escribir o leer

#WEB
con = url("htts://asdñfasdijfdasf.com")
htmlCode <- readline(url,10)
close(con)
library(XML)
html <- htmlTreeParse(con, useInternalNodes = T)
xpathApply(html, "//title", xmlValue)

library(httr)
html2 <- get(url, authenticate("user","passwd"))  ##solo si requiere login, a diferencia de lib XML
content2 <- content(html2, as="text")
parsedHtml =htmlParse(html2, asText = T)
xpathSApply(parsedHtml, "//title", xmlValue)
## a esto se llama web scraping

#API'S
#revisar development en face, twitter, google, etc.
"GitHub - crear development account - generar una aplicacion y obtener "

#others
hay packages para todo, específico, revisar 
?connections
leer .jpg, bitmaps, png, mp3, tuneR  (revisar, deber ser interesante)








