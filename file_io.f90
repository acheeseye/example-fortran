! this program demonstrates file I/O
! open (unit=u, file=filename, status=st, action=act)
! unit is positive integer (file descriptor?)
! filename is filename (exists for new, old, replace, DNE for scratch)
! status is:    'new'       creates new file that doesn't exsist
!               'old'       open existing file
!               'replace'   basically trunc
!               'scratch'   only exists during runtime
! action is read, write, or readwrite

