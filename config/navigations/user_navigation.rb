SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :home, 'Home', root_path
    primary.item :about, 'About', about_path
    primary.item :all_users, 'Users', users_path
    primary.item :blog, 'Blog', '#'
    primary.item :username, current_user.name.split(" ")[0].capitalize, '#', icon: 'icon-user' do |sub|
      sub.item :edit_profile, 'Edit profile', edit_user_path(current_user), icon: 'icon-edit'
      sub.item :signout, 'Signout', signout_path, method: "delete", icon: 'icon-off'
    end      
    primary.dom_class = 'nav navbar fixed top pull-right'      
  end
end
