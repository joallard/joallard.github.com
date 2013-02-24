desc "Parse haml layouts"
task :parse_haml do
  print "Parsing Haml layouts..."
  system(%{
    cd _layouts/haml && 
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  puts "done."
end

desc "Parse HAML and SCSS"
task :prepare do
  print "Preparing stuff for Github wuss... "
  system(%{
    haml _index.haml index.html;
    sass --scss stylesheets/_style.scss stylesheets/style.css
  })
  puts "Done."
end

