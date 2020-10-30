var roulette;
const List1 = ['最近の恋愛事情？', '近況報告して', 'お酒を一気飲みして','この中でひとり選んで褒めて','みんなの初対面の印象と今の印象は？','秘密を暴露して', '何フエチ？', '自分のいいところは？','モノマネ披露して',"ボーナス何使った？","給料の使い道は"];

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





// ⭐️誰が話すか

    //参加者一覧
    let num_1 = [];
    window.onload = function() {
    const addNameButton = document.getElementById('add-button')
    addNameButton.addEventListener('click', () => {
    const input = document.getElementById('add-name');
    const li =document.createElement('li');
    li.innerText = input.value;
    const ul =document.querySelector('ul');
    ul.appendChild(li);
    let name = input.value
     num_1.push(name)
    });
    }
  
    // ルーレットを開始

    function talker_a() {
      const start = document.getElementById("talker1")
      talker1.addEventListener('click', function() {

      talker_roulette = setInterval(function() {
       document.getElementById("talker1").disabled = true;
      var idx = Math.floor( Math.random() * num_1.length );
      document.getElementById("talker_roulette").innerHTML = num_1[idx];
      }) 
       }, 100);
        }
        window.addEventListener('load',talker_a)


      // ルーレットを停止
        function talker_b(){
          const start = document.getElementById("talker1_2")
          talker1_2.addEventListener('click', function() {
          document.getElementById("talker1").disabled = false;
          if(talker_roulette) {
            clearInterval(talker_roulette);
          }
        }) 
        }   
        window.addEventListener('load',talker_b)



  