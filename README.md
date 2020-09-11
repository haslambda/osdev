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
```

### Windows
Work in progress...

### Running the kernel
```shell
bochs -f bochsrc.txt -q
```
