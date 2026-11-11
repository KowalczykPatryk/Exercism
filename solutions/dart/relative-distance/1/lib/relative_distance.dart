import 'dart:collection';

class RelativeDistance {
  // Normally this would be coded in the undirected graph structure
  // but actually this is one of the ways to code undirected graph: adjacency list
  // so this task is to find the shortest path from one node to the other
  // BFS (Breadth first search) algorithm is for finding shortest path in the unweighted graph
  // Depth-First Search (DFS) uses is using stack recursion
  // BFS relies on a First-In-First-Out (FIFO) queue
  final familyTree;
  RelativeDistance(this.familyTree);
  int degreesOfSeparation(String root, String target)
  {
    int distance = 0;
    Set<String> visited = {};
    final Queue<String> toVisit = Queue<String>();
    toVisit.add(root);
    visited.add(root);
    while (toVisit.isNotEmpty)
    {
      int currentLength = toVisit.length; // how many there is in current layer
      // looping through one layer
      for (int i = 0; i < currentLength; i++)
      {
        String current = toVisit.removeFirst();
        // check whether we have already found the relative
        if (current == target)
        {
          return distance;
        }

        // relative distance of one is among:
        // siblings and parent children
        
        // check among siblings
        for (List<String> siblings in familyTree.values)
        {
          if (siblings.contains(current))
          {
            if (siblings.contains(target))
            {
              return ++distance;
            }
            for (String sibling in siblings)
            {
              if (!visited.contains(sibling))
              {
                toVisit.add(sibling);
              }
            }
            visited.addAll(siblings);
          }
        }
        //add children of the current node
        if (familyTree.containsKey(current))
        {
          List<String> children = familyTree[current];
          for (String child in children)
          {
            if (!visited.contains(child))
            {
              toVisit.add(child);
            }
          }
          visited.addAll(children);
        }
        // add parents of the current node
        for (MapEntry entry in familyTree.entries)
        {
          for (String name in entry.value)
          {
            if (name == current)
            {
              if(!visited.contains(entry.key))
              {
                toVisit.add(entry.key);
                visited.add(entry.key);
              }
              break;
            }
          }
        }
      }
      distance++;
    }
    return -1;
  }
}


