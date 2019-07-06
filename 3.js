var input = window.prompt("input");
var a = parseInt(input);

console.log("operasi(" + a + ")");

operasi(a);

function first(num){
    var x = 0;
     
    while(num != 1){
      
      if(num % 2 == 0){
        num = (num / 2); 
        }else{
          num = (num * 3) + 1;
        } 
        x++;
      } 
      return x;
    }


function operasi(b){
  
  max = first(1);
  numbers = 0;
  
  for(i=1; i<=b; i++){
    if(first(i) > max){
      max = first(i);
      numbers = i;
    }
  } 
  console.log("bilangan asli dengan operasi terbanyak:" + numbers);
}