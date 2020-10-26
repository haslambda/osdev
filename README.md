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
qemu-system-i386 -boot d -cdrom ./os.iso -m 512 -s
```
The `-s` flag is for remote debugging with `gdb`.
