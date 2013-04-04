class CatRentalRequest < ActiveRecord::Base
  attr_accessible :approved, :cat_id, :rental_end, :rental_start
  belongs_to :cat
  validate :rental_dates_not_overlap

  def rental_dates_not_overlap
     unless CatRentalRequest.where("approved = 't' AND
                            cat_id = ? AND
                            (rental_start >= ? OR
                            rental_end <= ?)",
                            self.cat_id,
                            self.rental_end, self.rental_start).empty?

          errors[:rental_end] << "Someone has this cat."
     end
  end
end

