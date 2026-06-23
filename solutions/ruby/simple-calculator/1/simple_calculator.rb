class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < RuntimeError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if not ALLOWED_OPERATIONS.any? { |element| element == operation }
        raise(UnsupportedOperation)
    elsif operation == "/" and second_operand == 0
        return "Division by zero is not allowed."
    end
    begin
        case operation
        when "+"
          res = first_operand + second_operand
        when "*"
          res = first_operand * second_operand
        when "/"
          res = first_operand / second_operand
        end
        return "#{first_operand} #{operation} #{second_operand} = #{res}"
    rescue => e
        if e.class.name == "TypeError"
            raise ArgumentError.new("Invalid argument")
        end
    end
  end
end
