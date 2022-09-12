class User < ApplicationRecord
  require "securerandom"

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :login, presence: true, uniqueness: true
  #validates :password, presence: true

  enum tipo: { root: 'root', professor: 'professor', aluno: 'aluno'}

  before_create do
    self.tipo = 'aluno' if tipo.null?
  end


end
