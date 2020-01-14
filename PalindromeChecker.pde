public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }

}
public boolean palindrome(String word)
{
  String drow = reverse(word);
  drow = onlyLetters(drow);
  word = onlyLetters(word);
  if(word.equals(drow))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = 0; i < str.length(); i++){
      sNew = sNew + str.substring(str.length() - 1 - i, str.length() - i);
    }
    //System.out.println(sNew);
    return sNew;
}

public String onlyLetters(String str){
  str.toLowerCase();
  str = noSpaces(str);
  String temp = new String();
  for(int i = 0; i < str.length(); i++){
    if(Character.isLetter(str.charAt(i))){
      temp = temp + str.substring(i, i + 1);
    }
  }
  return temp;
}

public String noSpaces(String sWord){
  String word = new String();
  for(int i = 0; i < sWord.length(); i++){
    if(!sWord.substring(i, i+1).equals(" ")){
      word = word + sWord.substring(i, i+1);
    }
  }
  return word;
}
