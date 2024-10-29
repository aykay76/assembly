.align 2 is vital to avoid bus error


ARM64:

`as -o arm64.o arm64.asm`
`ld -macos_version_min 15.0.0 -o arm64 arm64.o -lSystem -syslibroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -e _start -arch arm64`

