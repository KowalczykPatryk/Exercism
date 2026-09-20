import "package:robot_simulator/orientation.dart";
import "package:robot_simulator/position.dart";

class Robot {
  Position position;
  Orientation orientation;
  Robot(this.position, this.orientation);
  void move(String sequence)
  {
    for (String type in sequence.split(""))
    {
      if (type == "R")
      {
        if (this.orientation == Orientation.north)
        {
          this.orientation = Orientation.east;
        }
        else if (this.orientation == Orientation.east)
        {
          this.orientation = Orientation.south;
        }
        else if (this.orientation == Orientation.south)
        {
          this.orientation = Orientation.west;
        }
        else if (this.orientation == Orientation.west)
        {
          this.orientation = Orientation.north;
        }
      }
      else if (type == "L")
      {
        if (this.orientation == Orientation.north)
        {
          this.orientation = Orientation.west;
        }
        else if (this.orientation == Orientation.east)
        {
          this.orientation = Orientation.north;
        }
        else if (this.orientation == Orientation.south)
        {
          this.orientation = Orientation.east;
        }
        else if (this.orientation == Orientation.west)
        {
          this.orientation = Orientation.south;
        }
      }
      else if (type == "A")
      {
        if (this.orientation == Orientation.north)
        {
          this.position.y++;
        }
        else if (this.orientation == Orientation.east)
        {
          this.position.x++;
        }
        else if (this.orientation == Orientation.south)
        {
          this.position.y--;
        }
        else if (this.orientation == Orientation.west)
        {
          this.position.x--;
        }
      }
    }
  }
}
