
/*
commands to run
    go mod init "test"
    go mod tidy
    go test
*/

package test

import (
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/require"
)

func TestTerraformEchoModule(t *testing.T) {
	// Construct the terraform options with default retryable errors to handle the most common
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// Set the path to the Terraform code that will be tested.
		TerraformDir: "./complete",
	})

	// Run "terraform init" and "terraform plan". Fail the test if there are any errors.
	_, err := terraform.InitAndPlanE(t, terraformOptions)
	require.NoError(t, err)
}

