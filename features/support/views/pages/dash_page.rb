class DashPage
  include Capybara::DSL

  def msg
    within_window @janela do
      within(".modal-content") do
        return find(".modal-header").text
        #return page.has_css?(".modal-header")

      end
    end
  end
end
