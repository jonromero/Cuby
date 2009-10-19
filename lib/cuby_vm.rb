# These are all the functions needed for Cuby
# Pretty cool eh?
# Jon Vlachoyiannis (jon@emotionull.com)
# (16/10/2009)
    
def include(filename)
  require filename
end

def main(&block)
  instance_eval(&block)
end

def method_missing(meth, *args, &block)
  self.class.send(:define_method, meth, *args, &block)
end

def preformat_data(data)
  data.gsub(/^\s*\/\//,'#')
end

#FIXME Interactive mode does not work with loop defined
# def loop(start, cond, action, &block)
#   return
# end
