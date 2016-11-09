require File.expand_path(File.dirname(__FILE__) + '/neo')

def find_peaks(list)
	out = []
	for i in 1..list.length - 2
		if (list[i - 1] < list[i]) &&
		 	 (list[i + 1] < list[i])
			out.push(list[i])
		end
	end
	return out
end

class Peaks < Neo::Koan

  def test_peaks
  	test_array = [1,2,1,3,1,4,1,5,1,6,1,7,1,8,1,9,1]
  	array = find_peaks(test_array)
    assert_equal array, (2...10).to_a

  	test_array = [1,2,3,4,5,6,7,8,9,0]
  	array = find_peaks(test_array)
    assert_equal array, [9]
  end

end
