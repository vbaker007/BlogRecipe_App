guard :minitest, spring: true, all_on_start: false do
# with Minitest::Unit
watch(%r{^test/(.*)\/?test_(.*)\.rb$})
watch(%r{^lib/(.*/)?([^/]+)\.rb$}) { |m| "test/#{m[1]}test_#{m[2]}.rb" }
watch(%r{^test/test_helper\.rb$}) {'test'}
watch('config/routes.rb') {'test'}
watch(%r{^app/models/(.*?)\.rb$}) do |matches|
"test/models/#{matches[1]}_test.rb"
end
watch('app/views/layouts/application.html.erb') do
'test/integration/site_layout_test.rb'
end
watch(%r{^app/views/([^/]*?)/.*\.html\erb}) do |matches|
["test/controllers/#{matches[1]}_controller_test.rb"]
end