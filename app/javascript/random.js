var roulette;
const List1 = ['名前は？', '好きな人は', '貯金は','給料は',' 洗濯機'];

// ルーレットを開始
function start() {
  const start = document.getElementById("start")
  start.addEventListener('click', function() {
  roulette = setInterval(function() {
    document.getElementById("start").disabled = true;
    var idx = List1[Math.floor( Math.random() * List1.length )];
    // ルーレット
    document.getElementById("roulette").innerHTML = idx;
    }, 100);
  })
  }
window.addEventListener('load',start)


// ルーレットを停止
function stop(){
  const stop = document.getElementById("stop")
  stop.addEventListener('click', function() {
    document.getElementById("start").disabled = false;
    if(roulette) {
      clearInterval(roulette);
      }
  })
}
window.addEventListener('load',stop)