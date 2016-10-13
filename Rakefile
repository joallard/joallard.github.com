BASEDIR = File.dirname(File.expand_path('.', __FILE__))

desc "Convert HAML to HTML"
task :haml do
  print "Converting Haml files..."

  system "haml _index.haml index.html"
  system(%{
    cd _layouts/haml &&
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })

  print "\e[32m"
  print "done."
  print "\e[0m"
  puts
end
