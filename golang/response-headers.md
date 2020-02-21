# Response headers
When sending an http Response, Go sets three headers by default:
* Date
* Content-Length
* Content-Type

Go uses a function called `http.DetectContentType()` to determine the type of the body by using _content sniffing_. It will default back to `Content-Type: application/octet-stream` if it did not manage to find out the correct `Content-Type`.

The `http.DetectContentType()` function is not able to detect JSON in a string, so it will set the `Content-Type` to `Content-Type: text/plain; charset=utf-8`. You need to manually set the header to `application/json` like this:

```Go
w.Header().Set("Content-Type", "application/json")
```

