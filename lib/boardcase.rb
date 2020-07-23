class BoardCase
  attr_accessor :position, :content #(position des symboles / contenu)

  def initialize(position, content)
    @position = position
    @content = content
  end
end
