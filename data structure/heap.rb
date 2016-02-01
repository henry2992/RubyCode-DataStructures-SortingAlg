class Heap 


    def initialize(args)
    
        @heap = Array.new
        @count = 0

    end
    
    def insert(value)
        
        number_elements = @heap.count
        @heap << value
        @count = @count + 1


    end



   def bubble_up(pair, offset)
        # Push an element up the tree, if need be
        parent = offset / 2

        while (offset > 0 && @elements[parent].last > pair.last)
            @elements[parent], @elements[offset] = @elements[offset], @elements[parent]
            offset = parent
            parent = offset / 2
        end
    end

    private void percolatingDown(int k)
  
     {
      AnyType tmp = heap[k];
      int child;

      for(; 2*k <= size; k = child)
      {
         child = 2*k;

         if(child != size && heap[child].compareTo(heap[child + 1]) > 0) 
            child++;

         if(tmp.compareTo(heap[child]) > 0)  
            heap[k] = heap[child];
         else
                break;
      }
      heap[k] = tmp;
   }
    
end

heap = Heap.create_max_heap



