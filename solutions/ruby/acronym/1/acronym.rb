class Acronym
    def self.abbreviate(str)
        i = 0
        first = true
        res = ""
        while str[i]
            if first == true and str[i] != " " and str[i] != "-" and str[i] !="_"
               res += str[i]
               first = false
            elsif first == false and (str[i] == " " or str[i] == "-")
                first = true
            end
            i += 1
        end
        return res.upcase
    end
end