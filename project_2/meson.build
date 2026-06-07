project(
    'project_2',
    'c',
    meson_version: '>=1.3.0',
    version: '1.0.0',
)

project_1_dep = dependency('project_1')

executable(
    'project_2',
    ['main.c'],
    install : true,
    dependencies : [project_1_dep],
)
