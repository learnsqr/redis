#!/usr/bin/ruby

def int_check(val)
  pass = Integer(val) rescue nil
  if pass
    val.to_i
  else
    STDERR.puts "Argument must be an integer."
    exit
  end
end

def gen_redis_proto(*cmd)
  proto = ""
  proto << "*"+cmd.length.to_s+"\r\n"
  cmd.each{|arg|
    proto << "$"+arg.to_s.bytesize.to_s+"\r\n"
    proto << arg.to_s+"\r\n"
  }
  proto
end

def generate_data(val)
  (0...val).each do |n|
    STDOUT.write(gen_redis_proto("SET", "Key#{n}", "Value#{n}"))
  end
end

generate_data(int_check(ARGV[0]))