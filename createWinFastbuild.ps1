# Prep clean 
Remove-Item -Path "build" -Recurse

# --- DEBUG: static CRT ---
cmake . -G "Visual Studio 17 2022" -A x64 -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreadedDebug" -B "build/debug"
cmake --build "build/debug" --config Debug

# --- RELEASE: static CRT ---
cmake . -G "Visual Studio 17 2022" -A x64 -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded" -B "build/release"
cmake --build "build/release" --config Release

Write-Host "Build complete!"
