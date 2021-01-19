ssh master sudo chmod 777 /etc/xdg/openbox/menu.xml
scp master/menu.xml master:/etc/xdg/openbox/

ssh slave sudo chmod 777 /etc/xdg/openbox/menu.xml
scp slave/menu.xml slave:/etc/xdg/openbox/


