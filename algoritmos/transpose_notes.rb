SCALE_SIZE = 12

def transpose(notes, positions)
  transposed_notes = []
  notes.each do |note|
    transposed_notes.push(convert_note(note, positions))
  end
  transposed_notes
end

def convert_note(note_to_convert, positions)
  scale = %w(A A# B C C# D D# E F F# G G#)
  equivalences = { Bb: 'A#', Db: 'C#', Eb: 'D#', Gb: 'F#', Ab: 'G#'}

  index = scale.find_index do |note_in_scale|
    note_to_convert == note_in_scale ||
    equivalences[note_to_convert.to_sym] == note_in_scale
  end

  new_index = index + positions

  if((new_index + 1) > SCALE_SIZE)
    index_new_scale = new_index % 12
    scale[index_new_scale]  
  else
    scale[new_index]
  end
end

p transpose(['G', 'G', 'G', 'Eb'], 4)
p transpose(['A', 'A', 'A', 'Bb', 'Bb', 'G', 'C', 'Bb', 'Bb', 'A', 'A'], 2)
p transpose(['A', 'C', 'D'], 15)