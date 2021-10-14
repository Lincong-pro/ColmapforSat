del CMakeLists.txt.user
mkdir build
cd build

cmake -G "Visual Studio 16 2019" -A x64 -T host=x64 ^
    -DCMAKE_TOOLCHAIN_FILE=%CONDA_PREFIX%/h2o.cmake ^
    -DCMAKE_BUILD_TYPE=RelWithDebInfo ^
    -DBUILD_SHARED_LIBS=OFF ^
    ../

cd ..