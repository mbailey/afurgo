module ApplicationHelper

  def hisher(person)
    return unless person.respond_to?(:sex)
    case person.sex
    when 'm' then 'his'
    when 'f' then 'her'
    end
  end

  def title(page_title)
    content_for(:title, page_title.to_s)
  end

end
