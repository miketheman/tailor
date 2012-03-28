Feature: Vertical spacing
  As a Ruby developer
  I want to check my Ruby files for vertical spacing

  @bad_files
  Scenario: Detect lack of newlines
    Given a file named "not_enough_newlines.rb" with:
    """
      def a_method
        puts 'hi'
      end
      """
    When I run `tailor -d .`
    Then the output should match /Total Problems.*1/
    And the output should contain "0 trailing newlines, but should have 1"

  @bad_files
  Scenario: Detect too many newlines
    Given a file named "too_many_newlines.rb" with:
    """
      def a_method
        puts 'hi'
      end


      """
    When I run `tailor -d .`
    Then the output should match /Total Problems.*1/
    And the output should contain "2 trailing newlines, but should have 1"

  @good_files
  Scenario: Doesn't report problem when meeting criteria
    Given a file named "good_file.rb" with:
    """
      def a_method
        puts 'hi'
      end

      """
    When I run `tailor -d .`
    Then the output should match /Total Problems.*0/

  @good_files @class_length

  @multi_line

  Scenario Outline: Classes/modules with <= configured lines
    Given <File> exists without a newline at the end
    And my configuration file "testfile.yml" looks like:
    """
    ---
    :style:
      :vertical_spacing:
        :trailing_newlines: 0
        :max_code_lines_in_class: 5
      :horizontal_spacing:
        :allow_trailing_spaces: false
        :braces:
          :spaces_before_left: 1
          :spaces_after_left: 1
          :spaces_before_right: 1
          :spaces_when_empty: 0
        :brackets:
          :spaces_after_left: 0
          :spaces_before_right: 0
        :parentheses:
          :spaces_after_left: 0
          :spaces_before_right: 0
    """
    When I run `tailor --debug --config testfile.yml <File>`
    Then the output should match /Total Problems.*0/
    And the exit status should be 0

  Scenarios:
    | File                                        |
    | v_spacing/ok/class_five_code_lines          |
    | v_spacing/ok/embedded_class_five_code_lines |

  @bad_files @class_length

  @multi_line

  Scenario Outline: Lines with bad spacing around parens
    Given <File> exists without a newline at the end
    And my configuration file "testfile.yml" looks like:
    """
    ---
    :style:
      :vertical_spacing:
        :trailing_newlines: 0
        :max_code_lines_in_class: 5
      :horizontal_spacing:
        :allow_trailing_spaces: false
        :braces:
          :spaces_before_left: 1
          :spaces_after_left: 1
          :spaces_before_right: 1
          :spaces_when_empty: 0
        :brackets:
          :spaces_after_left: 0
          :spaces_before_right: 0
        :parentheses:
          :spaces_after_left: 0
          :spaces_before_right: 0
    """
    When I run `tailor --debug --config testfile.yml <File>`
    Then the output should match /Total Problems.*<Problems>/
    And the output should match /position:  <Position>/
    And the output should match /position:  <Position 2>/
    And the exit status should be 1

  Scenarios:
    | File                              | Position | Position 2 | Problems |
    | v_spacing/1/class_too_long        | 1:0      |            | 1        |
    | v_spacing/1/parent_class_too_long | 1:0      |            | 1        |
    