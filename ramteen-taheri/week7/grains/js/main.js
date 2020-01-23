window.onload = () => {
    let chessboard = [];
    let numOfGrains = 1;
    let totalGrains = 0;
    const squareNum = document.querySelector('#squareNum');
    const submitBtn = document.querySelector('#submitBtn');

    //putting grains on the chessboard
    for(let i = 0; i < 64; i++) {
        chessboard[i] = numOfGrains;
        numOfGrains = numOfGrains * 2;
    }

    _(chessboard).each( function( num ){
        totalGrains += num;
    });
    
    submitBtn.addEventListener('click', () => {
        let iterator = squareNum.value;
        if(squareNum.value > 64 || squareNum.value < 1) {
            console.log('Error: Please enter a value between 1-64...');
        } else {
            console.log(`Square ${iterator}: ${chessboard[iterator-1]}`);
            console.log(`Total Number of Grains: ${totalGrains}`);
        }
    });  
};
    

    
