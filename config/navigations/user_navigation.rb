SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
      # primary.item :my_profile, 'My profile', current_user
    primary.item :about, 'About', about_path
    primary.item :all_users, 'Users', users_path
    primary.item :blog, 'Blog', '#'
    primary.item :username, current_user.name.split(" ")[0].capitalize, '#', icon: 'icon-user' do |sub|
      sub.item :edit_profile, 'Edit profile', edit_user_path(current_user), icon: 'icon-edit'
      sub.item :signout, 'Signout', session_path(current_user.id), method: "delete", icon: 'icon-off'
    end      
    primary.dom_class = 'nav pull-right'      
  end
end
