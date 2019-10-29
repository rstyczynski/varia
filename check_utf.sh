cat >arabic.java <<EOF
class  arabic {
    public  static  void  main(String[]  args)  throws  Exception  {
        String sequence = "ٱلْأَبْجَدِيَّة ٱلْعَرَبِيَّ";
        byte[] bytes  =  sequence.getBytes();
        System.out.print("LANG set to:" + System.getenv("LANG"));
        System.out.print("\tfile.encoding set to:" + System.getProperty("file.encoding"));
        System.out.println("\tSequence:"  +  sequence  +  ", number of bytes:" + bytes.length);
    }
}
EOF

function runAll() {
export LANG=en_US.UTF-8; javac arabic.java; unset LANG; java arabic 
export LANG=en_US.UTF-8; javac arabic.java; export LANG=en_US; java arabic 
export LANG=en_US.UTF-8; javac arabic.java; export LANG=en_US; java -Dfile.encoding="UTF-8" arabic 
export LANG=en_US.UTF-8; javac arabic.java; export LANG=en_US.UTF-8; java arabic
export LANG=en_US.UTF-8; javac arabic.java; export LANG=en_US.UTF-16; java arabic
export LANG=en_US.UTF-8; javac arabic.java; export LANG=en_US.UTF-16; java -Dfile.encoding="UTF-8" arabic 
export LANG=en_US.UTF-8; javac arabic.java; export LANG=ar_SA.arabic8; java arabic
export LANG=en_US.UTF-8; javac arabic.java; export LANG=ar_SA.arabic8; java -Dfile.encoding="UTF-8" arabic
unset LANG
}

runAll
