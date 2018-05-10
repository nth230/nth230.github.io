// Side note; java script didn't work

var modal = document.getElementById('simpleModal');

var modalBtn = document.getElementById('modalBtn');

var closeBtn = document.getElementsByClassName("closeBtn")[0];

modalBtn.addEventListener("hover",openModal);

closeBtn.addEventListener("hover",closeModal);

window.addEventListener("click",clickOutside);

function openModal(){
  modal.style.display = "block";
}

function closeModal(){
  modal.style.display = "none";
}

function clickOutside(e){
  if(e.target == modal){
  modal.style.display = "none";
}
//

console.log("sup")

let myVariable = "hello"

let myHTMLBody = document.HTMLBody
console.log(myHTMLBody)

let myBlock = document.getElementById('myFirstBlock')
console.log(myBlock)
//Declared my first block in html


let myNumberOfClicks = 0
myNumberOfClicks ++
if(myNumberOfClicks ==1)
  console.log('you have clicked:' + myNumberOfClicks +'time')
else
    console.log('you have clicked:' + myNumberOfClicks +'times')


myBlock.onclick = () => {
myBlock.style.hight = '0px'

let myVideo = document.getElementById('myVideo')
myVideo.style.display = 'block'

myBlock.onclick = () => {
  myBlock.style.height = '0px'

  setTimeout( () => {
    let myVideo = document.getElementById('myVideo')
    myVideo.style.display = 'block'
    setTimeout(myVideo.play(), 300)
  }, 1000)

setTimeout()
}
