echo "========= Verifying St2 ========="
sleep 10
st2ctl status
echo "========== Test Action =========="
st2 run core.local hostname
ACTIONEXIT=$?

echo "=============================="
echo ""

if [ ${ACTIONEXIT} -ne 0 ]
then
  echo "ERROR!" 
  echo "Something went wrong, st2 failed to start"
  exit 2
else
  echo "      _   ___     ____  _  __ "
  echo "     | | |__ \   / __ \| |/ / "
  echo "  ___| |_   ) | | |  | | ' /  "
  echo " / __| __| / /  | |  | |  <   "
  echo " \__ \ |_ / /_  | |__| | . \  "
  echo " |___/\__|____|  \____/|_|\_\ "
  echo ""
  echo "  st2 is installed and ready  "
fi
if [ ${INSTALL_WEBUI} == "1" ]; then
  echo "  WebUI at http://`hostname`:9101/webui/"
fi
