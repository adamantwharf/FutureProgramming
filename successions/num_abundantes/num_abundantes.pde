abundant_object sequence;
void setup()
{
  size (500,500 );
  colorMode (HSB, 360, 100, 100);
  sequence = new abundant_object();
  noLoop();
}
void draw ()
{
  sequence.display(12);
}