project('calc', 'vala', 'c')


dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gee-0.8'),
    dependency('gtk+-3.0'),
    
]

sources = ['calc.vala']

sources += import( 'gnome' ).compile_resources(
    'resources','data/resources.xml',
    source_dir:'data',
    c_name: 'calc_resources'
)

executable(
    meson.project_name(),
    sources,
    dependencies: dependencies,
    install: true
)