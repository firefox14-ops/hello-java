project('zetes', ['cpp', 'c', 'java'], default_options: [
  'cpp_std=c++11', 'buildtype=release', 'warning_level=2',
  'default_library=static',
  #'b_lundef=false', 'b_asneeded=false'
])

avian = subproject('avian') 
libavian = avian.get_variable('libavian')

subdir('src/java')

#message(hellojava.extract_all_objects())
