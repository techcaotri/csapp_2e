/*
 * config.h - configuration info for buffer bomb's email notification feature
 */

/* 
 * If you don't want bufbomb to automatically send an email notification
 * to the grading server each time, then define NOTIFY = 0. In this case, 
 * the students will need to use the -s option to submit their 
 * solution to the grading server.
 */
#define NOTIFY 1

/* 
 * Modify these three lines to control where and how notification occurs.
 * The notification option sends an email message to BOMB_USER@BOMB_HOST
 * whenever a bomb phase is defused or explodes. The email message is sent 
 * using the command: SENDMAIL BOMB_USER@BOMB_HOST. Sendmail is in /usr/sbin
 * on Linux systems, and /usr/lib on Solaris systems.
 */
#define BOMB_USER "bomb"
#define BOMB_HOST "foobar.cmcl.cs.cmu.edu"
#ifdef __CYGWIN__
/* CYGWIN has a sendmail-compatible mail program called ssmtp.
   You must run the script /bin/ssmtp-config to get it configured properly.
 */
#define SENDMAIL  "/usr/sbin/ssmtp -bm"
#else
#define SENDMAIL  "/usr/sbin/sendmail -bm"
#endif

/*
 * Keep generation count for versions of the bufbomb, so that it won't
 * get confused when trying to process old submissions. This should be
 * changed each term and should be identical to the $BOMB_GENERATION
 * field in buflab/grade/config.pm 
 */
#define BOMB_GENERATION 15215

/*
 * As we debugged the lab, we needed to make multiple versions
 * of the bufbomb available to the students. This constant keeps 
 * track of the current version number. In stable state, it should always be 0.
 */
#define BOMB_VERSION 0




