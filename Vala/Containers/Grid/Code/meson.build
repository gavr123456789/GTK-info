project('vala app', 'vala', 'c')

dependencies = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk+-3.0'),
    dependency('gee-0.8'),
    dependency('json-glib-1.0'),
]

# add_global_arguments('--enable-experimental-non-null', language:'vala')

# add_project_arguments('-Warray-bounds', language:'c')
# add_project_arguments('-fstack-protector-all', language:'c')
# add_project_arguments('-Wall', language:'c')
# add_project_arguments('-O2', language:'c')
 
sources = files('v.vala')

executable('app_name', sources, dependencies: dependencies)