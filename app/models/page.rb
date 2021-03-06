class Page < ApplicationRecord
  attribute :name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true


  def headers
    {
      :subject => "Contact Form",
      :to => "lidya94gher@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
