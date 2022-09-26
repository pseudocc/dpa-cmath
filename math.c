int fac(int n) {
  if (n < 0)
    return -fac(-n);
  switch (n) {
  case 0:
  case 1:
    return 1;
  default:
    return n * fac(n - 1);
  }
}