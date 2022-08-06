class Dev < ActiveRecord::Base

    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.find_by_item_name(item_name) ? true : false
    end

    def give_away(dev, freebie)
        if self.received_one?(freebie.item_name)
            freebie.dev = dev
            freebie.save
            "Nice guy! You just gave #{dev.name} your #{freebie.item_name}"
        else
            "#{self.name} does not have a #{freebie.item_name} to give it away!"
        end
    end

end
