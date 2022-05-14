class Contact < ApplicationRecord

  belongs_to :kind
  def author
    "Rodrigo Almeida"
  end

  def as_json(options={})
    super(methods: :author, root: true)
  end
end
