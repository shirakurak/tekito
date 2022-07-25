module M
    def meth
        "meth"
    end
end

class C
    include M
end

c = C.new
p c.meth

C.include?(M)

p C.ancestors
p C.superclass