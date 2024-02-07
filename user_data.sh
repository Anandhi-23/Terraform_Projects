#!/bin/bash
apt update
apt install -y apache2

# Create a simple HTML file with the portfolio content and display the images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>KaiZen Art</title>
<style>
h1 {
    text-align: center;
}    
</style>
</head>
<body>
    <h1>KaiZen</h1>
    <p>Art, the mystical realm where stick figures aspire to be masterpieces, and abstract paintings make us question if we accidentally entered a toddler's masterpiece. It's the only place where a canvas can be a battlefield for paintbrushes, and sculptures engage in an eternal game of "freeze tag." In this whimsical world, even a misplaced doodle can spark heated debates about profound symbolism. So, welcome to the circus of creativity, where every artist is a ringmaster, and the audience wonders if they've accidentally stumbled into a gallery or a three-ring spectacle of aesthetic amusement!</p>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2