ArrayList<BodySerialized> readObject() {
  try {
    FileInputStream fis = new FileInputStream(sketchPath() + "\\" + "bodyData01.dat");
    ObjectInputStream ois = new ObjectInputStream(fis);
    ArrayList<BodySerialized> _foo = (ArrayList<BodySerialized>)ois.readObject();
    ois.close();
    return _foo;
  } 
  catch (FileNotFoundException e) {
    e.printStackTrace();
  } 
  catch (IOException e) {
    e.printStackTrace();
  } 
  catch (ClassNotFoundException e) {
    e.printStackTrace();
  }
  return null;
}
