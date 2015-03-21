ActiveAdmin.register Talk do
  permit_params :title, :description, :speakers

  form do |f|
    f.inputs "Talk Details" do
      f.input :title
      f.input :description
    end
    f.inputs do
    	f.has_many :speakers, heading: 'Speaker', allow_destroy: true, new_record: false do |a|
        	a.input :name
        end
    end
    f.actions
  end

end
