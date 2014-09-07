#include <stdio.h>
#include <unistd.h>
#include <ruby.h>

//
//  file1 = File.open("file1", 'w)
//  file2 = File.open('file2', 'w')
//  file3 = File.open('file3', 'rw')
//  Unix.select(
//    :read => [file1, file2],
//    :write => file3,
//    :timeout => 1.second,
//  ) do |file_with_activity|
//    p file_with_activity.read
//  end
//

static int
rb_unix_c_select(int n, VALUE read_ary, VALUE write_ary, VALUE except_ary, VALUE timeout) {
  return 9;
}
