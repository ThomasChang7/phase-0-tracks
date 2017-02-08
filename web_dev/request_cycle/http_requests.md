# 9.1

## Release 0

1. In phase-0-tracks/web_dev/request_cycle create a Markdown file called http_requests.md. Research the following questions and record your answers in that file.

2. What are some common HTTP status codes?
- 200 OK
- 300 Multiple Choices
- 301 Moved Permanently
- 302 Found
- 304 Not Modified
- 307 Temporary Redirect
- 400 Bad Request 
- 404 Not Found
- 410 Gone
- 500 Internal Server Error
- 501 Not Implemented
- 503 Service Unavailable
- 550 Permission denied

3. What is the difference between a GET request and a POST request? When might each be used?
> GET will request data from a specified resource. 
- Can be cached
- Remain in the browser history
- Can be bookmarked
- Only to be used in the retrieval of data
> POST will submit data to be processed to a specific resource
- Never cached
- Do not remain in browser history
- Cannot be bookmarked
- No restrictions on data length
4. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
> A cookie is a file stored by a browser on the user's computer. The page or serve will tell the browser to store this information and then send it back with each request. The web server will then be able to identify users individually. After longing in, a user may be able to navigate the website as long as the cookie is present and validated.