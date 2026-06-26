class ResistorColorDuo
    
    @colors = {
        "black": 0,
        "brown": 1,
        "red": 2,
        "orange": 3,
        "yellow": 4,
        "green": 5,
        "blue": 6,
        "violet": 7,
        "grey": 8,
        "white": 9
    }
    
    def self.value(selections)
        code = 0
        @colors.each { |k, v|
            if "#{k}" == selections[0] and selections[0] == selections[1]
                return code = (v.to_i * 10) + v.to_i
            elsif "#{k}" == selections[0]
                code += v.to_i * 10
            elsif "#{k}" == selections[1]
                code += v.to_i
            end
        }
        return(code)
    end
end