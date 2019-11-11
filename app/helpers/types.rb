module Types

  DateCoerce = lambda do |v|
    return v if ::Date === v
    
    ::Date.parse(v)
  end
  
end
