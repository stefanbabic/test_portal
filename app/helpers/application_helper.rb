module ApplicationHelper

  def mail
    mail_to "babic@deltacity.net", "babic@deltacity.net"
  end

  def full_title(page_title = '')
    base_title = "Test Portal"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

end
