INDENT_OK = {}

INDENT_OK[:class] = 
%Q{class MyClass
end}

INDENT_OK[:one_line_class] =
%Q{class MyClass; end}

INDENT_OK[:class_empty] =
%Q{class MyClass

end}

INDENT_OK[:class_singlestatement] =
%Q{class MyClass
  include Stuff
end}

INDENT_OK[:assignment_addition_multistatement] =
%Q{thing = 1 +
  2 + 3 + 4 +
  5}

INDENT_OK[:assignment_hash_multistatement] =
%Q{thing = {
  :one => 'one',
  two: 'two'
}}

INDENT_OK[:assignment_array_multistatement] =
%Q{thing = [
  :one,
  :two
]}

INDENT_OK[:assignment_paren_multistatement] =
  %Q{eval('puts',
  binding,
  'my_file.rb',
  5}

INDENT_OK[:assignment_twolevel_hash_multistatement] =
%Q{thing = {
  :one => {
    :a => 'a',
    b: => 'b'
  },
  two: {
    x: 'x',
    :y => 'y'
  }
}}

INDENT_OK[:assignment_twolevel_array_multistatement] =
%Q{thing = [
  [:one],
  [
    :two,
    :three
  ]
]}

INDENT_OK[:assignment_twolevel_paren_multistatement] =
%Q{result = Integer(
  String.new(
    "1"
  ).to_i,
  16
)}

INDENT_OK[:method_call_multistatement] =
%Q{my_method_with_many_params(one, two,
  three,
  four,
  five)}

INDENT_OK[:method_call_multistatement_lonely_paren] =
  %Q{my_method_with_many_params(one, two,
  three,
  four,
  five
)}

INDENT_OK[:def] =
%Q{def a_method
end}

INDENT_OK[:def_empty] =
%Q{def a_method

end}

INDENT_OK[:nested_def] =
%Q{def first_method
  def second_method
    puts "hi"
  end
end}

INDENT_OK[:nested_class] =
%Q{class MyClass
  class AnotherClass
  end
end}

INDENT_OK[:require_class_singlestatement] =
%Q{require 'time'

class MyClass
  include Stuff
end}

INDENT_OK[:require_class_singlestatement_def] =
%Q{require 'time'

class MyClass
  include Stuff

  def a_method
  end
end}

INDENT_OK[:require_class_singlestatement_def_content] =
%Q{require 'time'

class MyClass
  include Stuff

  def a_method
    puts "hello"
  end
end}

INDENT_OK[:if_modifier] =
%Q{puts "hi" if nil.nil?}

INDENT_OK[:def_return_if_modifier] =
%Q{def a_method
  return @something if @something
end}

INDENT_OK[:unless_modifier] =
%Q{puts "hi" unless nil.nil?}

INDENT_OK[:def_return_unless_modifier] =
%Q{def a_method
  return @something unless @something
end}

INDENT_OK[:case_whens_level] =
  %Q{def my_method
  case true
  when true
    puts "stuff"
  when false
    puts "blah blah"
  end
end}

INDENT_OK[:case_strings_in_strings] =
  %Q{case type
when :output
  "I like to \#{eval('puts')}, but should be \#{eval('print')}"
when :input
  "Gimme \#{eval('gets')}!"
end}

INDENT_OK[:case_whens_in] =
  %Q{def my_method
  case true
    when true
      puts "stuff"
    when false
      puts "blah blah"
  end
end}

INDENT_OK[:while_do_loop] =
  %Q{while true do
  puts "something"
end}

INDENT_OK[:while_do_loop2] =
  %Q{i = 0;
num = 5;

while i < num do
  puts("Inside the loop i = \#{i}" );
  i +=1;
end}

INDENT_OK[:until_do_loop] =
  %Q{until true do
  puts "something"
end}

INDENT_OK[:until_do_loop2] =
  %Q{i = 0;
num = 5;

until i > num  do
  puts("Inside the loop i = \#{i}" );
  i +=1;
end}

INDENT_OK[:for_do_loop] =
  %Q{for i in 1..100 do
  puts i
end}

INDENT_OK[:loop_do_loop] =
  %Q{loop do
  puts 'looping'
end}

INDENT_OK[:while_as_modifier_loop] =
  %Q{i = 0;
num = 5;
begin
  puts("Inside the loop i = \#{i}" );
  i +=1;
end while i < num}

INDENT_OK[:until_as_modifier_loop] =
  %Q{i = 0;
num = 5;
begin
  puts("Inside the loop i = \#{i}" );
  i +=1;
end until i > num}

INDENT_OK[:for_with_break_loop] =
  %Q{for i in 0..5
  if i > 2 then
    break
  end
  puts "Value of local variable is \#{i}"
end}

INDENT_OK[:for_with_next_loop] =
  %Q{for i in 0..5
  if i < 2 then
    next
  end
  puts "Value of local variable is \#{i}"
end}

INDENT_OK[:for_with_redo_loop] =
  %Q{for i in 0..5
  if i < 2 then
    puts "Value of local variable is \#{i}"
    redo
  end
end}

INDENT_OK[:for_with_retry_loop] =
  %Q{for i in 1..5
  retry if  i > 2
  puts "Value of local variable is \#{i}"
end}

INDENT_OK[:loop_with_braces] =
  %Q{loop {
  puts 'stuff'
}}

#----------- Braces ----------#
INDENT_OK[:single_line_braces] =
  %Q{{ one: 1, two: 2 }}

INDENT_OK[:single_line_braces_as_t_string] =
  %Q{%Q{this is a t string!}}

INDENT_OK[:multi_line_braces] =
  %Q{{ one: 1,
  two: 2 }}

INDENT_OK[:multi_line_braces_as_t_string] =
  %Q{%Q{this is a t string!
suckaaaaaa!}}

INDENT_OK[:multi_line_lonely_braces] =
  %Q{{
  :one => 'one', :two => 'two',
  :three => 'three'
}}

INDENT_OK[:multi_line_lonely_braces_as_t_string] =
  %Q{%Q{
this is a t string!
suckaaaaaa!
}}

INDENT_OK[:multi_line_braces_embedded_arrays] =
  %Q{{
  :one => ['one', 17, {}], :two => ['two'],
  :three => 'three'
}}

#----------- Brackets ----------#
INDENT_OK[:single_line_brackets] =
  %Q{['one', 'two', 'three']}

INDENT_OK[:single_line_brackets_as_t_string] =
  %Q{%Q[this is a t string!]}

INDENT_OK[:multi_line_brackets] =
  %Q{['one',
  'two',
  'three']}

INDENT_OK[:multi_line_brackets_as_t_string] =
  %Q{%Q[this is a t string!
                                it doesn't matter that this is way over here.
suckaaaaaa!]}

INDENT_OK[:multi_line_lonely_brackets] =
  %Q{[
  'one',
  'two',
  'three'
]}

INDENT_OK[:multi_line_lonely_brackets_as_t_string] =
  %Q{%Q[
this is a t string!
                                it doesn't matter that this is way over here.
suckaaaaaa!
]}

INDENT_OK[:multi_line_brackets_embedded_hashes] =
  %Q{summary_table.rows << [{ value: "File", align: :center },
  { value: "Total Problems", align: :center }]}

#----------- Parens ----------#

INDENT_OK[:single_line_parens] =
  %Q{(true || false)}

INDENT_OK[:single_line_parens_as_t_string] =
  %Q{%Q(this is a t string!)}

INDENT_OK[:multi_line_parens] =
  %Q{my_method(first_argument, second_arg,
  third_arg)}

INDENT_OK[:multi_line_parens_as_t_string] =
  %Q{%Q(this is a t string!
and i'm not going
anywhere!')}

INDENT_OK[:multi_line_lonely_parens] =
  %Q{my_method(
  first_argument, second_arg,
  third_arg
)}

INDENT_OK[:multi_line_lonely_parens_as_t_string] =
  %Q{%Q(
this is a t string!
and i'm not going
anywhere!'
)}

INDENT_OK[:multi_line_andop_in_method] =
  %Q{def end_of_multiline_string?(lexed_line_output)
  lexed_line_output.any? { |e| e[1] == :on_tstring_end } &&
    lexed_line_output.none? { |e| e[1] == :on_tstring_beg }
end}

INDENT_OK[:multi_line_rshift_in_method] =
  %Q{rule(:transport_specifier) do
  match('[A-Za-z]').repeat(3).as(:streaming_protocol) >> forward_slash >>
    match('[A-Za-z]').repeat(3).as(:profile) >>
    (forward_slash >> match('[A-Za-z]').repeat(3).as(:transport_protocol)).maybe
end

rule(:interleaved) do
  str('interleaved=') >> number.as(:rtp_channel) >> dash >>
    number.as(:rtcp_channel)
end

rule(:ttl) do
  str('ttl=') >> match('[\d]').repeat(1,3).as(:ttl)
end}

INDENT_OK[:multi_line_method_call] =
  %Q{def initialize(raw_response)
  if raw_response.nil? || raw_response.empty?
    raise RTSP::Error,
      "#{self.class} received nil string--this shouldn't happen."
  end

  @raw_response = raw_response

  head, body = split_head_and_body_from @raw_response
  parse_head(head)
  @body = parse_body(body)
end
}

INDENT_OK[:multi_line_if_logical_and] =
  %Q{if @indentation_ruler.op_statement_nesting.empty? &&
  @indentation_ruler.tstring_nesting.empty? &&
  @indentation_ruler.paren_nesting.empty? &&
  @indentation_ruler.brace_nesting.empty? &&
  @indentation_ruler.bracket_nesting.empty?
  if current_line.line_ends_with_comma?
    if @indentation_ruler.last_comma_statement_line.nil?
      @indentation_ruler.increase_next_line
    end

    @indentation_ruler.last_comma_statement_line = lineno
    log "last_comma_statement_line: \#{@indentation_ruler.last_comma_statement_line}"
  end
end}

#-------------------------------------------------------------------------------
# INDENT_1 (1 problem)
#-------------------------------------------------------------------------------
INDENT_1 = {}

INDENT_1[:class_indented_end] =
%Q{class MyClass
 end}

INDENT_1[:class_indented_singlestatement] =
%Q{class MyClass
   include Something
end}

INDENT_1[:class_outdented_singlestatement] =
%Q{class MyClass
 include Something
end}

INDENT_1[:def_indented_end] =
%Q{def a
 end}

INDENT_1[:def_content_indented_end] =
%Q{def a
  puts "stuff"
 end}

INDENT_1[:class_def_content_outdented_end] =
%Q{class A
  def a
    puts "stuff"
 end
end}

INDENT_1[:class_def_outdented_content] =
%Q{class A
  def a
   puts "stuff"
  end
end}

INDENT_1[:class_method_def_using_self_outdented] =
%Q{class A
 self.my_method
    puts 'stuff'
  end
end}

INDENT_1[:case_indented_whens_level] =
%Q{def my_method
   case true
  when true
    puts "stuff"
  when false
    puts "blah blah"
  end
end}

INDENT_1[:case_outdented_whens_level] =
%Q{def my_method
 case true
  when true
    puts "stuff"
  when false
    puts "blah blah"
  end
end}

INDENT_1[:case_when_indented_whens_level] =
  %Q{def my_method
  case true
   when true
    puts "stuff"
  when false
    puts "blah blah"
  end
end}

INDENT_1[:case_when_outdented_whens_level] =
  %Q{def my_method
  case true
 when true
    puts "stuff"
  when false
    puts "blah blah"
  end
end}

INDENT_1[:case_indented_whens_in] =
  %Q{def my_method
   case true
    when true
      puts "stuff"
    when false
      puts "blah blah"
  end
end}

INDENT_1[:while_do_indented] =
  %Q{ while true do
  puts "something"
end}

INDENT_1[:while_do_outdented] =
  %Q{def my_method
 while true do
    puts "something"
  end
end}

INDENT_1[:while_do_content_outdented] =
  %Q{def my_method
  while true do
   puts "something"
  end
end}

INDENT_1[:while_do_content_indented] =
  %Q{def my_method
  while true do
     puts "something"
  end
end}

INDENT_1[:while_do_indented2] =
  %Q{i = 0;
num = 5;

 while i < num do
  puts("Inside the loop i = \#{i}" );
  i +=1;
end}

INDENT_1[:until_do_indented] =
  %Q{i = 0;
num = 5;

 until i > num  do
  puts("Inside the loop i = \#{i}" );
  i +=1;
end}

INDENT_1[:for_do_indented] =
  %Q{ for i in 1..100 do
  puts i
end}

INDENT_1[:loop_do_indented] =
  %Q{ loop do
  puts 'looping'
end}

INDENT_1[:multi_line_string_first_line_indented] =
  %Q{def a_method
   if defined? Term::ANSIColor
    message << %Q{#  \#{(i + 1).to_s.bold}.
#    * position:  \#{position}
#    * type:      \#{problem[:type].to_s.red}
#    * message:   \#{problem[:message].red}
}
  else
    message << %Q{#  \#{(i + 1)}.
#    * position:  \#{position}
#    * type:      \#{problem[:type]}
#    * message:   \#{problem[:message]}
}
  end
end}

INDENT_1[:multi_line_andop_first_line_indented] =
  %Q{def end_of_multiline_string?(lexed_line_output)
   lexed_line_output.any? { |e| e[1] == :on_tstring_end } &&
    lexed_line_output.none? { |e| e[1] == :on_tstring_beg }
end}

INDENT_1[:multi_line_andop_second_line_indented] =
  %Q{def end_of_multiline_string?(lexed_line_output)
  lexed_line_output.any? { |e| e[1] == :on_tstring_end } &&
     lexed_line_output.none? { |e| e[1] == :on_tstring_beg }
end}
