; hello-os
; TAB=4

; 이하는 표준적인 FAT12 포맷 플로피디스크를 위한 서술

  DB    0xeb, 0x4e, 0x90
  DB    "HELLOIPL"        ; 부트섹터의 이름을 자유롭게 써도 좋음
  DW    512               ; 1섹터의 크기 (바이트 단위 512로 해야함)
  DB    1                 ; 클러스터의 크기 (1섹터로 해야함)
  DW    1                 ; 예약된 섹터의 수
  DB    2                 ; 디스크의 FAT 테이블의 수
  DW    224               ; 루트 디렉토리 엔트리의 수 (보통은 224엔트리)
  DW    2880              ; 디스커의 총 섹터 수(2880섹터로 해야함)
  DB    0xf0              ; 미디어 타입(0xf0으로 해야함)
  DW    9                 ; 하나의 FAT 테이블의 섹터 수 (9섹터로 해야함)
  DW    18                ; 1트랙에 몇 섹터가 있는가 (18로 해야함)
  DW    2                 ; 헤드의 수 (2로 해야함)
  DD    0                 ; 파티션을 사용하지 않으므로 이곳은 반드시 0
  DD    2880              ; 이 드라이브의 크기를 한 번 더 씀
  DB    0,0,0x29          ; 잘 모르곘지만 이 값을 넣어두면 좋다고 함
  DD    0xffffffff        ; 볼륨 시리얼 번호
  DB    "HELLO-OS   "     ; 디스크의 이름
  DB    "FAT12   "        ; 포맷의 이름 (8바이트)
  RESB  18                ; 18바이트 남겨둠

; 프로그램 본체

  DB    0xb8, 0x00, 0x00, 0x8e, 0xd0, 0xbc, 0x00, 0x7c
  DB    0x8e, 0xd8, 0x8e, 0xc0, 0xbe, 0x74, 0x7c, 0x8a
  DB    0x04, 0x83, 0xc6, 0x01, 0x3c, 0x00, 0x74, 0x09
  DB    0xb4, 0x0e, 0xbb, 0x0f, 0x00, 0xcd, 0x10, 0xeb
  DB    0xee, 0xf4, 0xeb, 0xfd

; 메시지 부분

  DB    0x0a, 0x0a  ; 줄 바꿈 2개
  DB    "hello, world"
  DB    0x0a
  DB    0

  RESB  0x1fe-$
  DB    0x55, 0xaa

; 이하는 부트섹터 이외의 부분에 기술

  DB    0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
  RESB  4600
  DB    0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
  RESB  1469432
