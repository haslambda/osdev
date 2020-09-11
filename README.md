# Lambda OS Dev
Lambda OS Dev Repo.

## Dependencies
- `make`
- `bochs`
- `nasm`
- `genisoimage` (usually in package `cdrtools`)
- `ld`

## Building
### POSIX-complaint OSes (Linux, macOS, ...)
```shell
make
bochs -f bootsrc.txt -q
```

### Windows
Work in progress...
