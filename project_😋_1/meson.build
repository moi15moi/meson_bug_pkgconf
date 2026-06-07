project(
    'project_1',
    'c',
    meson_version: '>=1.3.0',
    version: '1.0.0',
)

static_cflags = ['-DAPI_STATIC']

project_1_headers = files('project_1.h')
install_headers(project_1_headers)

project_1_lib = library(
    'project_1',
    ['main.c'],
    c_args : ['-DAPI_EXPORTS'],
    c_static_args  : static_cflags,
    install : true,
)

pkg_config = import('pkgconfig')
pkg_config.generate(
    project_1_lib,
    extra_cflags : static_cflags,
)