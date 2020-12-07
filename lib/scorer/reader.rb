module Scorer
  class Reader < CSV
    class << self
      def open file, **kwargs
        options = { 
          col_sep: "\t" 
        }.update(kwargs)
        
        super file, options
      end
      
      def read file
        open(file).to_h
      end
    end
    
    def to_h 
      keys = [:name, :pins]
      
      map do |a| 
        Hash[ keys.zip(a) ]
      end
    end
  end
end