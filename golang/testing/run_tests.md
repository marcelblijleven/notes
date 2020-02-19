# Run tests
Run all packages in directory
```
go test ./...
```

Run tests with coverage
```
go test ./... -coverprofile cp.out
```

Run all submodules in directory
```
go test $(go list -m)/...
```

Run test with coverage
```
go test $(go list -m)/... -coverprofile cp.out
```

