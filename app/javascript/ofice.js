var roulette_a;
const List2 = ['仕事の流儀は？', '業務上の失敗談は？', '初任給は？','給料を教えて？','理想の上司とは？','仕事の流儀は？', '業務上の失敗談は？', '初任給は？','給料を教えて？','理想の上司とは？'];

// ルーレットを開始
function ofice() {
  const start = document.getElementById("ofice_a")
  start.addEventListener('click', function() {
    roulette = setInterval(function() {
      document.getElementById("ofice_a").disabled = true;
      var idx = List2[Math.floor( Math.random() * List2.length )];
      // ルーレット
      document.getElementById("roulette_a").innerHTML = idx;
      }, 100);
  })
}
  window.addEventListener('load',ofice)


  // ルーレットを停止
function ofices(){
  const stop = document.getElementById("ofice_b")
  stop.addEventListener('click', function() {
    document.getElementById("ofice_a").disabled = false;
    if(roulette) {
      clearInterval(roulette);
      }
  })
}
window.addEventListener('load',ofices)

