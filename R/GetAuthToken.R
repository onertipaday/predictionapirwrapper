GetAuthToken <-
function(email,passwd, file="auth_token.txt", save=FALSE) {
  x <- postForm(uri="https://www.google.com/accounts/ClientLogin",
    accountType="HOSTED OR GOOGLE",
    Email=email,
    Passwd=passwd,
    service="xapi",
    source="RCurl",
    'Content-Type' = "application/x-www-form-urlencoded"
    )
  x <- strsplit(x,"\n")
  x <- list( SID=gsub("SID=","", x[[1]][1]), LSID=gsub("LSID=","", x[[1]][2]), Auth= gsub("Auth=","", x[[1]][3]) )
  if(save) write(x$Auth, file)
  return(x)
}

