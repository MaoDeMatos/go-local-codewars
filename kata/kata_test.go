package kata_test

import (
	. "go-codewars/kata"

	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"
)

var _ = Describe("Sample Test Cases:", func() {
	It("Should return the correct values for the sample test cases!", func() {
		Expect(Solve("a")).To(Equal("a"))
	})
})
