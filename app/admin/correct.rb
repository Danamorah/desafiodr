ActiveAdmin.register Correct do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :word
   
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
    correct.incorrect.collect(&:word).join(",")
  end
end

# form do |f| 
#   f.input :word
#   f.actions
#  end

end
