class HighScores
    def initialize(scores)
        @scores = scores
    end
    def scores
        @scores
    end
    def latest
        @scores.last
    end
    def personal_best
        high = 0
        @scores.each { |n|
            if high < n
                high = n
            end
        }
        return high
    end
    def personal_top_three
        @scores.max(3)
    end
    def latest_is_personal_best?
        return (self.latest == self.personal_best)
    end
end