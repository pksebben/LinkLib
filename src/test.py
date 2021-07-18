import unittest
import os

from app import app

class TestConfig(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.tester = app.test_client()

    def test_DB_infer(self):
        config = app.conf
        self.assertIn("linklib.db", config.db_path)

class TestDB(unittest.TestCase):
 
    @classmethod
    def setUpClass(cls):
        cls.tester = app.test_client()

    def test_db_connect(self):
        pass
        

if __name__ == "__main__":
    unittest.main()
