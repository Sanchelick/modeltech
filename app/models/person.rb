class Person < ApplicationRecord
  validates :name, presence: true
  # валидация на нажатие
  # validates :field_name, acceptance: {message: 'must be abided', accept: 'TRUE', 'accepted'}

  # validates :field_name, confirmation: {case_sensitive: false} --> валидация на одинаковое поле

  # validates :field_name, comparison: {option: other_field_name} --> сравнение значений
  # options: greather_than, greather_than_or_equal_to, equal_to, less_than, less_than_or_equal_to, other_than

  # validates :field_name, format: {with: /regex/} --> проврерка на соответствие регулярке

  # validates :field_name, inclusion {in: %w(values)} --> проверка на соответствие значениям

  # validates :field_name, exclusion {in %w(values)} --> проверка на несоответсвтвие

  # validates :field_name, length {maximum/minimum/in/is: value} --> проверка на длину
  # message types: :wrond_length, :too_short, :too_long

  # validates :field_name, numericality {only_integer: true} --> валидация на числа
  # options: greather_than, greather_than_or_equal_to, equal_to, less_than, less_than_or_equal_to, other_than
  # in, odd, even

  # validates :field_name, absence: true --> валидация на отсутствие

  # валидация на уникльность значения
  # validates :field_name, uniqueness: {scope: other_field_name, case_sensitive: false, conditions: -> {where(...)}}

  # validates_associated :table_name --> проверка связей на валидность

  # validates_each :field_name, :other_field_name do |record, attr, value|
  #   record.errors.add(attr, :message) if ...
  # end --> добавление валидации сразу нескольким полям

  # validates_with ValidatorClass, options: [...] --> передать запись в отдельный класс валидации

  # validates :field_name, validation: ..., allow_nil: true --> пропуск валидации, если поле nil

  # validates :field_name, validation: ..., allow_blank: true --> пропуск валидвации, если поле пустое

  # message принимает Proc
  # validates :field_name, validation: {message: -> (object, data) do
  #   "Test message with #{object.name} and #{data[:value, :attribute, :model]}"}
  # end

  # validates, :field_name, validation: {on: :create/:update} --> определение контекста валидации

  # validates, :field_name, validation: {strict: true} --> вызывает ActiveModel::StrictValidationFailed
  #                                     {strict: Exeption} --> вызывает собственное исключение

  # validates, :field_name, validation: ... , if: condition --> условие валидации

  # validates, :password, validation: ... ,
  #   unless: Proc.new {|a| a.password.empty?} --> использование Proc в условиях

  # validates, :password, confirmation: true , unless: -> {password.blank?} --> использование лямбд в условиях

  # with_options ... do |field|
  #   field.validate ...
  #   field.validate ...
  # end

  # def expiration_date_cant_be_past
  #   if expiration_date.present? && expiration_date < Date.today
  #     errors.add(:expiration_date, 'can not be in the past')
  #   end
  # end
  # validates, :expiration_date_cant_be_past --> применение собственных методов
end
