require "test_helper"

class GroceryListMailerTest < ActionMailer::TestCase
  test "correctly renders both HTML and text views" do
    mail = GroceryListMailer.notify

    assert_includes mail.html_part.body.to_s, "This is your grocery list"
    assert_includes mail.text_part.body.to_s, "This is your grocery list"

    assert_includes mail.html_part.body.to_s, "<li><a href=\"https://example.com/milk\">milk</a></li>"
    assert_includes mail.text_part.body.to_s, "3. [milk](https://example.com/milk)"
  end
end
