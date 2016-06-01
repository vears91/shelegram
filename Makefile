# Based on the calc_examples Makefile

install: 
	install shellegram shellegram_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat shellegram.services`" /etc/services || cat shellegram.services >> /etc/services
	install shellegram.xinetd /etc/xinetd.d/shellegram

	
