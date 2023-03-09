program sort_numbers

implicit none

integer :: num1, num2, num3

! Read in the three numbers
write(*,*) "Enter three numbers:"
read(*,*) num1, num2, num3

call sorted_numbers(num1, num2, num3)

end program

subroutine sorted_numbers(num1, num2, num3)

implicit none

integer, intent(inout) :: num1, num2, num3
integer :: temp

! Sort the numbers using a simple bubble sort algorithm
if (num1 > num2) then
    temp = num1
    num1 = num2
    num2 = temp
end if

if (num2 > num3) then
    temp = num2
    num2 = num3
    num3 = temp
end if

if (num1 > num2) then
    temp = num1
    num1 = num2
    num2 = temp
end if

! Write out the sorted numbers
write(*,*) "The sorted numbers are:", num1, num2, num3


end subroutine sorted_numbers
