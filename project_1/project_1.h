#pragma once

#if defined(_WIN32) && !defined(API_STATIC)
#	if defined(API_EXPORTS)
#		define API(ret) __declspec(dllexport) ret
#	else
#		define API(ret) __declspec(dllimport) ret
#	endif
#else
#	define API(ret) ret
#endif

API(char*) get_hello_world(void);
