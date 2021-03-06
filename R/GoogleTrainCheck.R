GoogleTrainCheck <-
function(auth_token, mybucket, mydata) {
  h = basicTextGatherer()
  b = basicTextGatherer()
  curlPerform(url = paste("https://www.googleapis.com/prediction/v1.1/training/", mybucket, "%2F", mydata, sep=""),
    httpheader = c(Authorization = paste("GoogleLogin auth=", auth_token, sep = ""), 'Content-Type' = "application/json"),
    headerfunction = h$update,
    writefunction = b$update
    )
  junk <- list(status = parseHTTPHeader(h$value()), body = b$value())
  return(fromJSON(junk$body))
}

