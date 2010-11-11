GooglePredict <-
function(auth_token, mybucket, mydata, myinput) {
  h = basicTextGatherer()
  b = basicTextGatherer()
  curlPerform(url = paste("https://www.googleapis.com/prediction/v1.1/training/", mybucket, "%2F", mydata, "/predict", sep=""),
    customrequest = "POST",
    httpheader = c(Authorization = paste("GoogleLogin auth=", auth_token, sep = ""), 'Content-Type' = "application/json"),
    postfields = paste("{\"data\":{ \"input\" : { \"mixture\" : [ \"", myinput, "\" ]}}}", sep=""),
    headerfunction = h$update,
    writefunction = b$update
    )
  junk <- list(status = parseHTTPHeader(h$value()), body = b$value())
  return(fromJSON(junk$body))
}

