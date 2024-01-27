Xvfb $DISPLAY -screen 0 1920x1080x16 &
x11vnc -display $DISPLAY -bg -forever -nopw -quiet
fluxbox &
xterm &
service ssh start
bash # for running container with interactive bash
tail -f /dev/null # for running forever in docker-compose / headless.