

extension StringX on String {
    String userName() {
    if (isEmpty) return "";
    return contains('@') ? split('@').first : this;
  }
}
