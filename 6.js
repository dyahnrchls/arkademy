var number = 1321;
tekateki(number);

function tekateki(num){
    var lampu = [];
    var size = 15;
    for(k=0; k<size; k++){
        lampu.push(false);
    }
    var number = num.toString();
    for(var i=0; i<number.length; i++){
        var integerNum = parseInt(number[i]);
        if(integerNum != 1){
            for (j=1; j<=15; j++){
                if(j % integerNum == 0){
                    if(lampu[j-1] == false){
                        lampu[j-1] = true;
                    }else{
                        lampu[j-1] = false;
                    }
                }
            }
        }else{
            if(lampu[0] == false){
                lampu[0] = true;
            }else{
                lampu[0] = false;

            }
        }
        }

        var nyala=0;
        var mati=0;
        for(l=0;l<lampu.length;l++){
            if(lampu[l]==true){
                nyala++;
            }else{
                mati++;
            }
        }
        console.log(lampu);
        console.log("Jumlah Lampu Menyala = " + nyala );
        console.log("Jumlah Lampu Mati = " + mati)
    } 

