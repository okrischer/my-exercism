import ballerina/test;

@test:Config
function testHello() {
    test:assertEquals(hello(), "Hello, World!");
}
