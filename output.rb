require 'json'

begin
    name = "asd"

    stdout = %x{ terraform-bin output -json -no-color }
    puts stdout

    outputs = JSON.parse stdout
    output1 = outputs['output1_' << name]['value']
    output2 = outputs['output2_' << name]['value']
    puts output1, output2
end
