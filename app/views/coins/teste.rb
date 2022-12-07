
def times_two
  yield
end

times_two {puts "ola"; puts "teste"}