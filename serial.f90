        program serialpi
                implicit none
                integer :: i, time
                real :: niter, x, y, inCircle, z, pi
                i=0
                inCircle = 0
                niter = 100000
                
                call time(time)
                call random_seed(time)

                do i=0,niter
                        call random_number(x)
                        call random_number(y)
                        z = sqrt(x**2+y**2)
                        if (z <= 1) then
                                inCircle = inCircle + 1
                        end if
                enddo
                
                pi = 4*(inCircle/niter)
                print*,pi
        end program
