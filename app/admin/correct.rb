ActiveAdmin.register Correct do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :word, incorrects_attributes: [:word, :level, :correct_id]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

 index do
   column :id
   column :word
   column :incorrect do |correct|
    correct.incorrects.collect(&:word).join(",")
    end
    actions
  end

 form do |f|
  f.inputs 'Correct' do
    f.input :word
  end

  f.has_many :incorrects do |incorrect|
    incorrect.input :word
    incorrect.input :level
  end

  f.actions
 end
end
