package testcases

// E2E-CLI-031 - Kics  scan command with --report-formats and --output-path flags
// should export the results based on the formats provided by this flag.
func init() { //nolint
	testSample := TestCase{
		Name: "should export the results based on different formats [E2E-CLI-031]",
		Args: args{
			Args: []cmdArgs{
				[]string{"scan", "--output-path", "output", "--output-name", "E2E_CLI_031_RESULT",
					"--report-formats", "CycloneDX",
					"-q", "../assets/queries", "-p", "fixtures/samples"},
			},
			ExpectedResult: []ResultsValidation{
				{
					ResultsFile:    "E2E_CLI_031_RESULT",
					ResultsFormats: []string{"cyclonedx"},
				},
			},
		},
		WantStatus: []int{50},
	}

	Tests = append(Tests, testSample)
}
