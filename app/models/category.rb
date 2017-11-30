class Category < ApplicationRecord
  has_many :items

  def self.model_listing(page_no)
    categories = self.paginate(:page => page_no, :per_page => 2)
    category_ids = categories.collect {|c| c.id}
    models = Item.where(:category_id => category_ids)
    map = []
    categories.each{|c|
      map << models.collect{|m| m if m.category_id == c.id}.compact.map(&:attributes)
    }
    map.present? ? map.flatten : map
    byebug
  end

end
