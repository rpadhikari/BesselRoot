   Subroutine secant(n, x1, x2, tol, root, count)
!============================================================
! This subroutine camputes the zeros of Bessel function J(n,x)
! Author:  Rajendra Adhikari
! Department of natural Sciences ( Applied Physics)
! Kathmandu University, Dhulikhel, Kavre, Nepal
! Date: Sun, 24 Jul 2016 07:13:10 +0545

! input variables:
! x1 and x2, must be VERY CLOSE to the root as seen on the graph
! Order of Bessel function, n
! tol, error tolerance
! output variables:
! root  - root of the Bessel function
!============================================================
  implicit none
  integer(4) i, iter, n, count
  real(8) bessel, x1, x2, x3, root
  real(8) tol, df
  parameter(iter=200) 
!* Iterative refining the solution
  count=0
  do i=1,iter
    df = (bessel(n,(x2))-bessel(n,(x1)))/(x2-x1) 
    x3 = x2 - bessel(n,(x2))/df
! check the step. if it is improbably large - use bisection 
    if(abs(x3) > 10.0d0*abs(x2)) x3 = (x2+x1)/2.0d0
! condition(s) to stop iterations)
    if(abs(bessel(n,x3)) <= tol) exit 
    x1 = x2;
    x2 = x3;
  count=count+1
  end do
  root=x3

end subroutine secant


