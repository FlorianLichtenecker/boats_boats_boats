module ApplicationHelper
  def render_stars(rating)
    return unless rating.present? # Skip rendering if rating is nil or blank

    content_tag(:span, class: 'stars') do
      rating.times do
        concat content_tag(:i, '', class: 'fas fa-star')
      end
    end
  end

end
