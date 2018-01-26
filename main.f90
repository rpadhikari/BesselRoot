program main
  implicit none
  integer(4) n, count
  real(8) x1, x2, eps, root
  open(1,file='in.dat', action='read', status='old')  
  ! read parameters from file
  read(1,*) n
  read(1,*) x1
  read(1,*) x2
  read(1,*) eps
  call secant(n, x1, x2, eps, root, count)
  write(*,10) root
  write(*,*) count
  10 format(f20.15)
end program main

