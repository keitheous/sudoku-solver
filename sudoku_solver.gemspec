
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sudoku_solver/version"

Gem::Specification.new do |spec|
  spec.name          = "sudoku_solver"
  spec.version       = SudokuSolver::VERSION
  spec.authors       = ["keitheous"]
  spec.email         = ["keithchongwy@gmail.com"]

  spec.summary       = %q{Solve your sudoku for you.}
  spec.description   = %q{This app solves your sudoku problem for you. This would be an awesome project to work on. My friend was solving a sudoku puzzle one day and it occurred to us that this would be a great practice problem to work on.}
  spec.homepage      = "https://github.com/keitheous/sudoku-solver."
  # spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
