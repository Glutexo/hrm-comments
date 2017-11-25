  $: << File.join(File.dirname(__FILE__), 'lib')
  require('hrm-comments')

task default: %w[example]

task :example do
  # Write MAX. Taken from szendont’s infographics. See README for links.
  module HRMComments
    comment = Comment.new
    comment.polylines << Polyline.new([[9493, 47079],
                                       [12200, 19859],
                                       [13554, 0]])
    comment.polylines << Polyline.new([[14688, 0],
                                       [15192, 9000],
                                       [17710, 36365],
                                       [17947, 18121],
                                       [18375, 12619],
                                       [18897, 9289],
                                       [19325, 7841],
                                       [19562, 7552],
                                       [19895, 8420],
                                       [23267, 25216],
                                       [26402, 42590],
                                       [27494, 49830],
                                       [28064, 55621],
                                       [28349, 59965],
                                       [28397, 64598]])
    comment.polylines << Polyline.new([[31911, 55042],
                                       [31959, 16963],
                                       [32101, 10303],
                                       [32386, 10158],
                                       [36091, 20293],
                                       [38324, 27243],
                                       [40508, 35351],
                                       [42028, 42446],
                                       [42693, 46934],
                                       [42883, 48671],
                                       [42551, 49251]])
    comment.polylines << Polyline.new([[33669, 41866],
                                       [34476, 40563],
                                       [35996, 36509],
                                       [38704, 31297],
                                       [41126, 28836]])
    comment.polylines << Polyline.new([[45448, 46355],
                                       [48298, 34048],
                                       [50388, 27388],
                                       [52953, 20727],
                                       [57275, 12909],
                                       [58652, 11316]])
    comment.polylines << Polyline.new([[46493, 12909],
                                       [51148, 26664],
                                       [56895, 44617],
                                       [59555, 53594],
                                       [62072, 63005]])
    puts(comment)
  end
end
