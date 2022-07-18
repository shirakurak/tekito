def get_local_and_domain(str)
    str =~ /^([^@]+)@(.*)$/
    localport = $1
    domain = $2
    return [localport, domain]
end

p get_local_and_domain("info@example.com")