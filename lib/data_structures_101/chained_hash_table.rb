# frozen_string_literal: true

module DataStructures101
  # HashTable implementation using separate chaining strategy
  # for collision-resolution
  # It subclasses Hash::BaseHashTable
  # @author Rene Hernandez
  # @since 0.2
  class ChainedHashTable < Hash::BaseHashTable
    def initialize(capacity: 31, prime: 109_345_121, compression_lambda: nil)
      super
    end

    private

    def bucket_find(hash_code, key)
      bucket = @table[hash_code]
      return nil if bucket.nil?

      bucket.find(key)
    end

    def bucket_insert(hash_code, key, value)
      bucket = @table[hash_code]
      bucket = @table[hash_code] = Hash::Bucket.new if bucket.nil?

      old_size = bucket.size
      old_value = bucket.insert(key, value)
      @size += (bucket.size - old_size)

      old_value
    end

    def bucket_delete(hash_code, key)
      bucket = @table[hash_code]
      return nil if bucket.nil?

      old_size = bucket.size
      value = bucket.delete(key)
      @size -= (old_size - bucket.size)

      value
    end

    def bucket_each
      @table.each do |bucket|
        next if bucket.nil?

        bucket.each do |key, value|
          yield(key, value)
        end
      end
    end
  end
end
