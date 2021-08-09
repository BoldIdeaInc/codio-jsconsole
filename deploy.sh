usage() {
    echo "usage: $(basename $0) PORT";
}

PORT="$1";
[[ -z "$PORT" ]] && usage && exit 1;

rsync -av ./{jsconsole,index.html,style.css} -e "ssh -p $PORT" codio@forwarding.codio.com:workspace/.guides/p/
