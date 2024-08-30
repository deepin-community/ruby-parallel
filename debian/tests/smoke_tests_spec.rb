require 'etc'
require 'benchmark'
require 'parallel'

describe 'Parallel' do
  it 'works for a simple case' do
    skip if Etc.nprocessors < 2
    sequential = Benchmark.measure { (0..100).each { sleep 0.01} }
    parallel = Benchmark.measure { Parallel.each(0..100) { sleep 0.01} }
    expect(parallel.real).to be < sequential.real
  end
end
