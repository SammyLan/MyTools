
// MyWorkspace.h : PROJECT_NAME Ӧ�ó������ͷ�ļ�
//

#pragma once

#ifndef __AFXWIN_H__
	#error "�ڰ������ļ�֮ǰ������stdafx.h�������� PCH �ļ�"
#endif

#include "resource.h"		// ������


// CMyWorkspaceApp: 
// �йش����ʵ�֣������ MyWorkspace.cpp
//

class CMyWorkspaceApp : public CWinApp
{
public:
	CMyWorkspaceApp();

// ��д
public:
	virtual BOOL InitInstance();

// ʵ��

	DECLARE_MESSAGE_MAP()
};

extern CMyWorkspaceApp theApp;