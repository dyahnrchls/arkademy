// var name = window.prompt("name:");
var name = "Christoper Slovanoski";
nilaiNama(name);

function nilaiNama(a){
    var nama = a.split(" ");
    line = 1;
    for(var i=0; i< nama.length; i++){
        total=0;
        for(var j=0; j<nama[i].length; j++){
            total = total+nama[i][j].toLowerCase().charCodeAt(0) - 97 + 1;
        } 
        total = total*line;
        line++;
        console.log(total);
    }
}
