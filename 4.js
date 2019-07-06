buyNoodle(25,50000);


function buyNoodle(date, money){
    if(date>30 || date<1){
        console.log("error");
    }else{
        var price = 1650;
        var noodle = Math.floor(money/price);
        if(date % 5 == 0){
            if(date % 2 == 0){
                bonus = Math.floor(noodle/4);
                noodle = noodle + (bonus*10);
            }else{
                bonus = Math.floor(noodle/3);
                noodle = noodle + (bonus*5);
            }
        }else{
            if(date % 2 == 0){
                bonus =Math.floor(noodle/4);
                noodle = noodle + bonus;
            }else{
                bonus = Math.floor(noodle/3);
                noodle = noodle + bonus;
            }
    }
    console.log(noodle);
    }
}