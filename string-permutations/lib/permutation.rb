class String
  def permutations
    return nil if self.empty?

    self.split('').sort.permutation.map {|perm| perm.join }
  end
end
