require "mkmf"

abort "missing select()" unless have_func "select"

create_makefile "unix/unix"
