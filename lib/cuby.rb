#!/usr/bin/env ruby 

# This is a pseudo interpreter for the
# Cuby Language (under GPL 3.0)
# Jon Vlachoyiannis (jon@emotionull.com)
# (16/10/2009)


# == Usage 
#   cuby source_file

require 'optparse'
require 'rdoc/usage'
require 'ostruct'
require 'date'
require 'cuby/vm'

class Cuby
  VERSION = File.read(File.dirname(File.dirname(__FILE__)) + "/VERSION")
  
  attr_reader :options

  def initialize(arguments, stdin)
    @arguments = arguments
    @stdin = stdin
    
    # Set defaults
    @options = OpenStruct.new
  end

  # Parse options, check arguments, then process the command
  def run
    
    if parsed_options? && arguments_valid?
      
      puts "Start at #{DateTime.now}\n\n" if @options.verbose
      
      process_arguments
      process_command
      
      puts "\nFinished at #{DateTime.now}" if @options.verbose
      
    else
      output_usage
    end
    
  end
  
  protected
  
  def parsed_options?
    
    # Specify options
    opts = OptionParser.new 
    opts.on('-v', '--version')    { output_version ; exit 0 }
    opts.on('-h', '--help')       { output_help }
    
    opts.parse!(@arguments) rescue return false
    
    process_options
    true
  end
  
  # Performs post-parse processing on options
  def process_options
    @options.verbose = false if @options.quiet
  end
  
  def output_options
    puts "Options:\n"
    
    @options.marshal_dump.each do |name, val|
      puts "  #{name} = #{val}"
    end
  end
  
  # True if required arguments were provided
  def arguments_valid?
    true if @arguments.length == 1 
  end
  
  # Setup the arguments
  def process_arguments
  end
  
  def output_help
    output_version
    RDoc::usage() #exits app
  end
  
  def output_usage
    RDoc::usage('usage') # gets usage from comments above
  end
  
  def output_version
    puts "#{File.basename(__FILE__)} version #{VERSION}"
  end
  
  def process_command
    # Open file, read it and eval it
    data = ''
    f = File.open(@arguments[0], "r")
    f.each_line do |line|
      data += preformat_data(line)
    end
    eval(data)
  end
  
  def process_standard_input
    input = @stdin.read
  end
  
end

