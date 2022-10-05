class GroceryListMailer < ApplicationMailer
  def notify
    mail(to: 'john@example.com', subject: "Grocery List") do |format|
      format.html
      format.text
    end
  end
end
