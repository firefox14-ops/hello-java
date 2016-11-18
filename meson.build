project('hello-java', ['cpp', 'c', 'java'], default_options: [
  'cpp_std=c++11', 'buildtype=debug', 'warning_level=2',
  'default_library=static',
  #'b_lundef=false', 'b_asneeded=false'
])

avian = subproject('avian') 
libavian = avian.get_variable('libavian')

zlib = dependency('zlib', version: '>=1.2.3', static: true)
threads = dependency('threads')

subdir('src/java')

if target_machine.system() == 'windows'
  link_args = ['-lwsock32']
else
  link_args = ['-lm', '-ldl']
endif

hello = executable('hello',
  sources: [
    'hello.c',
  ],
  link_args: link_args,
  objects: [libavian.extract_all_objects()],
  dependencies: [threads, zlib])
