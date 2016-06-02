# Based on the calc_examples Makefile

install: 
	install token /var/local
	install shellegram nshellegram shellegram_ui shellegram_tui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat shellegram.services`" /etc/services || cat shellegram.services >> /etc/services
	install shellegram.xinetd /etc/xinetd.d/shellegram
	msgfmt -v shellegram_ui.po -o shellegram_ui.mo
	sudo install shellegram_ui.mo /usr/share/locale/es/LC_MESSAGES/shellegram_ui.mo
	msgfmt -v shellegram.po -o shellegram.mo
	sudo install shellegram.mo /usr/share/locale/es/LC_MESSAGES/shellegram.mo	
	
