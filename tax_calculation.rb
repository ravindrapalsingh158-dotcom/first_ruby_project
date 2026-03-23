  tax=0
  if item.exempted
    tax += item.price * 0
  else
    tax += item.price * 0.1
  end
  if item.imported 
    tax += item.price * 0.05
  end
  
    
