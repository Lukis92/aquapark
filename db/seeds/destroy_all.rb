Client.destroy_all
Receptionist.destroy_all
Lifeguard.destroy_all
Trainer.destroy_all
Manager.destroy_all
WorkSchedule.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('people')
ActiveRecord::Base.connection.reset_pk_sequence!('work_schedules')
EntryType.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('entry_types')
News.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('news')
Comment.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('comments')
Like.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('likes')
IndividualTraining.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('individual_trainings')
EntryType.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('entry_types')
BoughtDetail.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('bought_details')
TrainingCost.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('training_costs')
Vacation.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('vacations')
WorkSchedule.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('work_schedules')
Activity.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('activities')
