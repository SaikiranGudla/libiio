# Compiling libiio

## Requirements
- **cmake** installed on your system
- **Visual Studio 2022** installed with the C++ pack  
  *(Community Edition is okay too if you face issues with the Pro version download)*
- **Dependencies** as required by [Building libiio in Visual Studio (Analog Devices Wiki)](https://wiki.analog.com/resources/tools-software/linux-software/libiio)
> **Note:** The dependencies are not included in the repository, so you will need to install them manually.
- **libserialport** dependency:
    1. Clone the repository:
        ```sh
        git clone https://github.com/sigrokproject/libserialport.git
        ```
    2. Open `libserialport.sln` in Visual Studio and build in **Release** mode.

> **Note:** You need to install dependencies in a `c/deps` folder as expected by the build tools.

---

## Easy Build Steps

1. Go to the [my_build](http://_vscodecontentref_/0) folder.
2. Run `full_build.bat` to build the DLLs and generate executables for the C programs.

    - These batch files require dependencies to be installed at the paths specified in `libiio_build.bat`.

3. The build process creates a timestamped folder containing all necessary DLLs and executables.

4. Copy the folder contents to:
    ```
    C:\Program Files (x86)\libiio\lib\libiio
    ```

---

## Testing

- After a successful build (or if you already have the DLLs and executables installed at the above path), run:
    ```
    start_iio_env.bat
    ```
    to start testing the command-line tools.

- For custom executables, set the environment path to:
    ```
    C:\Program Files (x86)\libiio\lib\libiio
    ```
    and test as needed.

---

## Troubleshooting

If you are confused:
- Ensure you have all required DLLs and executables installed at the specified path.
- Update the env path to include:
    ```
    C:\Program Files (x86)\libiio\lib\libiio
    ```
- Run the executables from the command line to see any error messages.
---