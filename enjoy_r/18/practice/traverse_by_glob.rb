def traverse(path)
    Dir.glob(["#{path}/**/*", "#{path}/**/*"]) do |name|
        unless File.directory?(name)
            prcess_file(name)
        end
    end
end

def process_file(path)
    puts path
end