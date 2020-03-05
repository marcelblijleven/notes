# sql.Open()
sql.Open() returns a sql.DB object, which is a pool of connections. This pool of connections is concurrent safe and is should be long-lived. It shouldn't be initialized in a handler, because that would impact resources


## Example uses
```go
// MySQL example
dsn := "web:pass@/dbname?parseTime=true"
db, err := sql.Open("mysql", dsn)
if err != nil {
	// handle err
}

if err = db.Ping(); err != nil {
	// handle err
}
``` 
