unit x64.avx512er;

// This unit was generated by d2p.pl script.
// Source : gas/x86-64-avx512er-intel.d

interface

uses
  uTestCase,
  UnivDisasm.Cnsts;

procedure Test();

implementation

procedure Test();
var
  TestCase:TTestCase;
begin
  TestCase := TTestCase.Create('x64.avx512er');
  TestCase.Start();	
  TestCase.Arch := CPUX64;

  TestCase.testcase(0, [$62,$02,$7D,$48,$C8,$F5                           ] , 'vexp2ps  zmm30,zmm29'                             );
  TestCase.testcase(1, [$62,$02,$7D,$18,$C8,$F5                           ] , 'vexp2ps  zmm30,zmm29,{sae}'                       );
  TestCase.testcase(2, [$62,$62,$7D,$48,$C8,$31                           ] , 'vexp2ps  zmm30,zword [rcx]'                       );
  TestCase.testcase(3, [$62,$22,$7D,$48,$C8,$B4,$F0,$23,$01,$00,$00       ] , 'vexp2ps  zmm30,zword [rax+r14*8+0x123]'           );
  TestCase.testcase(4, [$62,$62,$7D,$58,$C8,$31                           ] , 'vexp2ps  zmm30,dword [rcx]{1to16}'                );
  TestCase.testcase(5, [$62,$62,$7D,$48,$C8,$72,$7F                       ] , 'vexp2ps  zmm30,zword [rdx+0x1fc0]'                );
  TestCase.testcase(6, [$62,$62,$7D,$48,$C8,$B2,$00,$20,$00,$00           ] , 'vexp2ps  zmm30,zword [rdx+0x2000]'                );
  TestCase.testcase(7, [$62,$62,$7D,$48,$C8,$72,$80                       ] , 'vexp2ps  zmm30,zword [rdx-0x2000]'                );
  TestCase.testcase(8, [$62,$62,$7D,$48,$C8,$B2,$C0,$DF,$FF,$FF           ] , 'vexp2ps  zmm30,zword [rdx-0x2040]'                );
  TestCase.testcase(9, [$62,$62,$7D,$58,$C8,$72,$7F                       ] , 'vexp2ps  zmm30,dword [rdx+0x1fc]{1to16}'          );
  TestCase.testcase(10, [$62,$62,$7D,$58,$C8,$B2,$00,$02,$00,$00           ] , 'vexp2ps  zmm30,dword [rdx+0x200]{1to16}'          );
  TestCase.testcase(11, [$62,$62,$7D,$58,$C8,$72,$80                       ] , 'vexp2ps  zmm30,dword [rdx-0x200]{1to16}'          );
  TestCase.testcase(12, [$62,$62,$7D,$58,$C8,$B2,$FC,$FD,$FF,$FF           ] , 'vexp2ps  zmm30,dword [rdx-0x204]{1to16}'          );
  TestCase.testcase(13, [$62,$02,$FD,$48,$C8,$F5                           ] , 'vexp2pd  zmm30,zmm29'                             );
  TestCase.testcase(14, [$62,$02,$FD,$18,$C8,$F5                           ] , 'vexp2pd  zmm30,zmm29,{sae}'                       );
  TestCase.testcase(15, [$62,$62,$FD,$48,$C8,$31                           ] , 'vexp2pd  zmm30,zword [rcx]'                       );
  TestCase.testcase(16, [$62,$22,$FD,$48,$C8,$B4,$F0,$23,$01,$00,$00       ] , 'vexp2pd  zmm30,zword [rax+r14*8+0x123]'           );
  TestCase.testcase(17, [$62,$62,$FD,$58,$C8,$31                           ] , 'vexp2pd  zmm30,qword [rcx]{1to8}'                 );
  TestCase.testcase(18, [$62,$62,$FD,$48,$C8,$72,$7F                       ] , 'vexp2pd  zmm30,zword [rdx+0x1fc0]'                );
  TestCase.testcase(19, [$62,$62,$FD,$48,$C8,$B2,$00,$20,$00,$00           ] , 'vexp2pd  zmm30,zword [rdx+0x2000]'                );
  TestCase.testcase(20, [$62,$62,$FD,$48,$C8,$72,$80                       ] , 'vexp2pd  zmm30,zword [rdx-0x2000]'                );
  TestCase.testcase(21, [$62,$62,$FD,$48,$C8,$B2,$C0,$DF,$FF,$FF           ] , 'vexp2pd  zmm30,zword [rdx-0x2040]'                );
  TestCase.testcase(22, [$62,$62,$FD,$58,$C8,$72,$7F                       ] , 'vexp2pd  zmm30,qword [rdx+0x3f8]{1to8}'           );
  TestCase.testcase(23, [$62,$62,$FD,$58,$C8,$B2,$00,$04,$00,$00           ] , 'vexp2pd  zmm30,qword [rdx+0x400]{1to8}'           );
  TestCase.testcase(24, [$62,$62,$FD,$58,$C8,$72,$80                       ] , 'vexp2pd  zmm30,qword [rdx-0x400]{1to8}'           );
  TestCase.testcase(25, [$62,$62,$FD,$58,$C8,$B2,$F8,$FB,$FF,$FF           ] , 'vexp2pd  zmm30,qword [rdx-0x408]{1to8}'           );
  TestCase.testcase(26, [$62,$02,$7D,$48,$CA,$F5                           ] , 'vrcp28ps  zmm30,zmm29'                            );
  TestCase.testcase(27, [$62,$02,$7D,$4F,$CA,$F5                           ] , 'vrcp28ps  zmm30{k7},zmm29'                        );
  TestCase.testcase(28, [$62,$02,$7D,$CF,$CA,$F5                           ] , 'vrcp28ps  zmm30{k7}{z},zmm29'                     );
  TestCase.testcase(29, [$62,$02,$7D,$18,$CA,$F5                           ] , 'vrcp28ps  zmm30,zmm29,{sae}'                      );
  TestCase.testcase(30, [$62,$62,$7D,$48,$CA,$31                           ] , 'vrcp28ps  zmm30,zword [rcx]'                      );
  TestCase.testcase(31, [$62,$22,$7D,$48,$CA,$B4,$F0,$23,$01,$00,$00       ] , 'vrcp28ps  zmm30,zword [rax+r14*8+0x123]'          );
  TestCase.testcase(32, [$62,$62,$7D,$58,$CA,$31                           ] , 'vrcp28ps  zmm30,dword [rcx]{1to16}'               );
  TestCase.testcase(33, [$62,$62,$7D,$48,$CA,$72,$7F                       ] , 'vrcp28ps  zmm30,zword [rdx+0x1fc0]'               );
  TestCase.testcase(34, [$62,$62,$7D,$48,$CA,$B2,$00,$20,$00,$00           ] , 'vrcp28ps  zmm30,zword [rdx+0x2000]'               );
  TestCase.testcase(35, [$62,$62,$7D,$48,$CA,$72,$80                       ] , 'vrcp28ps  zmm30,zword [rdx-0x2000]'               );
  TestCase.testcase(36, [$62,$62,$7D,$48,$CA,$B2,$C0,$DF,$FF,$FF           ] , 'vrcp28ps  zmm30,zword [rdx-0x2040]'               );
  TestCase.testcase(37, [$62,$62,$7D,$58,$CA,$72,$7F                       ] , 'vrcp28ps  zmm30,dword [rdx+0x1fc]{1to16}'         );
  TestCase.testcase(38, [$62,$62,$7D,$58,$CA,$B2,$00,$02,$00,$00           ] , 'vrcp28ps  zmm30,dword [rdx+0x200]{1to16}'         );
  TestCase.testcase(39, [$62,$62,$7D,$58,$CA,$72,$80                       ] , 'vrcp28ps  zmm30,dword [rdx-0x200]{1to16}'         );
  TestCase.testcase(40, [$62,$62,$7D,$58,$CA,$B2,$FC,$FD,$FF,$FF           ] , 'vrcp28ps  zmm30,dword [rdx-0x204]{1to16}'         );
  TestCase.testcase(41, [$62,$02,$FD,$48,$CA,$F5                           ] , 'vrcp28pd  zmm30,zmm29'                            );
  TestCase.testcase(42, [$62,$02,$FD,$4F,$CA,$F5                           ] , 'vrcp28pd  zmm30{k7},zmm29'                        );
  TestCase.testcase(43, [$62,$02,$FD,$CF,$CA,$F5                           ] , 'vrcp28pd  zmm30{k7}{z},zmm29'                     );
  TestCase.testcase(44, [$62,$02,$FD,$18,$CA,$F5                           ] , 'vrcp28pd  zmm30,zmm29,{sae}'                      );
  TestCase.testcase(45, [$62,$62,$FD,$48,$CA,$31                           ] , 'vrcp28pd  zmm30,zword [rcx]'                      );
  TestCase.testcase(46, [$62,$22,$FD,$48,$CA,$B4,$F0,$23,$01,$00,$00       ] , 'vrcp28pd  zmm30,zword [rax+r14*8+0x123]'          );
  TestCase.testcase(47, [$62,$62,$FD,$58,$CA,$31                           ] , 'vrcp28pd  zmm30,qword [rcx]{1to8}'                );
  TestCase.testcase(48, [$62,$62,$FD,$48,$CA,$72,$7F                       ] , 'vrcp28pd  zmm30,zword [rdx+0x1fc0]'               );
  TestCase.testcase(49, [$62,$62,$FD,$48,$CA,$B2,$00,$20,$00,$00           ] , 'vrcp28pd  zmm30,zword [rdx+0x2000]'               );
  TestCase.testcase(50, [$62,$62,$FD,$48,$CA,$72,$80                       ] , 'vrcp28pd  zmm30,zword [rdx-0x2000]'               );
  TestCase.testcase(51, [$62,$62,$FD,$48,$CA,$B2,$C0,$DF,$FF,$FF           ] , 'vrcp28pd  zmm30,zword [rdx-0x2040]'               );
  TestCase.testcase(52, [$62,$62,$FD,$58,$CA,$72,$7F                       ] , 'vrcp28pd  zmm30,qword [rdx+0x3f8]{1to8}'          );
  TestCase.testcase(53, [$62,$62,$FD,$58,$CA,$B2,$00,$04,$00,$00           ] , 'vrcp28pd  zmm30,qword [rdx+0x400]{1to8}'          );
  TestCase.testcase(54, [$62,$62,$FD,$58,$CA,$72,$80                       ] , 'vrcp28pd  zmm30,qword [rdx-0x400]{1to8}'          );
  TestCase.testcase(55, [$62,$62,$FD,$58,$CA,$B2,$F8,$FB,$FF,$FF           ] , 'vrcp28pd  zmm30,qword [rdx-0x408]{1to8}'          );
  TestCase.testcase(56, [$62,$02,$15,$07,$CB,$F4                           ] , 'vrcp28ss  xmm30{k7},xmm29,xmm28'                  );
  TestCase.testcase(57, [$62,$02,$15,$87,$CB,$F4                           ] , 'vrcp28ss  xmm30{k7}{z},xmm29,xmm28'               );
  TestCase.testcase(58, [$62,$02,$15,$17,$CB,$F4                           ] , 'vrcp28ss  xmm30{k7},xmm29,xmm28,{sae}'            );
  TestCase.testcase(59, [$62,$62,$15,$07,$CB,$31                           ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rcx]'            );
  TestCase.testcase(60, [$62,$22,$15,$07,$CB,$B4,$F0,$23,$01,$00,$00       ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rax+r14*8+0x123]' );
  TestCase.testcase(61, [$62,$62,$15,$07,$CB,$72,$7F                       ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx+0x1fc]'      );
  TestCase.testcase(62, [$62,$62,$15,$07,$CB,$B2,$00,$02,$00,$00           ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx+0x200]'      );
  TestCase.testcase(63, [$62,$62,$15,$07,$CB,$72,$80                       ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx-0x200]'      );
  TestCase.testcase(64, [$62,$62,$15,$07,$CB,$B2,$FC,$FD,$FF,$FF           ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx-0x204]'      );
  TestCase.testcase(65, [$62,$02,$95,$07,$CB,$F4                           ] , 'vrcp28sd  xmm30{k7},xmm29,xmm28'                  );
  TestCase.testcase(66, [$62,$02,$95,$87,$CB,$F4                           ] , 'vrcp28sd  xmm30{k7}{z},xmm29,xmm28'               );
  TestCase.testcase(67, [$62,$02,$95,$17,$CB,$F4                           ] , 'vrcp28sd  xmm30{k7},xmm29,xmm28,{sae}'            );
  TestCase.testcase(68, [$62,$62,$95,$07,$CB,$31                           ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rcx]'            );
  TestCase.testcase(69, [$62,$22,$95,$07,$CB,$B4,$F0,$23,$01,$00,$00       ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rax+r14*8+0x123]' );
  TestCase.testcase(70, [$62,$62,$95,$07,$CB,$72,$7F                       ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx+0x3f8]'      );
  TestCase.testcase(71, [$62,$62,$95,$07,$CB,$B2,$00,$04,$00,$00           ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx+0x400]'      );
  TestCase.testcase(72, [$62,$62,$95,$07,$CB,$72,$80                       ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx-0x400]'      );
  TestCase.testcase(73, [$62,$62,$95,$07,$CB,$B2,$F8,$FB,$FF,$FF           ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx-0x408]'      );
  TestCase.testcase(74, [$62,$02,$7D,$48,$CC,$F5                           ] , 'vrsqrt28ps  zmm30,zmm29'                          );
  TestCase.testcase(75, [$62,$02,$7D,$4F,$CC,$F5                           ] , 'vrsqrt28ps  zmm30{k7},zmm29'                      );
  TestCase.testcase(76, [$62,$02,$7D,$CF,$CC,$F5                           ] , 'vrsqrt28ps  zmm30{k7}{z},zmm29'                   );
  TestCase.testcase(77, [$62,$02,$7D,$18,$CC,$F5                           ] , 'vrsqrt28ps  zmm30,zmm29,{sae}'                    );
  TestCase.testcase(78, [$62,$62,$7D,$48,$CC,$31                           ] , 'vrsqrt28ps  zmm30,zword [rcx]'                    );
  TestCase.testcase(79, [$62,$22,$7D,$48,$CC,$B4,$F0,$23,$01,$00,$00       ] , 'vrsqrt28ps  zmm30,zword [rax+r14*8+0x123]'        );
  TestCase.testcase(80, [$62,$62,$7D,$58,$CC,$31                           ] , 'vrsqrt28ps  zmm30,dword [rcx]{1to16}'             );
  TestCase.testcase(81, [$62,$62,$7D,$48,$CC,$72,$7F                       ] , 'vrsqrt28ps  zmm30,zword [rdx+0x1fc0]'             );
  TestCase.testcase(82, [$62,$62,$7D,$48,$CC,$B2,$00,$20,$00,$00           ] , 'vrsqrt28ps  zmm30,zword [rdx+0x2000]'             );
  TestCase.testcase(83, [$62,$62,$7D,$48,$CC,$72,$80                       ] , 'vrsqrt28ps  zmm30,zword [rdx-0x2000]'             );
  TestCase.testcase(84, [$62,$62,$7D,$48,$CC,$B2,$C0,$DF,$FF,$FF           ] , 'vrsqrt28ps  zmm30,zword [rdx-0x2040]'             );
  TestCase.testcase(85, [$62,$62,$7D,$58,$CC,$72,$7F                       ] , 'vrsqrt28ps  zmm30,dword [rdx+0x1fc]{1to16}'       );
  TestCase.testcase(86, [$62,$62,$7D,$58,$CC,$B2,$00,$02,$00,$00           ] , 'vrsqrt28ps  zmm30,dword [rdx+0x200]{1to16}'       );
  TestCase.testcase(87, [$62,$62,$7D,$58,$CC,$72,$80                       ] , 'vrsqrt28ps  zmm30,dword [rdx-0x200]{1to16}'       );
  TestCase.testcase(88, [$62,$62,$7D,$58,$CC,$B2,$FC,$FD,$FF,$FF           ] , 'vrsqrt28ps  zmm30,dword [rdx-0x204]{1to16}'       );
  TestCase.testcase(89, [$62,$02,$FD,$48,$CC,$F5                           ] , 'vrsqrt28pd  zmm30,zmm29'                          );
  TestCase.testcase(90, [$62,$02,$FD,$4F,$CC,$F5                           ] , 'vrsqrt28pd  zmm30{k7},zmm29'                      );
  TestCase.testcase(91, [$62,$02,$FD,$CF,$CC,$F5                           ] , 'vrsqrt28pd  zmm30{k7}{z},zmm29'                   );
  TestCase.testcase(92, [$62,$02,$FD,$18,$CC,$F5                           ] , 'vrsqrt28pd  zmm30,zmm29,{sae}'                    );
  TestCase.testcase(93, [$62,$62,$FD,$48,$CC,$31                           ] , 'vrsqrt28pd  zmm30,zword [rcx]'                    );
  TestCase.testcase(94, [$62,$22,$FD,$48,$CC,$B4,$F0,$23,$01,$00,$00       ] , 'vrsqrt28pd  zmm30,zword [rax+r14*8+0x123]'        );
  TestCase.testcase(95, [$62,$62,$FD,$58,$CC,$31                           ] , 'vrsqrt28pd  zmm30,qword [rcx]{1to8}'              );
  TestCase.testcase(96, [$62,$62,$FD,$48,$CC,$72,$7F                       ] , 'vrsqrt28pd  zmm30,zword [rdx+0x1fc0]'             );
  TestCase.testcase(97, [$62,$62,$FD,$48,$CC,$B2,$00,$20,$00,$00           ] , 'vrsqrt28pd  zmm30,zword [rdx+0x2000]'             );
  TestCase.testcase(98, [$62,$62,$FD,$48,$CC,$72,$80                       ] , 'vrsqrt28pd  zmm30,zword [rdx-0x2000]'             );
  TestCase.testcase(99, [$62,$62,$FD,$48,$CC,$B2,$C0,$DF,$FF,$FF           ] , 'vrsqrt28pd  zmm30,zword [rdx-0x2040]'             );
  TestCase.testcase(100, [$62,$62,$FD,$58,$CC,$72,$7F                       ] , 'vrsqrt28pd  zmm30,qword [rdx+0x3f8]{1to8}'        );
  TestCase.testcase(101, [$62,$62,$FD,$58,$CC,$B2,$00,$04,$00,$00           ] , 'vrsqrt28pd  zmm30,qword [rdx+0x400]{1to8}'        );
  TestCase.testcase(102, [$62,$62,$FD,$58,$CC,$72,$80                       ] , 'vrsqrt28pd  zmm30,qword [rdx-0x400]{1to8}'        );
  TestCase.testcase(103, [$62,$62,$FD,$58,$CC,$B2,$F8,$FB,$FF,$FF           ] , 'vrsqrt28pd  zmm30,qword [rdx-0x408]{1to8}'        );
  TestCase.testcase(104, [$62,$02,$15,$07,$CD,$F4                           ] , 'vrsqrt28ss  xmm30{k7},xmm29,xmm28'                );
  TestCase.testcase(105, [$62,$02,$15,$87,$CD,$F4                           ] , 'vrsqrt28ss  xmm30{k7}{z},xmm29,xmm28'             );
  TestCase.testcase(106, [$62,$02,$15,$17,$CD,$F4                           ] , 'vrsqrt28ss  xmm30{k7},xmm29,xmm28,{sae}'          );
  TestCase.testcase(107, [$62,$62,$15,$07,$CD,$31                           ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rcx]'          );
  TestCase.testcase(108, [$62,$22,$15,$07,$CD,$B4,$F0,$23,$01,$00,$00       ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rax+r14*8+0x123]' );
  TestCase.testcase(109, [$62,$62,$15,$07,$CD,$72,$7F                       ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx+0x1fc]'    );
  TestCase.testcase(110, [$62,$62,$15,$07,$CD,$B2,$00,$02,$00,$00           ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx+0x200]'    );
  TestCase.testcase(111, [$62,$62,$15,$07,$CD,$72,$80                       ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx-0x200]'    );
  TestCase.testcase(112, [$62,$62,$15,$07,$CD,$B2,$FC,$FD,$FF,$FF           ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx-0x204]'    );
  TestCase.testcase(113, [$62,$02,$95,$07,$CD,$F4                           ] , 'vrsqrt28sd  xmm30{k7},xmm29,xmm28'                );
  TestCase.testcase(114, [$62,$02,$95,$87,$CD,$F4                           ] , 'vrsqrt28sd  xmm30{k7}{z},xmm29,xmm28'             );
  TestCase.testcase(115, [$62,$02,$95,$17,$CD,$F4                           ] , 'vrsqrt28sd  xmm30{k7},xmm29,xmm28,{sae}'          );
  TestCase.testcase(116, [$62,$62,$95,$07,$CD,$31                           ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rcx]'          );
  TestCase.testcase(117, [$62,$22,$95,$07,$CD,$B4,$F0,$23,$01,$00,$00       ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rax+r14*8+0x123]' );
  TestCase.testcase(118, [$62,$62,$95,$07,$CD,$72,$7F                       ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx+0x3f8]'    );
  TestCase.testcase(119, [$62,$62,$95,$07,$CD,$B2,$00,$04,$00,$00           ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx+0x400]'    );
  TestCase.testcase(120, [$62,$62,$95,$07,$CD,$72,$80                       ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx-0x400]'    );
  TestCase.testcase(121, [$62,$62,$95,$07,$CD,$B2,$F8,$FB,$FF,$FF           ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx-0x408]'    );
  TestCase.testcase(122, [$62,$02,$7D,$48,$C8,$F5                           ] , 'vexp2ps  zmm30,zmm29'                             );
  TestCase.testcase(123, [$62,$02,$7D,$18,$C8,$F5                           ] , 'vexp2ps  zmm30,zmm29,{sae}'                       );
  TestCase.testcase(124, [$62,$62,$7D,$48,$C8,$31                           ] , 'vexp2ps  zmm30,zword [rcx]'                       );
  TestCase.testcase(125, [$62,$22,$7D,$48,$C8,$B4,$F0,$34,$12,$00,$00       ] , 'vexp2ps  zmm30,zword [rax+r14*8+0x1234]'          );
  TestCase.testcase(126, [$62,$62,$7D,$58,$C8,$31                           ] , 'vexp2ps  zmm30,dword [rcx]{1to16}'                );
  TestCase.testcase(127, [$62,$62,$7D,$48,$C8,$72,$7F                       ] , 'vexp2ps  zmm30,zword [rdx+0x1fc0]'                );
  TestCase.testcase(128, [$62,$62,$7D,$48,$C8,$B2,$00,$20,$00,$00           ] , 'vexp2ps  zmm30,zword [rdx+0x2000]'                );
  TestCase.testcase(129, [$62,$62,$7D,$48,$C8,$72,$80                       ] , 'vexp2ps  zmm30,zword [rdx-0x2000]'                );
  TestCase.testcase(130, [$62,$62,$7D,$48,$C8,$B2,$C0,$DF,$FF,$FF           ] , 'vexp2ps  zmm30,zword [rdx-0x2040]'                );
  TestCase.testcase(131, [$62,$62,$7D,$58,$C8,$72,$7F                       ] , 'vexp2ps  zmm30,dword [rdx+0x1fc]{1to16}'          );
  TestCase.testcase(132, [$62,$62,$7D,$58,$C8,$B2,$00,$02,$00,$00           ] , 'vexp2ps  zmm30,dword [rdx+0x200]{1to16}'          );
  TestCase.testcase(133, [$62,$62,$7D,$58,$C8,$72,$80                       ] , 'vexp2ps  zmm30,dword [rdx-0x200]{1to16}'          );
  TestCase.testcase(134, [$62,$62,$7D,$58,$C8,$B2,$FC,$FD,$FF,$FF           ] , 'vexp2ps  zmm30,dword [rdx-0x204]{1to16}'          );
  TestCase.testcase(135, [$62,$02,$FD,$48,$C8,$F5                           ] , 'vexp2pd  zmm30,zmm29'                             );
  TestCase.testcase(136, [$62,$02,$FD,$18,$C8,$F5                           ] , 'vexp2pd  zmm30,zmm29,{sae}'                       );
  TestCase.testcase(137, [$62,$62,$FD,$48,$C8,$31                           ] , 'vexp2pd  zmm30,zword [rcx]'                       );
  TestCase.testcase(138, [$62,$22,$FD,$48,$C8,$B4,$F0,$34,$12,$00,$00       ] , 'vexp2pd  zmm30,zword [rax+r14*8+0x1234]'          );
  TestCase.testcase(139, [$62,$62,$FD,$58,$C8,$31                           ] , 'vexp2pd  zmm30,qword [rcx]{1to8}'                 );
  TestCase.testcase(140, [$62,$62,$FD,$48,$C8,$72,$7F                       ] , 'vexp2pd  zmm30,zword [rdx+0x1fc0]'                );
  TestCase.testcase(141, [$62,$62,$FD,$48,$C8,$B2,$00,$20,$00,$00           ] , 'vexp2pd  zmm30,zword [rdx+0x2000]'                );
  TestCase.testcase(142, [$62,$62,$FD,$48,$C8,$72,$80                       ] , 'vexp2pd  zmm30,zword [rdx-0x2000]'                );
  TestCase.testcase(143, [$62,$62,$FD,$48,$C8,$B2,$C0,$DF,$FF,$FF           ] , 'vexp2pd  zmm30,zword [rdx-0x2040]'                );
  TestCase.testcase(144, [$62,$62,$FD,$58,$C8,$72,$7F                       ] , 'vexp2pd  zmm30,qword [rdx+0x3f8]{1to8}'           );
  TestCase.testcase(145, [$62,$62,$FD,$58,$C8,$B2,$00,$04,$00,$00           ] , 'vexp2pd  zmm30,qword [rdx+0x400]{1to8}'           );
  TestCase.testcase(146, [$62,$62,$FD,$58,$C8,$72,$80                       ] , 'vexp2pd  zmm30,qword [rdx-0x400]{1to8}'           );
  TestCase.testcase(147, [$62,$62,$FD,$58,$C8,$B2,$F8,$FB,$FF,$FF           ] , 'vexp2pd  zmm30,qword [rdx-0x408]{1to8}'           );
  TestCase.testcase(148, [$62,$02,$7D,$48,$CA,$F5                           ] , 'vrcp28ps  zmm30,zmm29'                            );
  TestCase.testcase(149, [$62,$02,$7D,$4F,$CA,$F5                           ] , 'vrcp28ps  zmm30{k7},zmm29'                        );
  TestCase.testcase(150, [$62,$02,$7D,$CF,$CA,$F5                           ] , 'vrcp28ps  zmm30{k7}{z},zmm29'                     );
  TestCase.testcase(151, [$62,$02,$7D,$18,$CA,$F5                           ] , 'vrcp28ps  zmm30,zmm29,{sae}'                      );
  TestCase.testcase(152, [$62,$62,$7D,$48,$CA,$31                           ] , 'vrcp28ps  zmm30,zword [rcx]'                      );
  TestCase.testcase(153, [$62,$22,$7D,$48,$CA,$B4,$F0,$34,$12,$00,$00       ] , 'vrcp28ps  zmm30,zword [rax+r14*8+0x1234]'         );
  TestCase.testcase(154, [$62,$62,$7D,$58,$CA,$31                           ] , 'vrcp28ps  zmm30,dword [rcx]{1to16}'               );
  TestCase.testcase(155, [$62,$62,$7D,$48,$CA,$72,$7F                       ] , 'vrcp28ps  zmm30,zword [rdx+0x1fc0]'               );
  TestCase.testcase(156, [$62,$62,$7D,$48,$CA,$B2,$00,$20,$00,$00           ] , 'vrcp28ps  zmm30,zword [rdx+0x2000]'               );
  TestCase.testcase(157, [$62,$62,$7D,$48,$CA,$72,$80                       ] , 'vrcp28ps  zmm30,zword [rdx-0x2000]'               );
  TestCase.testcase(158, [$62,$62,$7D,$48,$CA,$B2,$C0,$DF,$FF,$FF           ] , 'vrcp28ps  zmm30,zword [rdx-0x2040]'               );
  TestCase.testcase(159, [$62,$62,$7D,$58,$CA,$72,$7F                       ] , 'vrcp28ps  zmm30,dword [rdx+0x1fc]{1to16}'         );
  TestCase.testcase(160, [$62,$62,$7D,$58,$CA,$B2,$00,$02,$00,$00           ] , 'vrcp28ps  zmm30,dword [rdx+0x200]{1to16}'         );
  TestCase.testcase(161, [$62,$62,$7D,$58,$CA,$72,$80                       ] , 'vrcp28ps  zmm30,dword [rdx-0x200]{1to16}'         );
  TestCase.testcase(162, [$62,$62,$7D,$58,$CA,$B2,$FC,$FD,$FF,$FF           ] , 'vrcp28ps  zmm30,dword [rdx-0x204]{1to16}'         );
  TestCase.testcase(163, [$62,$02,$FD,$48,$CA,$F5                           ] , 'vrcp28pd  zmm30,zmm29'                            );
  TestCase.testcase(164, [$62,$02,$FD,$4F,$CA,$F5                           ] , 'vrcp28pd  zmm30{k7},zmm29'                        );
  TestCase.testcase(165, [$62,$02,$FD,$CF,$CA,$F5                           ] , 'vrcp28pd  zmm30{k7}{z},zmm29'                     );
  TestCase.testcase(166, [$62,$02,$FD,$18,$CA,$F5                           ] , 'vrcp28pd  zmm30,zmm29,{sae}'                      );
  TestCase.testcase(167, [$62,$62,$FD,$48,$CA,$31                           ] , 'vrcp28pd  zmm30,zword [rcx]'                      );
  TestCase.testcase(168, [$62,$22,$FD,$48,$CA,$B4,$F0,$34,$12,$00,$00       ] , 'vrcp28pd  zmm30,zword [rax+r14*8+0x1234]'         );
  TestCase.testcase(169, [$62,$62,$FD,$58,$CA,$31                           ] , 'vrcp28pd  zmm30,qword [rcx]{1to8}'                );
  TestCase.testcase(170, [$62,$62,$FD,$48,$CA,$72,$7F                       ] , 'vrcp28pd  zmm30,zword [rdx+0x1fc0]'               );
  TestCase.testcase(171, [$62,$62,$FD,$48,$CA,$B2,$00,$20,$00,$00           ] , 'vrcp28pd  zmm30,zword [rdx+0x2000]'               );
  TestCase.testcase(172, [$62,$62,$FD,$48,$CA,$72,$80                       ] , 'vrcp28pd  zmm30,zword [rdx-0x2000]'               );
  TestCase.testcase(173, [$62,$62,$FD,$48,$CA,$B2,$C0,$DF,$FF,$FF           ] , 'vrcp28pd  zmm30,zword [rdx-0x2040]'               );
  TestCase.testcase(174, [$62,$62,$FD,$58,$CA,$72,$7F                       ] , 'vrcp28pd  zmm30,qword [rdx+0x3f8]{1to8}'          );
  TestCase.testcase(175, [$62,$62,$FD,$58,$CA,$B2,$00,$04,$00,$00           ] , 'vrcp28pd  zmm30,qword [rdx+0x400]{1to8}'          );
  TestCase.testcase(176, [$62,$62,$FD,$58,$CA,$72,$80                       ] , 'vrcp28pd  zmm30,qword [rdx-0x400]{1to8}'          );
  TestCase.testcase(177, [$62,$62,$FD,$58,$CA,$B2,$F8,$FB,$FF,$FF           ] , 'vrcp28pd  zmm30,qword [rdx-0x408]{1to8}'          );
  TestCase.testcase(178, [$62,$02,$15,$07,$CB,$F4                           ] , 'vrcp28ss  xmm30{k7},xmm29,xmm28'                  );
  TestCase.testcase(179, [$62,$02,$15,$87,$CB,$F4                           ] , 'vrcp28ss  xmm30{k7}{z},xmm29,xmm28'               );
  TestCase.testcase(180, [$62,$02,$15,$17,$CB,$F4                           ] , 'vrcp28ss  xmm30{k7},xmm29,xmm28,{sae}'            );
  TestCase.testcase(181, [$62,$62,$15,$07,$CB,$31                           ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rcx]'            );
  TestCase.testcase(182, [$62,$22,$15,$07,$CB,$B4,$F0,$34,$12,$00,$00       ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rax+r14*8+0x1234]' );
  TestCase.testcase(183, [$62,$62,$15,$07,$CB,$72,$7F                       ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx+0x1fc]'      );
  TestCase.testcase(184, [$62,$62,$15,$07,$CB,$B2,$00,$02,$00,$00           ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx+0x200]'      );
  TestCase.testcase(185, [$62,$62,$15,$07,$CB,$72,$80                       ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx-0x200]'      );
  TestCase.testcase(186, [$62,$62,$15,$07,$CB,$B2,$FC,$FD,$FF,$FF           ] , 'vrcp28ss  xmm30{k7},xmm29,dword [rdx-0x204]'      );
  TestCase.testcase(187, [$62,$02,$95,$07,$CB,$F4                           ] , 'vrcp28sd  xmm30{k7},xmm29,xmm28'                  );
  TestCase.testcase(188, [$62,$02,$95,$87,$CB,$F4                           ] , 'vrcp28sd  xmm30{k7}{z},xmm29,xmm28'               );
  TestCase.testcase(189, [$62,$02,$95,$17,$CB,$F4                           ] , 'vrcp28sd  xmm30{k7},xmm29,xmm28,{sae}'            );
  TestCase.testcase(190, [$62,$62,$95,$07,$CB,$31                           ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rcx]'            );
  TestCase.testcase(191, [$62,$22,$95,$07,$CB,$B4,$F0,$34,$12,$00,$00       ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rax+r14*8+0x1234]' );
  TestCase.testcase(192, [$62,$62,$95,$07,$CB,$72,$7F                       ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx+0x3f8]'      );
  TestCase.testcase(193, [$62,$62,$95,$07,$CB,$B2,$00,$04,$00,$00           ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx+0x400]'      );
  TestCase.testcase(194, [$62,$62,$95,$07,$CB,$72,$80                       ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx-0x400]'      );
  TestCase.testcase(195, [$62,$62,$95,$07,$CB,$B2,$F8,$FB,$FF,$FF           ] , 'vrcp28sd  xmm30{k7},xmm29,qword [rdx-0x408]'      );
  TestCase.testcase(196, [$62,$02,$7D,$48,$CC,$F5                           ] , 'vrsqrt28ps  zmm30,zmm29'                          );
  TestCase.testcase(197, [$62,$02,$7D,$4F,$CC,$F5                           ] , 'vrsqrt28ps  zmm30{k7},zmm29'                      );
  TestCase.testcase(198, [$62,$02,$7D,$CF,$CC,$F5                           ] , 'vrsqrt28ps  zmm30{k7}{z},zmm29'                   );
  TestCase.testcase(199, [$62,$02,$7D,$18,$CC,$F5                           ] , 'vrsqrt28ps  zmm30,zmm29,{sae}'                    );
  TestCase.testcase(200, [$62,$62,$7D,$48,$CC,$31                           ] , 'vrsqrt28ps  zmm30,zword [rcx]'                    );
  TestCase.testcase(201, [$62,$22,$7D,$48,$CC,$B4,$F0,$34,$12,$00,$00       ] , 'vrsqrt28ps  zmm30,zword [rax+r14*8+0x1234]'       );
  TestCase.testcase(202, [$62,$62,$7D,$58,$CC,$31                           ] , 'vrsqrt28ps  zmm30,dword [rcx]{1to16}'             );
  TestCase.testcase(203, [$62,$62,$7D,$48,$CC,$72,$7F                       ] , 'vrsqrt28ps  zmm30,zword [rdx+0x1fc0]'             );
  TestCase.testcase(204, [$62,$62,$7D,$48,$CC,$B2,$00,$20,$00,$00           ] , 'vrsqrt28ps  zmm30,zword [rdx+0x2000]'             );
  TestCase.testcase(205, [$62,$62,$7D,$48,$CC,$72,$80                       ] , 'vrsqrt28ps  zmm30,zword [rdx-0x2000]'             );
  TestCase.testcase(206, [$62,$62,$7D,$48,$CC,$B2,$C0,$DF,$FF,$FF           ] , 'vrsqrt28ps  zmm30,zword [rdx-0x2040]'             );
  TestCase.testcase(207, [$62,$62,$7D,$58,$CC,$72,$7F                       ] , 'vrsqrt28ps  zmm30,dword [rdx+0x1fc]{1to16}'       );
  TestCase.testcase(208, [$62,$62,$7D,$58,$CC,$B2,$00,$02,$00,$00           ] , 'vrsqrt28ps  zmm30,dword [rdx+0x200]{1to16}'       );
  TestCase.testcase(209, [$62,$62,$7D,$58,$CC,$72,$80                       ] , 'vrsqrt28ps  zmm30,dword [rdx-0x200]{1to16}'       );
  TestCase.testcase(210, [$62,$62,$7D,$58,$CC,$B2,$FC,$FD,$FF,$FF           ] , 'vrsqrt28ps  zmm30,dword [rdx-0x204]{1to16}'       );
  TestCase.testcase(211, [$62,$02,$FD,$48,$CC,$F5                           ] , 'vrsqrt28pd  zmm30,zmm29'                          );
  TestCase.testcase(212, [$62,$02,$FD,$4F,$CC,$F5                           ] , 'vrsqrt28pd  zmm30{k7},zmm29'                      );
  TestCase.testcase(213, [$62,$02,$FD,$CF,$CC,$F5                           ] , 'vrsqrt28pd  zmm30{k7}{z},zmm29'                   );
  TestCase.testcase(214, [$62,$02,$FD,$18,$CC,$F5                           ] , 'vrsqrt28pd  zmm30,zmm29,{sae}'                    );
  TestCase.testcase(215, [$62,$62,$FD,$48,$CC,$31                           ] , 'vrsqrt28pd  zmm30,zword [rcx]'                    );
  TestCase.testcase(216, [$62,$22,$FD,$48,$CC,$B4,$F0,$34,$12,$00,$00       ] , 'vrsqrt28pd  zmm30,zword [rax+r14*8+0x1234]'       );
  TestCase.testcase(217, [$62,$62,$FD,$58,$CC,$31                           ] , 'vrsqrt28pd  zmm30,qword [rcx]{1to8}'              );
  TestCase.testcase(218, [$62,$62,$FD,$48,$CC,$72,$7F                       ] , 'vrsqrt28pd  zmm30,zword [rdx+0x1fc0]'             );
  TestCase.testcase(219, [$62,$62,$FD,$48,$CC,$B2,$00,$20,$00,$00           ] , 'vrsqrt28pd  zmm30,zword [rdx+0x2000]'             );
  TestCase.testcase(220, [$62,$62,$FD,$48,$CC,$72,$80                       ] , 'vrsqrt28pd  zmm30,zword [rdx-0x2000]'             );
  TestCase.testcase(221, [$62,$62,$FD,$48,$CC,$B2,$C0,$DF,$FF,$FF           ] , 'vrsqrt28pd  zmm30,zword [rdx-0x2040]'             );
  TestCase.testcase(222, [$62,$62,$FD,$58,$CC,$72,$7F                       ] , 'vrsqrt28pd  zmm30,qword [rdx+0x3f8]{1to8}'        );
  TestCase.testcase(223, [$62,$62,$FD,$58,$CC,$B2,$00,$04,$00,$00           ] , 'vrsqrt28pd  zmm30,qword [rdx+0x400]{1to8}'        );
  TestCase.testcase(224, [$62,$62,$FD,$58,$CC,$72,$80                       ] , 'vrsqrt28pd  zmm30,qword [rdx-0x400]{1to8}'        );
  TestCase.testcase(225, [$62,$62,$FD,$58,$CC,$B2,$F8,$FB,$FF,$FF           ] , 'vrsqrt28pd  zmm30,qword [rdx-0x408]{1to8}'        );
  TestCase.testcase(226, [$62,$02,$15,$07,$CD,$F4                           ] , 'vrsqrt28ss  xmm30{k7},xmm29,xmm28'                );
  TestCase.testcase(227, [$62,$02,$15,$87,$CD,$F4                           ] , 'vrsqrt28ss  xmm30{k7}{z},xmm29,xmm28'             );
  TestCase.testcase(228, [$62,$02,$15,$17,$CD,$F4                           ] , 'vrsqrt28ss  xmm30{k7},xmm29,xmm28,{sae}'          );
  TestCase.testcase(229, [$62,$62,$15,$07,$CD,$31                           ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rcx]'          );
  TestCase.testcase(230, [$62,$22,$15,$07,$CD,$B4,$F0,$34,$12,$00,$00       ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rax+r14*8+0x1234]' );
  TestCase.testcase(231, [$62,$62,$15,$07,$CD,$72,$7F                       ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx+0x1fc]'    );
  TestCase.testcase(232, [$62,$62,$15,$07,$CD,$B2,$00,$02,$00,$00           ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx+0x200]'    );
  TestCase.testcase(233, [$62,$62,$15,$07,$CD,$72,$80                       ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx-0x200]'    );
  TestCase.testcase(234, [$62,$62,$15,$07,$CD,$B2,$FC,$FD,$FF,$FF           ] , 'vrsqrt28ss  xmm30{k7},xmm29,dword [rdx-0x204]'    );
  TestCase.testcase(235, [$62,$02,$95,$07,$CD,$F4                           ] , 'vrsqrt28sd  xmm30{k7},xmm29,xmm28'                );
  TestCase.testcase(236, [$62,$02,$95,$87,$CD,$F4                           ] , 'vrsqrt28sd  xmm30{k7}{z},xmm29,xmm28'             );
  TestCase.testcase(237, [$62,$02,$95,$17,$CD,$F4                           ] , 'vrsqrt28sd  xmm30{k7},xmm29,xmm28,{sae}'          );
  TestCase.testcase(238, [$62,$62,$95,$07,$CD,$31                           ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rcx]'          );
  TestCase.testcase(239, [$62,$22,$95,$07,$CD,$B4,$F0,$34,$12,$00,$00       ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rax+r14*8+0x1234]' );
  TestCase.testcase(240, [$62,$62,$95,$07,$CD,$72,$7F                       ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx+0x3f8]'    );
  TestCase.testcase(241, [$62,$62,$95,$07,$CD,$B2,$00,$04,$00,$00           ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx+0x400]'    );
  TestCase.testcase(242, [$62,$62,$95,$07,$CD,$72,$80                       ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx-0x400]'    );
  TestCase.testcase(243, [$62,$62,$95,$07,$CD,$B2,$F8,$FB,$FF,$FF           ] , 'vrsqrt28sd  xmm30{k7},xmm29,qword [rdx-0x408]'    );
  TestCase.Stop();
  TestCase.SaveToFile('../../../log/x64.avx512er.log');
end;

end.