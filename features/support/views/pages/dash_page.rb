class DashPage
  include Capybara::DSL

  def on_dash?
    return page.has_css?(".table-title")
  end

  def register
    return find(".register-form")
  end

  def has_no_user?(name)
    return page.has_no_css?(".equipo-list li", text: name)
  end

  def request_removal(name)
    equipo = find(".equipo-list li", text: name)
    equipo.find(".delete-icon").click
  end
end
