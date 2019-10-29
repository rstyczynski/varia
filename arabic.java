class  arabic {
    public  static  void  main(String[]  args)  throws  Exception  {
        String sequence = "ٱلْأَبْجَدِيَّة ٱلْعَرَبِيَّ";
        byte[] bytes  =  sequence.getBytes();
        System.out.print("LANG set to:" + System.getenv("LANG"));
        System.out.print("\tfile.encoding set to:" + System.getProperty("file.encoding"));
        System.out.println("\tSequence:"  +  sequence  +  ", number of bytes:" + bytes.length);
    }
}
