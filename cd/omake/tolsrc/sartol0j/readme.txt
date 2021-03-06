[목차]

1. dsar편
2. esart5편
3. 그 외 편

[1. dsar편]

  dsar는 sar 파일의 전개를 간단하게 하기 위한 배치파일입니다. 「데자―」
인가 「도자―」라고도 불러 주세요.

  dsar는 sartol를 호출하는 배치파일로, 아츠키씨의 「엔야코라 sar」
의 배치파일판이라고도 말해야 할 것입니다. 그러나 어차피 배치파일이기 때문에
「엔야코라 sar」에는 많은 점에서 뒤떨어져 있습니다. 그래서, 기본적으로는
「엔야코라 sar」쪽을 강하게 추천합니다. 「엔야코라 sar」를 없애 버렸을 때나,
CUI가 좋아서 견딜 수 없다고 하는 사람만은 dsar를 사용해 주세요.
「엔야코라 sar」는 GUI에서 설정할 수 있으므로 훨씬 편리합니다.
 
 
        http://koya.marokun.net/osask/download.html

---

  디폴트에서는, sartol.exe에 패스가 통해 있고 한편, Windows2000상에서
이용하고, 전개할 곳은 데스크탑상에 만든 폴더, 게다가 전개 종료 후에는,
그 폴더를 explorer로 자동적으로 연다, 라고 하는 설정 내용으로 되어 있습니다.

  Win95/98으로 사용하는 경우나 sartol.exe가 놓인 장소가 다를 때는, 배치파일
의 최초 set 부분을 적당히 고쳐 주세요.

  dsar_bpath의 말미에 있으면, 아카이브(archive)와 같은 이름의 디렉토리를
자동 생성합니다. /가 없으면 디렉토리를 만들지 않고 지정된 디렉토리에
직접 아카이브(archive)의 내용을 전개합니다. dsar_bpath를 ..@arcpath
혹은 ..@arcpath/ 로 하면, ..@arcpath의 부분에 sar 파일이 있는 
패스를 옮겨놓을 수 있게 처리됩니다.

  dsar_bpath의 기술에는, 지금은 존재하고 있지 않는 디렉토리가 복수개 포함되어 있어도 
상관없습니다. 분명히 설정한 대로의 패스가 되도록, sartol측에서 충분하게 디렉토리를 
자동 생성합니다.
 
  dsar_autorun는 =의 뒤로 아무것도 쓰지 않으면 디렉토리의 자동 오픈을
하지 않게 됩니다. dsar_autorun는 주로 explorer를 지정하기 위해서 준비되어
있습니다만, 전개한 디렉토리를 그대로 별도의 아카이버(archiver)에 건네줄 수도 있겠지요. 
이것에 의해, sar→zip 변환이라든지, 그런 것도 할 수 있지않을까 하고 생각하고 
있습니다.

---

  사용법은

prompt>dsar osat46i.sar

등으로 합니다.

  혹은, 익스플로러로 osat46i.sar를 dsar.bat위에 올려 놓아도 됩니다.

  혹은, 갑자기 osat46i.sar를 더블 클릭 해 「파일을 연다
어플리케이션의 선택」윈도우를 표시한 후, 「그 외」버튼을 눌러
dsar.bat를 선택해, 「이러한 파일을 열 때는, 언제나 이 아플리케이션을
사용한다」에 체크를 붙인채로 OK를 누르는 방법도 있습니다. 이 이후에는
더블 클릭만으로 자꾸자꾸 전개할 수 있습니다. LHASA입니다.
 
  이상의 3개의 어느것인가에서도, 복수의 파일의 지정이 가능합니다.

[2. esart5편]

  esart5는 sar의 아카이브(archive) 작성 옵션이 길고 귀찮아서 우선
간편하게 아카이브(archive)를 만들 수 있도록 한 배치파일입니다. 자동으로 tek5 압축도
합니다.
  
·간단한 사용법

prompt>esart5 적당한 디렉토리명

등으로 합니다.

  혹은, 익스플로러로 적당한 디렉토리를 잡아, esart5.bat의
위에 올려 놓아도 괜찮습니다.
  
  이것으로, 디렉토리의 내용과 같은 것이 sar 파일이 되어 생성됩니다.
어디에 생성되는가 하면 우선 그 디렉토리와 같은 장소에 할 수 있습니다.


  어느 쪽에 대해서도, 복수의 디렉토리를 한 번으로 지정해서는 안됩니다.

·조금 고도의 사용법

prompt>esart5 적당한 디렉토리명 **
→이렇게 하면, 하위 디렉토리의 파일은 아카이브(archive) 하지 않게 할 수 있습니다.

prompt>esart5 적당한 디렉토리명 *. txt
→이렇게 하면, 모든 디렉토리 중에서 확장자(extension)가 .txt의 것만을 아카
  이브 대상으로 합니다.

prompt>esart5 적당한 디렉토리명 **. txt
→이렇게 하면, 지정한 디렉토리 중에서 확장자(extension)가 .txt의 것만을 아
  카이브 대상으로 합니다. 하위 디렉토리 안은 찾지 않습니다.

prompt>esart5 적당한 디렉토리명 abc*
→이렇게 하면, 아카이브(archive) 대상 패스가 abc로 시작되는 것만을 sar에 넣습니다.

prompt>esart5 적당한 디렉토리명 *. txt *. doc
→이렇게 하면, .txt와 .doc가 아카이브(archive) 대상입니다.

prompt>esart5 적당한 디렉토리명 sartol.c sartol.exe
→이렇게 하면, sartol.c와 sartol.exe만이 아카이브(archive) 대상입니다.

prompt>esart5 적당한 디렉토리명 src/*
→이렇게 하면, src 디렉토리안만 아카이브(archive) 합니다.

  덧붙여 esart5등을 사용하지 않고 sartol나 wce를 직접 이용하면, 좀 더 복잡한
지정도 가능합니다.

[3. 그 외 편]

  wce.exe는, 와일드 카드 전개 지원 어플리케이션입니다. 우선 Windows용으로,
Linux등에서 이용하려면  setnames() 근처를 대폭 손댈 필요가 있겠지요?
Linux에서는 쉘이 와일드 카드 전개를 해 주고 있으므로
이런 작고 세세한 어플리케이션은 불필요하기도 합니다.

  부실로 만들고 있기 때문에 많은 서브 디렉토리를 가지는 디렉토
리로 실행하면, 하단 계층을 참조하는 와일드 카드를 사용하지 않아서
극적으로 실행 속도가 떨어집니다.

  그렇다고 하는 것으로, 그  정도 주의해서 문제 없을 것 같은 디렉토리로 우선,
 
prompt>wce echo *

등과 넣어 보세요. 와일드 카드에 매치한 파일명이 나올 것 입니다.

  생성하고 있는 커맨드 라인을 확인하고 싶을 때는,

prompt>wce echo * #p=1

이런 식으로, 말미에 「#p=1」을 붙여 주세요. system()를 부르지않고 puts()
하게 됩니다.

prompt>wce echo #b=적당한 디렉토리명 *. txt

으로 하면, 커런트 디렉토리는 아니고 지정한 디렉토리내에 대해서,
와일드 카드를 적용합니다.

prompt>wce echo ( *. txt *. doc )

와 괄호를 붙이면(괄호의 전후에는 스페이스가 필요), 괄호를 붙이지 않는 경우는
파일명의 소트가 와일드 카드 단위도 되어 있던 것이, 괄호내 전체에서
소트 됩니다.

prompt>wce echo ( *. txt #! =readme.txt )

이와 같이 「#! =파일명」이라고 하면, 그 파일명은 출력되지 않습니다.
괄호가 없으면 *.txt의 단계에서 출력되어 버리기 때문에 괄호는 필요합니다.

  또한 완성도가 낮기 때문에, ?는 전혀 사용할 수 없습니다.

  wce에서는 와일드 카드를 포함하지 않는 문자열은 그대로 출력됩니다. 괄호가
있는 경우는 일단 버퍼링 후, 소트 하고 나서 출력입니다.

예>wce echo abc def 0123
예>wce echo ( abc def 0123 )

  wce는 알파벳의 대문자 소문자를 구별합니다. memo.txt는 *.TXT에서는
히트 하지 않습니다. 그것이 곤란할 때는 ( *.txt *.TXT )로 해 주세요.

[최후에]

  dsar나 sartol나 wce의 저작권은 카와이 히데미에게 있으며, 라이센스는 KL-01입니다.
 