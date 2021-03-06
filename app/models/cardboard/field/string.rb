module Cardboard
  class Field::String < Field
    validate :is_required
    before_validation :truncate_long_string # validates :value, :length => { :maximum => 255 }

    def default
      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur"
    end

    private

    def truncate_long_string
      self.value = self.value[0..254] if value
    end
  end
end