class EmailParser

  attr_accessor :emails

  def  initialize(emails)
    @emails = emails
  end

  def parse
    email_array = @emails.split(/[, ]/).uniq
    email_array.reject! {|element| element.empty?}
    email_array
  end

end
