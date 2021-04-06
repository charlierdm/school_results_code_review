class Grades

  def scores(list)
    return "No results given" if list.empty?

    results = ["Green", "Amber", "Red"]

    test_result = list.delete(" ").split(",").map { |result| result.capitalize }

    output_array = []

    results.map do |colour|
      if test_result.count(colour) > 0
        output_array.push("#{colour}: #{test_result.count(colour)}")
      end
    end

    output_array.join("\n")

  end

end