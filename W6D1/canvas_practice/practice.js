document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById("mycanvas"); // in your HTML this element appears as <canvas id="myCanvas"></canvas>
  canvasEl.width = 500;
  canvasEl.height = 500;
  const ctx = canvasEl.getContext("2d");
  ctx.fillStyle = "red"; // sets the color to fill in the rectangle with
  ctx.fillRect(0, 0, 500, 500);   // draws the rectangle at position 10, 10 with a width of 55 and a height of 50



  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();
});
