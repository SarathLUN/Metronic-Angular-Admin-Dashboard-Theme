# get current working directory:
CUR_DIR="$(pwd)"
echo $CUR_DIR

# start the documentation:
cd "$CUR_DIR/docs/"
npm install
nohup ng serve --port 4201 -o &

# start development server
cd "$CUR_DIR/demo1/"
npm install
ng serve -o