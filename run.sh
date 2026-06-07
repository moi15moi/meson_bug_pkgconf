cd project_1
rm -rf builddir
meson setup builddir -Dlibdir=lib
meson compile -C builddir
meson install -C builddir --destdir install_dir
cd ..
unset PKG_CONFIG_PATH
export PKG_CONFIG_LIBDIR="$(pwd)/project_1/builddir/install_dir/usr/local/lib/pkgconfig"
export PKG_CONFIG_SYSROOT_DIR="$(pwd)/project_1/builddir/install_dir"
cd project_2
rm -rf builddir
meson setup builddir
meson compile -C builddir
