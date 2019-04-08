.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
Include Irvine32.inc
.data
	Sum DWORD ?
.code
main PROC
	call CreateOutputFile
	mov eax, 5
	add eax, 6
	mov Sum, eax

	INVOKE ExitProcess,0
main ENDP
END main