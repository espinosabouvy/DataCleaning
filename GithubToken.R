##github api connections and reader
GithubToken <- function(){
     library(httr)
     library(httpuv)
     
     # 1. Find OAuth settings for github:
     #    http://developer.github.com/v3/oauth/
     oauth_endpoints("github")
     
     # 2. Register an application at https://github.com/settings/applications
     #    Insert your values below - if secret is omitted, it will look it up in
     #    the GITHUB_CONSUMER_SECRET environmental variable.
     #
     #    Use http://localhost:1410 as the callback url
     myapp <- oauth_app("github", key = "2274474299f03b29e57d", secret = "eb7785c829d78c9a866d7441004fcb9619e384c7")
     
     # 3. Get OAuth credentials
     github_token <<- oauth2.0_token(oauth_endpoints("github"), myapp)
     
     # 4. Use API
     req <- GET("https://api.github.com/rate_limit", config(token = github_token))
     stop_for_status(req)
     content(req)
     
     #GET obtiene una respuesta
     #para ver primero probar si fue correcto con http_status
     #content es donde está la informacion - content(GET(XX), "parsed")
     
}