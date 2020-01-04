# rpm builder

## Build

```shell
make
```

## Run images

### Run by Cent OS 6

```shell
make run-6
```

### Run by Cent OS 7

```shell
make run-7
```

# About SPEC(Appendix)

## Build flow

1. Executes the commands and macros mentioned in the prep section of the spec file.
2. Checks the content of the file list
3. Executes the commands and macros in the build section of the spec file. Macros from the file list is also executed at this step.
4. Creates the binary package file
5. Creates the source package file

## Constitusion of .spec file

1. Preamble - Summary of package.
2. %prep - This section responsible for preparetion of package build & installation.
3. Definition of macros.
4. %description - Description for package.
5. %build - Build commands.
6. %install - Installation commands.
7. %files - List of files that are part of package. This section requires complete paths. If the files are not part of the %files section then it wont be available in the package.
8. %clean - This section instructs the RPM to clean up any files that are not part of the application’s normal build area.
