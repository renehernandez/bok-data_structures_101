# frozen_string_literal: true

module DataStructures101
  # Heap implementation
  # @author Rene Hernandez
  # @since 0.3
  class Heap

    attr_reader :min_heap

    def initialize(*args, min_heap: false)
      @data = args
      @min_heap = min_heap
      @heap_check = ->(i, j) { return @data[i] >= @data[j] }

      if @min_heap
        @heap_check = ->(i, j) { return @data[i] <= @data[j] }
      end

      build_heap
    end

    def size
      @data.size
    end

    def [](i)
      @data[i]
    end

    def push(*values)
      values.each do |val|
        @data.push(val)
        upheap(@data.size - 1)
      end
      self
    end

    def pop
      result = @data.first
      @data[0] = @data.pop
      heapify(0)
      result
    end

    def merge(heap)
      new_array = @data + heap.instance_variable_get(:@data)

      Heap.new(new_array, min_heap: self.min_heap)
    end
    
    def left(i)
      2 * i + 1
    end

    def right(i)
      2 * (i + 1)
    end

    def parent(i)
      (i - 1) / 2
    end

    private

    def build_heap
      start = @data.size / 2

      start.downto(0) { |i| heapify(i) }
    end

    def heapify(i)
      l = left(i)
      r = right(i)

      head = i
      head = l if l < @data.size && @heap_check.call(l, head)
      head = r if r < @data.size && @heap_check.call(r, head)

      if head != i
        @data[i], @data[head] = @data[head], @data[i]
        heapify(head)
      end
    end

    def upheap(idx)
      p = parent(idx)

      if @heap_check.call(idx, p)
        @data[idx], @data[p] = @data[p], @data[idx]
        upheap(p)
      end
    end

  end
end
