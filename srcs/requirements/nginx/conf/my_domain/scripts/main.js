{
    let myImage = document.querySelector('img');

    myImage.onclick = function()
    {
        let mySrc = myImage.getAttribute('src');

        if (mySrc === 'images/earth.png')
            myImage.setAttribute('src', 'images/logo.png');
        else
            myImage.setAttribute('src', 'images/earth.png');
    }
}

{
    let myButton = document.querySelector('button');
    let myHeading = document.querySelector('h1');

    function setUserName()
    {
        let myName = prompt('Please enter your name.');
        
        if (!myName)
            setUserName();
        else
        {
            localStorage.setItem('name', myName);
            myHeading.textContent = 'Welcome ' + myName;
        }
    }

    if (!localStorage.getItem('name'))
        setUserName();
    else
    {
        let storedName = localStorage.getItem('name');
        myHeading.textContent = 'Welcome ' + storedName;
    }

    myButton.onclick = function()
    {
        setUserName();
    }
}

{
    var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');

    var dir = -10;
    var pctOpen = 100;

    function drawPacman(pctOpen)
    {
        var fltOpen = pctOpen / 100;
        
        ctx.clearRect(0, 0, canvas.width, canvas.height);

        //pacman head
        ctx.beginPath();
        ctx.arc(100, 100, 100, (fltOpen * 0.2) * Math.PI, (2 - fltOpen * 0.2) * Math.PI);
        //close path with open mouth
        ctx.lineTo(100, 100);
        ctx.closePath();
        //Yellow head
        ctx.fillStyle = "#FF0";
        ctx.fill();
        //black outline head
     //   ctx.strokeStyle = '#000';
     //   ctx.stroke();

        //circle for the eye
        var angle = Math.PI * (0.3 + fltOpen * 0.2);
        var xDelta = 50 * Math.cos(angle);
        var yDelta = 50 * Math.sin(angle);

        ctx.beginPath();
        ctx.arc(100 + xDelta, 100 - yDelta, 10, 0, 2 * Math.PI);
        ctx.fillStyle = "#000";
        ctx.fill();
        //outline the eye
        ctx.strokeStyle = '#FFF';
        ctx.stroke();
    }

    //update Pacman every 0.1 sec
    setInterval(function()
    {
        drawPacman(pctOpen += dir);
        //When the mouse is max open, reverse direction
        if (pctOpen % 100 == 0)
            dir = -dir;
    }, 100);
/*
    var img = new Image();
    img.src = canvas.toDataURL();*/

    var offset = 0;

    function draw()
    {
     //   ctx.clearRect(0, 0, canvas.width, canvas.height);
        ctx.setLineDash([20, 20]);
        ctx.lineDashOffset = -offset;
        ctx.beginPath();
        ctx.moveTo(600, 100);
        ctx.lineTo(200, 100);
        ctx.stroke();
    }

    function march()
    {
        offset++;
        if (offset > 400)
            offset = 0;
        draw();
        setTimeout(march, 20);
    }

    march();
}