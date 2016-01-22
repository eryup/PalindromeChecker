public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word=word.toLowerCase();
  String newString=new String();
  for(int i=0;i<word.length();i++)
  {
  if(!word.substring(i,i+1).equals(" "))
  {
  newString = newString + word.charAt(i);
  }
  }
  word=newString;
  String letter="";
  for(int i=0;i<word.length();i++)
  {
  if(Character.isLetter(word.charAt(i))==true)
  letter=letter+word.charAt(i);
  }
  word=letter;
  String back="";
  for(int i=word.length()-1;i>=0;i--)
  {
    back=back + word.charAt(i);
  }
  if(word.equals(back)==true)
    return true;

  return false;
}

