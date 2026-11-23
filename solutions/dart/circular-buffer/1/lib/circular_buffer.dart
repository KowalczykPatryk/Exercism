/* These implementation definitions enable zero-argument contructors:
 *    throw EmptyBufferException();
 */
// this is more like FIFO queue
class EmptyBufferException implements Exception {}

class FullBufferException implements Exception {}

class CircularBuffer {
  List buffer = [];
  int size;
  CircularBuffer(this.size);
  int read()
  {
    if (this.buffer.length == 0)
    {
      throw EmptyBufferException();
    }
    return this.buffer.removeAt(0);
  }
  void write(int value, {bool force = false})
  {
    if (this.size == this.buffer.length)
    {
      if (force == true)
      {
        this.buffer.removeAt(0);
        this.buffer.add(value);
        return;
      }
      throw FullBufferException();
    }
    this.buffer.add(value);
  }
  void clear()
  {
    this.buffer = [];
  }
}
