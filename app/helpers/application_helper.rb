module ApplicationHelper
  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Producao"
    elsif Rails.env.test?
      "teste"
    end
  end

end
