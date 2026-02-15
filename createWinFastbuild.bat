@echo off

echo Cleaning old build directory...
if exist "build\" (
    rmdir /S /Q "build"
)

cmake . -G "Visual Studio 17 2022" -A x64 -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreadedDebug" -B "build/debug"
cmake --build "build/debug" --config Debug

cmake . -G "Visual Studio 17 2022" -A x64 -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded" -B "build/release"
cmake --build "build/release" --config Release

echo Build complete!