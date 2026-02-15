# Prep clean 
rm -rf build

# --- DEBUG: static CRT ---
cmake . -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreadedDebug" -B "build/debug"
cmake --build "build/debug" --config Debug

# --- RELEASE: static CRT ---
cmake . -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded" -B "build/release"
cmake --build "build/release" --config Release

echo "Build complete!"