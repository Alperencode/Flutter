class House{
  /**
    // Used private variables

   * used '_' to make variables private
   * used getters to access private variables
   * and made them public again with using getters and setters  
   */
 
  late int _windows;
  late int _doors;
  late String _typeOfWalls;

  House({required int windows,required int doors,required String typeOfWalls}):
  this._windows = windows,
  this._doors = doors,
  this._typeOfWalls = typeOfWalls; 

  // Getters 
  // Returns the value
  int get windows => _windows;
  int get doors => _doors;
  String get typeOfWalls => _typeOfWalls;

  // Setters
  // Sets the value
  set windows(int no) => _windows = no;
  set doors(int no) => _doors = no;
  set typeOfWalls(String type) => _typeOfWalls = type;

}