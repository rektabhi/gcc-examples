### Compiling Orc Code


1. Generate the implementation of the code:
```
orcc --include stdint.h --implementation -o add_generated_code.c add.orc
```

2. Generate the header:
```
orcc --header add.orc -o add_generated_header.h
```

3. Compile the generated code: This command does not build as of now
```
gcc add_generated_code.c -I/opt/homebrew/include/orc-0.4
```

4. Compile the application code: (This step will only pass after 3 has completed successfully)
```
gcc add.c -v
```

