SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :home, 'Home', root_path
    primary.item :about, 'About', about_path
    primary.item :blog, 'Blog', '#'
    primary.item :faq, 'FAQ', '#'
    primary.dom_class = 'nav pull-right'      
  end
end
