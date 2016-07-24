class Patient < ApplicationRecord
    def get_full_name
        self.name + " " + self.surname
    end
end
