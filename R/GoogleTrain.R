GoogleTrain <-
function(auth_token, mybucket, mydata) {
  h = basicTextGatherer()
  b = basicTextGatherer()
  curlPerform(url = paste("https://www.googleapis.com/prediction/v1.1/training?data=", mybucket, "%2F", mydata, sep=""),
    customrequest = "POST",
    httpheader = c(Authorization = paste("GoogleLogin auth=", auth_token, sep = ""), 'Content-Type' = "application/json"),
    postfields='{\"data\":{}}',
    headerfunction = h$update,
    writefunction = b$update
    )
  list(status = parseHTTPHeader(h$value()), body = b$value())
  return(fromJSON(junk$body)) # convert JSON output to R list
}

