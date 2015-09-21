module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http') ? str : "http://#{str}"
  end
  
  def display_datetime(dt)
    dt.strftime("%m/%d/%y %I:%M%P %Z") #xx/xx/xxxx 10:00AM
  end
end
