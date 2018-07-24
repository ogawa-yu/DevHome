class Spam
    def method_missing(name, *args, &block)
        p name
        p args
    end
end

spam = Spam.new()
spam.ghost_reverse('spam')
spam.foo()
