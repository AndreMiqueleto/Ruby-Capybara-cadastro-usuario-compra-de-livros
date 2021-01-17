class Error
  include Capybara::DSL

  def error_msg
    return find(".error").text
  end
end
