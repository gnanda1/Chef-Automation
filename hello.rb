#Simple recipe to create a text file hello.txt and string written to the file.
file '/home/vagrant/hello.txt' do
 content 'Hello, World!'
end
