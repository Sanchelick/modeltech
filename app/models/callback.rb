class Callback < ApplicationRecord
	# after_create -> {puts "Molodec!"} --> создание колбэка

	# before_create -> (user) {user.name = user.login if user.name.blank?} --> до создания

	#before_validation --> до валидации
	#after_validation --> после валидации

	#before_save --> до сохоанения
	#after_save --> после сохранения
	#around_save --> во время сохранения

	#around_create --> во время создания

	#after_commit --> после коммита :)
	#after_rollback --> после отката

	#before_update --> до обновления
	#after_update --> после обновления
	#around_update --> во время обновления

	#before_destroy --> до уничтожения
	#after_destroy --> после уничтожения
	#around_destroy --> во время уничтожения

	#ater_initialize --> после объявления объекта ActiveRecord

	#after_find --> после загрузки из базы данных

	#after_touch --> после вызова touch на объекте

	#class ColbackClass
	#  def self.after_create(record)
	#  ...
	#  end
	#end
	# after_create ColbackClass --> перенос колбеков в отдельный класс
end
