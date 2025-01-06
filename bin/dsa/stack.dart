class Stack<T>{
  List<T> elements =[];

  push(T data){
    elements.add(data);
  }
  pop(){
    if(elements.isNotEmpty){
      elements.removeLast();
    }else{
      print("Elements Empty");
    }
  }
  peek(){
   if(elements.isNotEmpty){
     return elements.last;
   }else{
     return null;
   }
  }
  display(){
    if(elements.isNotEmpty){
      elements.forEach(print);
    }
  }
}

void main(){
  Stack stack = Stack<int>();
  stack.push(10);
  stack.push(11);
  stack.push(12);
  stack.push(13);
  stack.push(14);
  stack.display();
  print("\n");
  stack.pop();
  stack.display();
  print("\n");
  print(stack.peek());
}