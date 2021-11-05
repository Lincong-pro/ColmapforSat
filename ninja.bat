del CMakeLists.txt.user
mkdir build_ninja
cd build_ninja

pushd D:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise
call VC\Auxiliary\Build\vcvars64.bat
popd

cmake -GNinja ^
    -DCMAKE_TOOLCHAIN_FILE=%CONDA_PREFIX%/h2o.cmake ^
    -DCMAKE_BUILD_TYPE=RelWithDebInfo ^
    -DBoost_USE_STATIC_LIBS=OFF ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DCMAKE_PREFIX_PATH=%CONDA_PREFIX%/Library ^
    -DCMAKE_INSTALL_PREFIX="F:/repo/colmap_Sat_Release" ^
    ../

cd ..