library(gargle)
token = token_fetch(
  scopes = c(
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/cloud-translation",
    "https://www.googleapis.com/auth/drive"
  ),
  app = httr::oauth_app(
    appname = "rclass-translator",
    key = "655288273066-ne9pbj78d15c1b6rgculk6l4nai5jt3v.apps.googleusercontent.com",
    secret = "HZGZZWwsx7CJI40utMBSfv1q",
    redirect_uri = "http://localhost:1410/"
  ))

googleAuthR:::.auth$set_cred(token)
googleAuthR:::.auth$set_auth_active(TRUE)
string = "hey what's up?"
x = googleLanguageR::gl_talk(
  string,
  output = tempfile(fileext = ".wav"))
tuneR::readWave(x)
res = googleLanguageR::gl_translate(string, target = "es")
