mkdir -p build/linux
cd build/linux

cmake \
  -G "FASTBuild" \
  -S ../.. \
  -B . \
  -DCMAKE_BUILD_TYPE=Release \
  -DGLFW_BUILD_DOCS=OFF \
  -DGLFW_BUILD_TESTS=OFF \
  -DGLFW_BUILD_EXAMPLES=OFF

