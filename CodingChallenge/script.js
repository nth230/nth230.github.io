

function play(){
   var audio = document.getElementById("AaronDoesIt");
   var isPlaying = true;
       audio.play();
     }

     function togglePause() {

       var isPlaying = true;
        var audio = document.getElementById("AaronDoesIt");
       if (currentlyPlaying) {
         audio.pause()
         var isPlaying = false;
       } else {
         audio.play();
       }
     };






// console.log("sup")
//
// let myVariable = "hello"
//
// let myHTMLBody = document.HTMLBody
// console.log(myHTMLBody)
//
// let myBlock = document.getElementById('myFirstBlock')
// console.log(myBlock)
// //Declared my first block in html
//
//
// let myNumberOfClicks = 0
// myNumberOfClicks ++
// if(myNumberOfClicks ==1)
//   console.log('you have clicked:' + myNumberOfClicks +'time')
// else
//     console.log('you have clicked:' + myNumberOfClicks +'times')
//
//
// myBlock.onclick = () => {
// myBlock.style.hight = '0px'
//
// let myVideo = document.getElementById('myVideo')
// myVideo.style.display = 'block'
//
// myBlock.onclick = () => {
//   myBlock.style.height = '0px'
//
//   setTimeout( () => {
//     let myVideo = document.getElementById('myVideo')
//     myVideo.style.display = 'block'
//     setTimeout(myVideo.play(), 300)
//   }, 1000)
//
// setTimeout()
// }
