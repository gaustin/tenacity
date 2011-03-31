class SequelHasOneTarget < Sequel::Model
  include Tenacity

  t_belongs_to :active_record_object
  t_belongs_to :couch_rest_object
  t_belongs_to :data_mapper_object
  t_belongs_to :mongo_mapper_object
  require_mongoid { t_belongs_to :mongoid_object }
  t_belongs_to :sequel_object

  t_belongs_to :active_record_has_one_target_testable, :polymorphic => true
  t_belongs_to :couch_rest_has_one_target_testable, :polymorphic => true
  t_belongs_to :data_mapper_has_one_target_testable, :polymorphic => true
  t_belongs_to :mongo_mapper_has_one_target_testable, :polymorphic => true
  require_mongoid { t_belongs_to :mongoid_has_one_target_testable, :polymorphic => true }
  t_belongs_to :sequel_has_one_target_testable, :polymorphic => true
end
