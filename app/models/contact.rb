class Contact < ApplicationRecord

  #Associations
  belongs_to :kind, optional: true
  has_many :phones

  def as_json(options={})
    hash = super(options)
    hash[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    hash
  end

  # def to_br
  #   {
  #     name: self.name,
  #     email: self.email,
  #     birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?),
  #     phone: self.phones
  #   }
  # end

  # def author
  #   "Rodrigo Almeida"
  # end
  #
  # def kind_description
  #   self.kind.description
  # end
  #
  # def as_json(options={})
  #   super(
  #     root: true,
  #     methods: [:kind_description, :author],
  #     include: {kind: {only: :description}}
  #     )
  # end
end
