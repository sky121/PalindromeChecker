public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String empty = new String();
  String empty2 = new String();
  for (int i = word.length ()-1; i>=0; i--) {

    if (Character.isLetter(word.charAt(i))) {
      empty = empty +word.substring(i, i+1);
    } 


    if (empty.equalsIgnoreCase(empty2)) {
      return true;
    }
  }
  for (int i = empty.length ()-1; i>=0; i--) {

    empty2 = empty2 +empty.substring(i, i+1);
  }


  if (empty.equalsIgnoreCase(empty2)) {
    return true;
  }

  //your code here
  return false;
}
