CONTIKI = /home/user/contiki-2.6-2

CONTIKI_PROJECT = main
CONTIKI_TARGET_SOURCEFILES += bcp.c bcp_routing_table.c bcp_queue.c bcp_weight_estimator.c


#Load our own project-conf to employ nullrdc driver
CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"

#CONTIKI_TARGET_SOURCEFILES += 


all: $(CONTIKI_PROJECT)
#include ./bcp/Makefile.bcp
include $(CONTIKI)/Makefile.include 
