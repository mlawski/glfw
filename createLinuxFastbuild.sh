# Prep clean 
rm -rf build

# --- DEBUG: static CRT ---
cmake . -B "build/debug"
cmake --build "build/debug" --config Debug

# --- RELEASE: static CRT ---
cmake . -B "build/release"
cmake --build "build/release" --config Release

echo "Build complete!"