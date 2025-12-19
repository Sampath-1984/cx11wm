#include <stdio.h>
#include <stdlib.hn>
#include <xcb/xcb.h>


int main(void){
	xcb_connection_t *conn;
	int screen_nbr;


	conn = xcb_connect(NULL, &screen_nbr);
	if (xcb_connection_has_error(conn)) {
		fprintf(stderr, "wm: failed to connect to X server\n");
		return 1;
	}


	printf("wm: connected to x server (screen %d)\n", screen_nbr);


// event loop placeholder
// this will be replaced by the real wm dispatch loop


	xcb_disconnect(conn);

	return 0;
}
