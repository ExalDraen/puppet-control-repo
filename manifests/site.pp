# Include all classes named in the "classes" array. 
# Cf. https://docs.puppet.com/puppet/5.2/hiera_use_function.html#examples
lookup('classes', Array[String], 'unique').include
