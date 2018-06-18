require 'ruby-enum'

# Classe Status
class Status
  include Ruby::Enum
  define :INVALID_WORD, 1
  define :LOSE_TURN, 2
  define :KEEP_TURN, 3
  define :WIN, 4
  define :OVER, 5
end
