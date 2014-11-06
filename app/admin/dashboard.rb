ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       #column do
       #  panel "Recent Posts" do
       #    ul do
       #      Post.recent(5).map do |post|
       #        li link_to(post.title, admin_post_path(post))
       #      end
       #    end
       #  end
       #end

       column do
         panel "News" do
           para "Welcome to Medical System."
         end

         panel "Available Staff" do
           ul do
             li "Joseph Smith"
           end
         end

         panel "Task History" do
           para "You have been on call for the past 77 hours."
         end

         panel "Recent Patients" do
           table_for Patient.order('updated_at DESC') do
             column :id
             column :created_at
             column :updated_at
           end
         end
       end
     end
  end # content
end
