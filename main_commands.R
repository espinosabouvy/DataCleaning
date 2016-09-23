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
cuando se descarga en windows, tratar de usar mode = "wb" para evitar que se corrompan

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

#others
hay packages para todo, específico, revisar 
?connections
leer .jpg, bitmaps, png, mp3, tuneR  (revisar, deber ser interesante)



#DPLYR
library(dplyr)
var <- tbl_df(data)  #carga en el formato de dplyr la informacion
select #seleccionar desde tabla
filter #filtrar por diferentes condiciones
mutate #agregar columnas con calculos
arrange #ordenar asc por default, desc para cambiar a descendente
summarize #calculos de los totales o subgrupos
group_by  #crea grupos, como sapply
chaining # usar %>% para utilizar el objeto anterior como el objeto base de cálculo del siguiente
#Ejemplo de chainning
cran %>%
     select(ip_id, country, package, size) %>%
     mutate(size_mb = size / 2^20) %>%
     filter(size_mb <= 0.5) %>%
     arrange(desc(size_mb))

#tidyr
library(tidyr)
library(readr)
gather #se utiliza cuando se tienen columnas que no se consideran variables, por ejemplo, columna llamada grade, male, female
"It's important to understand what each argument to gather() means. The data argument, students, gives the name of the
| original dataset. The key and value arguments -- sex and count, respectively -- give the column names for our tidy
| dataset. The final argument, -grade, says that we want to gather all columns EXCEPT the grade column (since grade is
| already a proper column variable.)"
separate #separa una columna que tenga 2 variables- ejm- estilo-material, lo separa en estilo y en material
separate(data = res, col = sex_class, into = c("sex", "class"))  #default algo que no sea numerico o alpha para separar

spread  ##crea columnas con cada uno de los datos unicos de los renglones de una columna
parse_number #descompone una palabra en sus partes, por ejemplo "class5" regresa 5, existe date, string, etc.

#MERGE
merge #equivalente a un join en SQL, define las 2 tablas, by.x y by.y para dar el nombre de los ids a juntar

#LUBRIDATE
library(lubridate)

     
