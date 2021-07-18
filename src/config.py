import os

class Config(object):
    '''Manages various configurations, seeking them out when not provided'''

    def __init__(self, db_path = None):
        self.db_path = db_path or None
        if self.db_path is None:
            self.db_path = self.find_db()

    # def find_root

    def find_db(self):
        '''
        if no database path is provided, attempt to find one, 
        walking from one level up (in case the app was run from "src")
        '''
        for root, dirs, files in os.walk(os.path.relpath("..",os.getcwd())):
            if "linklib.db" in files:
                return os.path.join(root, "linklib.db")
            else:
                raise DBNotFoundError

class DBNotFoundError(Exception):
    pass
        
