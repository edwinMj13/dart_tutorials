void main(){
  List<int> listVal = [2,4,3,5,6,4,8];
  int targetValue=11;
  findIndex(listVal,targetValue);
}
 findIndex(List<int> values,int targetValue){
  //List<int> indexes = [];
  for(int i=0;i<values.length;i++){
    for(int j=i+1;j<values.length;j++){
      //print("check$i,$j");
      if(values[i]+values[j]==targetValue){
        print("$i,$j");
      }
    }
  }
  //return [];
}