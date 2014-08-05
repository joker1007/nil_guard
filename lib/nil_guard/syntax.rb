module NilGuard::Syntax
  refine Object do
    def |
      NilGuard::Guardable.new(self)
    end
  end

  refine Fixnum do
    def |
      NilGuard::Guardable.new(self)
    end
  end

  refine Bignum do
    def |
      NilGuard::Guardable.new(self)
    end
  end

  refine Array do
    def |
      NilGuard::Guardable.new(self)
    end
  end

  refine NilClass do
    def |
      NilGuard::Guardable.new(self)
    end
  end
end
