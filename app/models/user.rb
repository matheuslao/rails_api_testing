class User < ApplicationRecord
  require "securerandom"

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :login, presence: true, uniqueness: true
  #validates :password, presence: true

  enum tipo: { root: 'root', professor: 'professor', aluno: 'aluno'}


end
