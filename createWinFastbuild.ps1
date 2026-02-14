# Create build dir
mkdir build\windows -Force
cd build\windows

# Configure with CMake using FASTBuild generator
cmake `
  -G "FASTBuild" `
  -S ..\.. `
  -B . `
  -DCMAKE_BUILD_TYPE=Release `
  -DGLFW_BUILD_DOCS=OFF `
  -DGLFW_BUILD_TESTS=OFF `
  -DGLFW_BUILD_EXAMPLES=OFF

# Build with FASTBuild (fbuild.exe must be in PATH)
fbuild GLFW_LIB

