#ifndef WEBSERV_H
#define WEBSERV_H

/* ================== *
 | External functions |
 * ================== */

//std::
#include <iostream>
//execve / pipe /dup /dup2 /fork
#include <unistd.h>
// strerror
#include <stdio.h>
// gai_strerror / socket / accept / listen / send /recv /bind / connect
// getaddrinfo / freeaddrinfo / setsockopt / getsockname
#include <sys/socket.h>
// errno
#include <sys/errno.h>
//htons / htonl / ntohs / ntohl
#include <arpa/inet.h>
//select
#include <sys/select.h>
//poll
#include <poll.h>
//epoll ---- epoll plante ? 
//#include <epoll.h>
//kqueue / kevent
#include <sys/event.h>
// getprotobyname
#include <netdb.h>
//fcntl
#include <fcntl.h>


/* ===== *
 | Enums |
 * ===== */


/* ===================== *
 | Structures and unions |
 * ===================== */


/* ========= *
 | Functions |
 * ========= */





#endif
