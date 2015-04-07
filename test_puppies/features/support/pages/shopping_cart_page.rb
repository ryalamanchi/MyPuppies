class ShoppingCartPage
  include PageObject

  NAME_COLUMN = 1
  SUBTOTAL_COLUMN = 3
  LINES_PER_PUPPY = 6

  # def initialize(browser)
  #   @browser = browser
  # end

  button(:proceed_to_checkout, :value => "Complete the Adoption")
  button(:continue_shopping, :value => "Adopt Another Puppy")
  table(:cart, :index => 0)
  cell(:cart_total, :class => "total_cell")

  button(:adopt_me, :value => "Adopt Me!")


  def cart_total
    @browser.td(:class, "total_cell").text
  end

  def name_for_line_item(line_item)

    # @browser.table(:index => 0)[row_for(line_item.to_i)][NAME_COLUMN].text
  end

  def subtotal_for_line_item(line_item)
    @browser.table(:index => 0)[row_for(line_item.to_i)][SUBTOTAL_COLUMN].text
  end

  # def continue_shopping
  #   @browser.button(:value, 'Adopt Another Puppy').click
  # end

# private

  def row_for(line_item)
    (line_item.to_i - 1) * LINES_PER_PUPPY
  end
end