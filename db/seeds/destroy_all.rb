
Activity.destroy_all
Client.destroy_all
Receptionist.destroy_all
Lifeguard.destroy_all
Trainer.destroy_all
Manager.destroy_all
WorkSchedule.destroy_all
EntryType.destroy_all
News.destroy_all
Comment.destroy_all
Like.destroy_all
IndividualTraining.destroy_all
EntryType.destroy_all
BoughtDetail.destroy_all
TrainingCost.destroy_all
Vacation.destroy_all
WorkSchedule.destroy_all
ActivitiesPerson.destroy_all
p "Destroyed tables"

ActiveRecord::Base.connection.reset_pk_sequence!('people')
ActiveRecord::Base.connection.reset_pk_sequence!('work_schedules')
ActiveRecord::Base.connection.reset_pk_sequence!('entry_types')
ActiveRecord::Base.connection.reset_pk_sequence!('news')
ActiveRecord::Base.connection.reset_pk_sequence!('comments')
ActiveRecord::Base.connection.reset_pk_sequence!('likes')
ActiveRecord::Base.connection.reset_pk_sequence!('individual_trainings')
ActiveRecord::Base.connection.reset_pk_sequence!('entry_types')
ActiveRecord::Base.connection.reset_pk_sequence!('bought_details')
ActiveRecord::Base.connection.reset_pk_sequence!('training_costs')
ActiveRecord::Base.connection.reset_pk_sequence!('vacations')
ActiveRecord::Base.connection.reset_pk_sequence!('work_schedules')
ActiveRecord::Base.connection.reset_pk_sequence!('activities')
ActiveRecord::Base.connection.reset_pk_sequence!('activities_people')
p "Reseted PK sequences"
