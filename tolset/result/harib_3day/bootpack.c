/*  함수 헤더 파일을 수동으로 연결 */

void io_hlt(void);

void HariMain(void)
{

fin:
	io_hlt(); /* 이것으로 naskfunc.nas의 _io_hlt가 실행됩니다 */
	goto fin;

}
