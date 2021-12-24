require 'json'

begin
    name    = "asd"
    outputs = JSON.parse %x{ terraform output -json -no-color }
    output1 = outputs['output1_' << name]['value']
    output2 = outputs['output2_' << name]['value']
    puts output1, output2
end
